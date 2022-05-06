; ModuleID = '/llk/IR/mm/shmem.c_pt.bc'
source_filename = "../mm/shmem.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_shmem_truncate_range:\09\09\09\09\09"
module asm "\09.asciz \09\22shmem_truncate_range\22\09\09\09\09\09"
module asm "__kstrtabns_shmem_truncate_range:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_shmem_aops:\09\09\09\09\09"
module asm "\09.asciz \09\22shmem_aops\22\09\09\09\09\09"
module asm "__kstrtabns_shmem_aops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_shmem_file_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22shmem_file_setup\22\09\09\09\09\09"
module asm "__kstrtabns_shmem_file_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_shmem_file_setup_with_mnt:\09\09\09\09\09"
module asm "\09.asciz \09\22shmem_file_setup_with_mnt\22\09\09\09\09\09"
module asm "__kstrtabns_shmem_file_setup_with_mnt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_shmem_read_mapping_page_gfp:\09\09\09\09\09"
module asm "\09.asciz \09\22shmem_read_mapping_page_gfp\22\09\09\09\09\09"
module asm "__kstrtabns_shmem_read_mapping_page_gfp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.4 }
%union.anon.4 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.constant_table = type { ptr, i32 }
%struct.fs_parameter_spec = type { ptr, ptr, i8, i16, ptr }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fs_context_operations = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type {}
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.vm_event_state = type { [71 x i32] }
%struct.pglist_data = type { [4 x %struct.zone], [1 x %struct.zonelist], i32, ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, [4 x %struct.wait_queue_head], %struct.atomic_t, i32, ptr, i32, i32, i32, i32, i32, %struct.wait_queue_head, ptr, i8, i32, %struct.zone_padding, %struct.lruvec, i32, [56 x i8], %struct.zone_padding, ptr, [40 x %struct.atomic_t], [28 x i8] }
%struct.zone = type { [3 x i32], i32, i32, [4 x i32], ptr, ptr, ptr, i32, i32, ptr, i32, %struct.atomic_t, i32, i32, i32, ptr, i32, i32, [36 x i8], %struct.zone_padding, [12 x %struct.free_area], i32, %struct.spinlock, [8 x i8], %struct.zone_padding, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i8, i8, [26 x i8], %struct.zone_padding, [10 x %struct.atomic_t], [0 x %struct.atomic_t], [24 x i8] }
%struct.free_area = type { [6 x %struct.list_head], i32 }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.zonelist = type { [5 x %struct.zoneref] }
%struct.zoneref = type { ptr, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.lruvec = type { [5 x %struct.list_head], %struct.spinlock, i32, i32, %struct.atomic_t, [2 x i32], i32 }
%struct.zone_padding = type { [0 x i8] }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [14 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.20 }
%union.anon.20 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.30, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.30 = type { %struct.anon.31 }
%struct.anon.31 = type { ptr, i32, i32, i32 }
%struct.rb_root = type { ptr }
%struct.export_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xattr_handler = type { ptr, ptr, i32, ptr, ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.100, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.101, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.102, ptr, %struct.address_space, %struct.list_head, %union.anon.103, i32, i32, ptr, ptr }
%union.anon.100 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.hlist_node = type { ptr, ptr }
%union.anon.101 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.102 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.103 = type { ptr }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.16, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.16 = type { %struct.anon.17 }
%struct.anon.17 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type {}
%struct.page = type { i32, %union.anon.7, %union.anon.34, %struct.atomic_t }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.34 = type { %struct.atomic_t }
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
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.67, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
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
%struct.cpumask = type { [1 x i32] }
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.47 }
%union.anon.47 = type { %struct.anon.48 }
%struct.anon.48 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.67 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.shmem_sb_info = type { i32, %struct.percpu_counter, i32, i32, %struct.raw_spinlock, i16, i8, %struct.kuid_t, %struct.kgid_t, i8, i32, ptr, ptr, %struct.spinlock, %struct.list_head, i32 }
%struct.anon.11 = type { i32, i8, i8, %struct.atomic_t, i32 }
%struct.xa_state = type { ptr, i32, i8, i8, i8, i8, ptr, ptr, ptr }
%struct.xa_node = type { i8, i8, i8, i8, ptr, ptr, %union.anon.104, [64 x ptr], %union.anon.105 }
%union.anon.104 = type { %struct.list_head }
%union.anon.105 = type { [3 x [2 x i32]] }
%struct.file = type { %union.anon.6, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.6 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.pagevec = type { i8, i8, [15 x ptr] }
%struct.folio_batch = type { i8, i8, [15 x ptr] }
%struct.anon.36 = type { i32, %struct.list_head, ptr, i32, ptr, %struct.atomic_t, %struct.atomic_t }
%struct.anon.15 = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32 }
%struct.uprobes_state = type { ptr }
%struct.writeback_control = type { i32, i32, i64, i64, i32, i16 }
%struct.shmem_falloc = type { ptr, i32, i32, i32, i32 }
%struct.shmem_options = type { i64, i64, ptr, %struct.kuid_t, %struct.kgid_t, i16, i8, i32, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.52 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.52 = type { %struct.callback_head }
%struct.fs_context = type { ptr, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.p_log, ptr, ptr, ptr, i32, i32, i32, i32, i24 }
%struct.p_log = type { ptr, ptr }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%struct.vm_fault = type { %struct.anon.18, i32, ptr, ptr, %union.anon.19, ptr, ptr, ptr, ptr, ptr }
%struct.anon.18 = type { ptr, i32, i32, i32 }
%union.anon.19 = type { i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.fs_parse_result = type { i8, %union.anon.93 }
%union.anon.93 = type { i64 }
%struct.fs_parameter = type { ptr, i8, %union.anon.5, i32, i32 }
%union.anon.5 = type { ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.98, %struct.list_head, %struct.list_head, %union.anon.99 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.0, ptr }
%union.anon.0 = type { i64 }
%struct.lockref = type { %union.anon.1 }
%union.anon.1 = type { i64 }
%union.anon.98 = type { %struct.list_head }
%union.anon.99 = type { %struct.hlist_node }
%struct.shmem_inode_info = type { %struct.spinlock, i32, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.shared_policy, %struct.simple_xattrs, %struct.atomic_t, %struct.inode }
%struct.shared_policy = type {}
%struct.simple_xattrs = type { %struct.list_head, %struct.spinlock }
%struct.wait_bit_queue_entry = type { %struct.wait_bit_key, %struct.wait_queue_entry }
%struct.wait_bit_key = type { ptr, i32, i32 }
%struct.simple_xattr = type { %struct.list_head, ptr, i32, [0 x i8] }
%struct.kstatfs = type { i32, i32, i64, i64, i64, i64, i64, %struct.__kernel_fsid_t, i32, i32, i32, [4 x i32] }
%struct.__kernel_fsid_t = type { [2 x i32] }
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, ptr }
%struct.kiocb = type { ptr, i64, ptr, ptr, i32, i16, i16, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.37, %union.anon.38 }
%union.anon.37 = type { ptr }
%union.anon.38 = type { i64 }
%struct.delayed_call = type { ptr, ptr }

@shmem_vm_ops = internal constant %struct.vm_operations_struct { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @shmem_fault, ptr null, ptr @filemap_map_pages, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str = private unnamed_addr constant [11 x i8] c"mm/shmem.c\00", align 1
@__kstrtab_shmem_truncate_range = external dso_local constant [0 x i8], align 1
@__kstrtabns_shmem_truncate_range = external dso_local constant [0 x i8], align 1
@__ksymtab_shmem_truncate_range = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @shmem_truncate_range to i32), ptr @__kstrtab_shmem_truncate_range, ptr @__kstrtabns_shmem_truncate_range }, section "___ksymtab_gpl+shmem_truncate_range", align 4
@shmem_swaplist = internal global %struct.list_head { ptr @shmem_swaplist, ptr @shmem_swaplist }, align 4
@shmem_swaplist_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @shmem_swaplist_mutex, i64 12), ptr getelementptr (i8, ptr @shmem_swaplist_mutex, i64 12) } }, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"gid\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"huge\00", align 1
@shmem_param_enums_huge = internal constant [5 x %struct.constant_table] [%struct.constant_table { ptr @.str.16, i32 0 }, %struct.constant_table { ptr @.str.17, i32 1 }, %struct.constant_table { ptr @.str.18, i32 2 }, %struct.constant_table { ptr @.str.19, i32 3 }, %struct.constant_table zeroinitializer], align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"mpol\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"nr_blocks\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"nr_inodes\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"uid\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"inode32\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"inode64\00", align 1
@shmem_fs_parameters = dso_local constant [11 x %struct.fs_parameter_spec] [%struct.fs_parameter_spec { ptr @.str.1, ptr @fs_param_is_u32, i8 0, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.2, ptr @fs_param_is_enum, i8 1, i16 0, ptr @shmem_param_enums_huge }, %struct.fs_parameter_spec { ptr @.str.3, ptr @fs_param_is_u32, i8 2, i16 0, ptr inttoptr (i32 8 to ptr) }, %struct.fs_parameter_spec { ptr @.str.4, ptr @fs_param_is_string, i8 3, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.5, ptr @fs_param_is_string, i8 4, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.6, ptr @fs_param_is_string, i8 5, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.7, ptr @fs_param_is_string, i8 6, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.8, ptr @fs_param_is_u32, i8 7, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.9, ptr null, i8 8, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.10, ptr null, i8 9, i16 0, ptr null }, %struct.fs_parameter_spec zeroinitializer], align 4
@shmem_aops = dso_local constant %struct.address_space_operations { ptr @shmem_writepage, ptr null, ptr null, ptr @__set_page_dirty_no_writeback, ptr null, ptr null, ptr @shmem_write_begin, ptr @shmem_write_end, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @migrate_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @shmem_error_remove_page, ptr null, ptr null }, align 4
@__kstrtab_shmem_aops = external dso_local constant [0 x i8], align 1
@__kstrtabns_shmem_aops = external dso_local constant [0 x i8], align 1
@__ksymtab_shmem_aops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @shmem_aops to i32), ptr @__kstrtab_shmem_aops, ptr @__kstrtabns_shmem_aops }, section "___ksymtab+shmem_aops", align 4
@shmem_fs_context_ops = internal constant %struct.fs_context_operations { ptr @shmem_free_fc, ptr null, ptr @shmem_parse_one, ptr @shmem_parse_options, ptr @shmem_get_tree, ptr @shmem_reconfigure }, align 4
@shmem_fs_type = internal global %struct.file_system_type { ptr @.str.38, i32 8, ptr @shmem_init_fs_context, ptr @shmem_fs_parameters, ptr null, ptr @kill_litter_super, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, align 4
@.str.11 = private unnamed_addr constant [28 x i8] c"\013Could not register tmpfs\0A\00", align 1
@shm_mnt = internal unnamed_addr global ptr null, align 4
@.str.12 = private unnamed_addr constant [30 x i8] c"\013Could not kern_mount tmpfs\0A\00", align 1
@__kstrtab_shmem_file_setup = external dso_local constant [0 x i8], align 1
@__kstrtabns_shmem_file_setup = external dso_local constant [0 x i8], align 1
@__ksymtab_shmem_file_setup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @shmem_file_setup to i32), ptr @__kstrtab_shmem_file_setup, ptr @__kstrtabns_shmem_file_setup }, section "___ksymtab_gpl+shmem_file_setup", align 4
@__kstrtab_shmem_file_setup_with_mnt = external dso_local constant [0 x i8], align 1
@__kstrtabns_shmem_file_setup_with_mnt = external dso_local constant [0 x i8], align 1
@__ksymtab_shmem_file_setup_with_mnt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @shmem_file_setup_with_mnt to i32), ptr @__kstrtab_shmem_file_setup_with_mnt, ptr @__kstrtabns_shmem_file_setup_with_mnt }, section "___ksymtab_gpl+shmem_file_setup_with_mnt", align 4
@.str.13 = private unnamed_addr constant [9 x i8] c"dev/zero\00", align 1
@__kstrtab_shmem_read_mapping_page_gfp = external dso_local constant [0 x i8], align 1
@__kstrtabns_shmem_read_mapping_page_gfp = external dso_local constant [0 x i8], align 1
@__ksymtab_shmem_read_mapping_page_gfp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @shmem_read_mapping_page_gfp to i32), ptr @__kstrtab_shmem_read_mapping_page_gfp, ptr @__kstrtabns_shmem_read_mapping_page_gfp }, section "___ksymtab_gpl+shmem_read_mapping_page_gfp", align 4
@percpu_counter_batch = external dso_local local_unnamed_addr global i32, align 4
@vm_committed_as = external dso_local global %struct.percpu_counter, align 8
@vm_committed_as_batch = external dso_local local_unnamed_addr global i32, align 4
@vm_event_states = external dso_local global %struct.vm_event_state, section ".data..percpu", align 4
@vma_init.dummy_vm_ops = internal constant %struct.vm_operations_struct zeroinitializer, align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@contig_page_data = external dso_local global %struct.pglist_data, align 64
@.str.15 = private unnamed_addr constant [23 x i8] c"include/linux/xarray.h\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"never\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"always\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"within_size\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"advise\00", align 1
@total_swap_pages = external dso_local local_unnamed_addr global i32, align 4
@shmem_writepage.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_mmap_lock_released = external dso_local global %struct.tracepoint, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.20 = private unnamed_addr constant [48 x i8] c"Cannot use inode64 with <64bit inums in kernel\0A\00", align 1
@.str.21 = private unnamed_addr constant [27 x i8] c"Unsupported parameter '%s'\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"Bad value for '%s'\00", align 1
@_totalram_pages = external dso_local global %struct.atomic_t, align 4
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@shmem_export_ops = internal constant %struct.export_operations { ptr @shmem_encode_fh, ptr @shmem_fh_to_dentry, ptr null, ptr null, ptr @shmem_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, align 4
@shmem_fill_super.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@shmem_ops = internal constant %struct.super_operations { ptr @shmem_alloc_inode, ptr @shmem_destroy_inode, ptr @shmem_free_in_core_inode, ptr null, ptr null, ptr @generic_delete_inode, ptr @shmem_evict_inode, ptr @shmem_put_super, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @shmem_statfs, ptr null, ptr null, ptr @shmem_show_options, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@shmem_xattr_handlers = internal global [5 x ptr] [ptr @posix_acl_access_xattr_handler, ptr @posix_acl_default_xattr_handler, ptr @shmem_security_xattr_handler, ptr @shmem_trusted_xattr_handler, ptr null], align 4
@_totalhigh_pages = external dso_local global %struct.atomic_t, align 4
@shmem_encode_fh.lock = internal global %struct.spinlock zeroinitializer, align 4
@shmem_inode_cachep = internal unnamed_addr global ptr null, align 4
@.str.23 = private unnamed_addr constant [11 x i8] c",size=%luk\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c",nr_inodes=%lu\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c",mode=%03ho\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c",uid=%u\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c",gid=%u\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c",inode%d\00", align 1
@overflowuid = external dso_local local_unnamed_addr global i32, align 4
@overflowgid = external dso_local local_unnamed_addr global i32, align 4
@posix_acl_access_xattr_handler = external dso_local constant %struct.xattr_handler, align 4
@posix_acl_default_xattr_handler = external dso_local constant %struct.xattr_handler, align 4
@shmem_security_xattr_handler = internal constant %struct.xattr_handler { ptr null, ptr @.str.29, i32 0, ptr null, ptr @shmem_xattr_handler_get, ptr @shmem_xattr_handler_set }, align 4
@shmem_trusted_xattr_handler = internal constant %struct.xattr_handler { ptr null, ptr @.str.30, i32 0, ptr null, ptr @shmem_xattr_handler_get, ptr @shmem_xattr_handler_set }, align 4
@.str.29 = private unnamed_addr constant [10 x i8] c"security.\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"trusted.\00", align 1
@shmem_special_inode_operations = internal constant %struct.inode_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @shmem_setattr, ptr null, ptr @shmem_listxattr, ptr null, ptr null, ptr null, ptr null, ptr @simple_set_acl, ptr null, ptr null, [36 x i8] undef }, align 64
@shmem_inode_operations = internal constant %struct.inode_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @shmem_setattr, ptr @shmem_getattr, ptr @shmem_listxattr, ptr null, ptr null, ptr null, ptr null, ptr @simple_set_acl, ptr null, ptr null, [36 x i8] undef }, align 64
@shmem_file_operations = internal constant %struct.file_operations { ptr null, ptr @shmem_file_llseek, ptr null, ptr null, ptr @shmem_file_read_iter, ptr @generic_file_write_iter, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @shmem_mmap, i32 0, ptr null, ptr null, ptr null, ptr @noop_fsync, ptr null, ptr null, ptr null, ptr @shmem_get_unmapped_area, ptr null, ptr null, ptr @iter_file_splice_write, ptr @generic_file_splice_read, ptr null, ptr @shmem_fallocate, ptr null, ptr null, ptr null, ptr null }, align 4
@shmem_dir_inode_operations = internal constant %struct.inode_operations { ptr @simple_lookup, ptr null, ptr null, ptr null, ptr null, ptr @shmem_create, ptr @shmem_link, ptr @shmem_unlink, ptr @shmem_symlink, ptr @shmem_mkdir, ptr @shmem_rmdir, ptr @shmem_mknod, ptr @shmem_rename2, ptr @shmem_setattr, ptr null, ptr @shmem_listxattr, ptr null, ptr null, ptr null, ptr @shmem_tmpfile, ptr @simple_set_acl, ptr null, ptr null, [36 x i8] undef }, align 64
@simple_dir_operations = external dso_local constant %struct.file_operations, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@empty_zero_page = external dso_local local_unnamed_addr global ptr, align 4
@shmem_fallocate.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@shmem_short_symlink_operations = internal constant %struct.inode_operations { ptr null, ptr @simple_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @shmem_listxattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 64
@shmem_symlink_inode_operations = internal constant %struct.inode_operations { ptr null, ptr @shmem_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @shmem_listxattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 64
@.str.31 = private unnamed_addr constant [32 x i8] c"Cannot retroactively limit size\00", align 1
@.str.32 = private unnamed_addr constant [33 x i8] c"Too small a size for current use\00", align 1
@.str.33 = private unnamed_addr constant [34 x i8] c"Cannot retroactively limit inodes\00", align 1
@.str.34 = private unnamed_addr constant [31 x i8] c"Too few inodes for current use\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.37 = private unnamed_addr constant [18 x i8] c"shmem_inode_cache\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"tmpfs\00", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @__ksymtab_shmem_aops, ptr @__ksymtab_shmem_file_setup, ptr @__ksymtab_shmem_file_setup_with_mnt, ptr @__ksymtab_shmem_read_mapping_page_gfp, ptr @__ksymtab_shmem_truncate_range], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @shmem_getpage(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 9
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.address_space, ptr %6, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = tail call fastcc i32 @shmem_getpage_gfp(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %8, ptr noundef null, ptr noundef null)
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @shmem_getpage_gfp(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) unnamed_addr #0 {
  %8 = alloca %struct.vm_area_struct, align 4
  %9 = alloca ptr, align 4
  %10 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 9
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr i8, ptr %0, i32 -56
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #16
  store ptr null, ptr %9, align 4, !annotation !9
  %13 = zext i32 %1 to i64
  %14 = icmp ult i32 %3, 3
  %15 = shl nuw nsw i64 %13, 12
  %16 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 22
  %17 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 13
  %18 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %19 = icmp eq i32 %3, 3
  %20 = icmp eq i32 %3, 0
  %21 = getelementptr i8, ptr %0, i32 -48
  %22 = getelementptr inbounds %struct.vm_area_struct, ptr %8, i32 0, i32 12
  %23 = getelementptr inbounds %struct.vm_area_struct, ptr %8, i32 0, i32 10
  %24 = getelementptr inbounds %struct.vm_area_struct, ptr %8, i32 0, i32 10, i32 1
  %25 = getelementptr i8, ptr %0, i32 36
  %26 = getelementptr inbounds %struct.vm_area_struct, ptr %8, i32 0, i32 13
  %27 = getelementptr inbounds %struct.vm_area_struct, ptr %8, i32 0, i32 15
  %28 = and i32 %4, 782048
  %29 = getelementptr i8, ptr %0, i32 -44
  %30 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 21
  %31 = getelementptr i8, ptr %0, i32 -40
  %32 = icmp eq i32 %3, 4
  br label %33

33:                                               ; preds = %470, %7
  %34 = phi i1 [ false, %470 ], [ true, %7 ]
  %35 = phi i32 [ %434, %470 ], [ 0, %7 ]
  br label %36

36:                                               ; preds = %473, %33
  %37 = phi i32 [ %35, %33 ], [ %475, %473 ]
  br label %38

38:                                               ; preds = %59, %36
  br i1 %14, label %39, label %54

39:                                               ; preds = %47, %38
  %40 = load volatile i32, ptr %16, align 4
  %41 = and i32 %40, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %43, %39
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !10
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #16, !srcloc !11
  %44 = load volatile i32, ptr %16, align 4
  %45 = and i32 %44, 1
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %43

47:                                               ; preds = %43, %39
  %48 = phi i32 [ %40, %39 ], [ %44, %43 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  %49 = load i64, ptr %17, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !13
  %50 = load volatile i32, ptr %16, align 4
  %51 = icmp eq i32 %50, %48
  br i1 %51, label %52, label %39

52:                                               ; preds = %47
  %53 = icmp slt i64 %15, %49
  br i1 %53, label %54, label %479

54:                                               ; preds = %52, %38
  %55 = call ptr @pagecache_get_page(ptr noundef %11, i32 noundef %1, i32 noundef 386, i32 noundef 0) #16
  store ptr %55, ptr %9, align 4
  %56 = ptrtoint ptr %55 to i32
  %57 = and i32 %56, 1
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %54
  %60 = call fastcc i32 @shmem_swapin_page(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %9, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6)
  %61 = icmp eq i32 %60, -17
  br i1 %61, label %38, label %62

62:                                               ; preds = %59
  %63 = load ptr, ptr %9, align 4
  store ptr %63, ptr %2, align 4
  br label %479

64:                                               ; preds = %54
  %65 = icmp eq ptr %55, null
  br i1 %65, label %108, label %66

66:                                               ; preds = %64
  %67 = getelementptr inbounds %struct.page, ptr %55, i32 0, i32 1, i32 0, i32 2
  %68 = load i32, ptr %67, align 4
  br i1 %19, label %69, label %71

69:                                               ; preds = %66
  call void @mark_page_accessed(ptr noundef nonnull %55) #16
  %70 = load ptr, ptr %9, align 4
  br label %71

71:                                               ; preds = %69, %66
  %72 = phi ptr [ %70, %69 ], [ %55, %66 ]
  %73 = getelementptr inbounds %struct.page, ptr %72, i32 0, i32 1
  %74 = load volatile i32, ptr %73, align 4
  %75 = and i32 %74, 1
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %79, label %77, !prof !14

77:                                               ; preds = %71
  %78 = add i32 %74, -1
  br label %81

79:                                               ; preds = %71
  %80 = ptrtoint ptr %72 to i32
  br label %81

81:                                               ; preds = %79, %77
  %82 = phi i32 [ %78, %77 ], [ %80, %79 ]
  %83 = inttoptr i32 %82 to ptr
  %84 = load volatile i32, ptr %83, align 4
  %85 = and i32 %84, 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %81
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !15
  br label %377

88:                                               ; preds = %81
  br i1 %20, label %89, label %269

89:                                               ; preds = %88
  call void @unlock_page(ptr noundef %72) #16
  %90 = load ptr, ptr %9, align 4
  %91 = getelementptr inbounds %struct.page, ptr %90, i32 0, i32 1
  %92 = load volatile i32, ptr %91, align 4
  %93 = and i32 %92, 1
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %97, label %95, !prof !14

95:                                               ; preds = %89
  %96 = add i32 %92, -1
  br label %99

97:                                               ; preds = %89
  %98 = ptrtoint ptr %90 to i32
  br label %99

99:                                               ; preds = %97, %95
  %100 = phi i32 [ %96, %95 ], [ %98, %97 ]
  %101 = inttoptr i32 %100 to ptr
  %102 = getelementptr inbounds %struct.page, ptr %101, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !16
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %102) #16, !srcloc !17
  %103 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %102, ptr %102, i32 1, ptr elementtype(i32) %102) #16, !srcloc !18
  %104 = extractvalue { i32, i32 } %103, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %99
  call void @__put_page(ptr noundef %101) #16
  br label %107

107:                                              ; preds = %106, %99
  store ptr null, ptr %2, align 4
  br label %479

108:                                              ; preds = %64
  store ptr null, ptr %2, align 4
  switch i32 %3, label %109 [
    i32 0, label %477
    i32 1, label %479
  ]

109:                                              ; preds = %108
  %110 = load ptr, ptr %18, align 4
  %111 = getelementptr inbounds %struct.super_block, ptr %110, i32 0, i32 27
  %112 = load ptr, ptr %111, align 4
  %113 = load i32, ptr %21, align 8
  %114 = and i32 %113, 2097152
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %123, label %116

116:                                              ; preds = %109
  %117 = tail call ptr @llvm.thread.pointer() #16
  %118 = getelementptr inbounds %struct.task_struct, ptr %117, i32 0, i32 37
  %119 = load ptr, ptr %118, align 4
  %120 = call i32 @cap_vm_enough_memory(ptr noundef %119, i32 noundef 1) #16
  %121 = call i32 @__vm_enough_memory(ptr noundef %119, i32 noundef 1, i32 noundef %120) #16
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %187

123:                                              ; preds = %116, %109
  %124 = load i32, ptr %112, align 8
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %139, label %126

126:                                              ; preds = %123
  %127 = getelementptr inbounds %struct.shmem_sb_info, ptr %112, i32 0, i32 1
  %128 = add i32 %124, -1
  %129 = zext i32 %128 to i64
  %130 = load i32, ptr @percpu_counter_batch, align 4
  %131 = call i32 @__percpu_counter_compare(ptr noundef %127, i64 noundef %129, i32 noundef %130) #16
  %132 = icmp sgt i32 %131, 0
  br i1 %132, label %135, label %133

133:                                              ; preds = %126
  %134 = load i32, ptr @percpu_counter_batch, align 4
  call void @percpu_counter_add_batch(ptr noundef %127, i64 noundef 1, i32 noundef %134) #16
  br label %139

135:                                              ; preds = %126
  %136 = load i32, ptr %21, align 8
  %137 = and i32 %136, 2097152
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %187, label %178

139:                                              ; preds = %133, %123
  call void @llvm.lifetime.start.p0(i64 92, ptr nonnull %8) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(92) %8, i8 0, i64 92, i1 false) #16
  store ptr @vma_init.dummy_vm_ops, ptr %22, align 4
  store volatile ptr %23, ptr %23, align 4
  store ptr %23, ptr %24, align 4
  %140 = load i32, ptr %25, align 4
  %141 = add i32 %140, %1
  store i32 %141, ptr %26, align 4
  store ptr null, ptr %27, align 4
  %142 = call ptr @__alloc_pages(i32 noundef %4, i32 noundef 0, i32 noundef 0, ptr noundef null) #16
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %8) #16
  %143 = icmp eq ptr %142, null
  br i1 %143, label %165, label %144

144:                                              ; preds = %139
  %145 = getelementptr inbounds %struct.page, ptr %142, i32 0, i32 1
  %146 = load volatile i32, ptr %145, align 4
  %147 = and i32 %146, 1
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %151, label %149, !prof !14

149:                                              ; preds = %144
  %150 = add i32 %146, -1
  br label %153

151:                                              ; preds = %144
  %152 = ptrtoint ptr %142 to i32
  br label %153

153:                                              ; preds = %151, %149
  %154 = phi i32 [ %150, %149 ], [ %152, %151 ]
  %155 = inttoptr i32 %154 to ptr
  %156 = load i32, ptr %155, align 4
  %157 = or i32 %156, 1
  store i32 %157, ptr %155, align 4
  %158 = load volatile i32, ptr %145, align 4
  %159 = and i32 %158, 1
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %163, label %161, !prof !14

161:                                              ; preds = %153
  %162 = add i32 %158, -1
  br label %181

163:                                              ; preds = %153
  %164 = ptrtoint ptr %142 to i32
  br label %181

165:                                              ; preds = %139
  %166 = load ptr, ptr %18, align 4
  %167 = getelementptr inbounds %struct.super_block, ptr %166, i32 0, i32 27
  %168 = load ptr, ptr %167, align 4
  %169 = load i32, ptr %168, align 8
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %174, label %171

171:                                              ; preds = %165
  %172 = getelementptr inbounds %struct.shmem_sb_info, ptr %168, i32 0, i32 1
  %173 = load i32, ptr @percpu_counter_batch, align 4
  call void @percpu_counter_add_batch(ptr noundef %172, i64 noundef -1, i32 noundef %173) #16
  br label %174

174:                                              ; preds = %171, %165
  %175 = load i32, ptr %21, align 8
  %176 = and i32 %175, 2097152
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %187, label %178

178:                                              ; preds = %174, %135
  %179 = phi ptr [ inttoptr (i32 -28 to ptr), %135 ], [ inttoptr (i32 -12 to ptr), %174 ]
  %180 = load i32, ptr @vm_committed_as_batch, align 4
  call void @percpu_counter_add_batch(ptr noundef nonnull @vm_committed_as, i64 noundef -1, i32 noundef %180) #16
  br label %187

181:                                              ; preds = %163, %161
  %182 = phi i32 [ %162, %161 ], [ %164, %163 ]
  %183 = inttoptr i32 %182 to ptr
  %184 = load i32, ptr %183, align 4
  %185 = or i32 %184, 524288
  store i32 %185, ptr %183, align 4
  store ptr %142, ptr %9, align 4
  %186 = icmp ugt ptr %142, inttoptr (i32 -4096 to ptr)
  br i1 %186, label %187, label %191

187:                                              ; preds = %181, %178, %174, %135, %116
  %188 = phi ptr [ %142, %181 ], [ inttoptr (i32 -28 to ptr), %135 ], [ inttoptr (i32 -28 to ptr), %116 ], [ inttoptr (i32 -12 to ptr), %174 ], [ %179, %178 ]
  %189 = ptrtoint ptr %188 to i32
  store ptr null, ptr %9, align 4
  %190 = icmp eq ptr %188, inttoptr (i32 -28 to ptr)
  br i1 %190, label %433, label %473

191:                                              ; preds = %181
  br i1 %19, label %192, label %206

192:                                              ; preds = %191
  %193 = load volatile i32, ptr %145, align 4
  %194 = and i32 %193, 1
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %198, label %196, !prof !14

196:                                              ; preds = %192
  %197 = add i32 %193, -1
  br label %200

198:                                              ; preds = %192
  %199 = ptrtoint ptr %142 to i32
  br label %200

200:                                              ; preds = %198, %196
  %201 = phi i32 [ %197, %196 ], [ %199, %198 ]
  %202 = inttoptr i32 %201 to ptr
  %203 = load i32, ptr %202, align 4
  %204 = or i32 %203, 2
  store i32 %204, ptr %202, align 4
  %205 = load ptr, ptr %9, align 4
  br label %206

206:                                              ; preds = %200, %191
  %207 = phi ptr [ %205, %200 ], [ %142, %191 ]
  %208 = call fastcc i32 @shmem_add_to_page_cache(ptr noundef %207, ptr noundef %11, i32 noundef %1, ptr noundef null, i32 noundef %28)
  %209 = icmp eq i32 %208, 0
  %210 = load ptr, ptr %9, align 4
  br i1 %209, label %211, label %383

211:                                              ; preds = %206
  call void @lru_cache_add(ptr noundef %210) #16
  call void @_raw_spin_lock_irq(ptr noundef %12) #16
  %212 = load ptr, ptr %9, align 4
  %213 = load volatile i32, ptr %212, align 4
  %214 = and i32 %213, 65536
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %219, label %216

216:                                              ; preds = %211
  %217 = getelementptr %struct.page, ptr %212, i32 1, i32 1, i32 0, i32 2
  %218 = load i32, ptr %217, align 4
  br label %219

219:                                              ; preds = %216, %211
  %220 = phi i32 [ %218, %216 ], [ 1, %211 ]
  %221 = load i32, ptr %29, align 4
  %222 = add i32 %221, %220
  store i32 %222, ptr %29, align 4
  %223 = load volatile i32, ptr %212, align 4
  %224 = and i32 %223, 65536
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %231, label %226

226:                                              ; preds = %219
  %227 = getelementptr %struct.page, ptr %212, i32 1, i32 1
  %228 = getelementptr inbounds %struct.anon.11, ptr %227, i32 0, i32 2
  %229 = load i8, ptr %228, align 1
  %230 = zext i8 %229 to i32
  br label %231

231:                                              ; preds = %226, %219
  %232 = phi i32 [ %230, %226 ], [ 0, %219 ]
  %233 = shl i32 8, %232
  %234 = zext i32 %233 to i64
  %235 = load i64, ptr %30, align 8
  %236 = add i64 %235, %234
  store i64 %236, ptr %30, align 8
  %237 = load i32, ptr %31, align 8
  %238 = load ptr, ptr %10, align 8
  %239 = getelementptr inbounds %struct.address_space, ptr %238, i32 0, i32 7
  %240 = load i32, ptr %239, align 4
  %241 = add i32 %240, %237
  %242 = sub i32 %222, %241
  %243 = icmp sgt i32 %242, 0
  br i1 %243, label %244, label %266

244:                                              ; preds = %231
  store i32 %241, ptr %29, align 4
  %245 = shl i32 %242, 3
  %246 = zext i32 %245 to i64
  %247 = sub i64 %236, %246
  store i64 %247, ptr %30, align 8
  %248 = load ptr, ptr %18, align 4
  %249 = getelementptr inbounds %struct.super_block, ptr %248, i32 0, i32 27
  %250 = load ptr, ptr %249, align 4
  %251 = load i32, ptr %250, align 8
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %258, label %253

253:                                              ; preds = %244
  %254 = getelementptr inbounds %struct.shmem_sb_info, ptr %250, i32 0, i32 1
  %255 = zext i32 %242 to i64
  %256 = sub nsw i64 0, %255
  %257 = load i32, ptr @percpu_counter_batch, align 4
  call void @percpu_counter_add_batch(ptr noundef %254, i64 noundef %256, i32 noundef %257) #16
  br label %258

258:                                              ; preds = %253, %244
  %259 = load i32, ptr %21, align 8
  %260 = and i32 %259, 2097152
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %266, label %262

262:                                              ; preds = %258
  %263 = sub nsw i32 0, %242
  %264 = sext i32 %263 to i64
  %265 = load i32, ptr @vm_committed_as_batch, align 4
  call void @percpu_counter_add_batch(ptr noundef nonnull @vm_committed_as, i64 noundef %264, i32 noundef %265) #16
  br label %266

266:                                              ; preds = %262, %258, %231
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !20
  %267 = load i16, ptr %12, align 4
  %268 = add i16 %267, 1
  store i16 %268, ptr %12, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !21
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !22
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #16, !srcloc !23
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !24
  br i1 %32, label %377, label %269

269:                                              ; preds = %266, %88
  %270 = phi i32 [ %68, %88 ], [ %1, %266 ]
  %271 = phi i32 [ %37, %88 ], [ 1, %266 ]
  br i1 %19, label %377, label %272

272:                                              ; preds = %269
  %273 = load ptr, ptr %9, align 4
  %274 = getelementptr inbounds %struct.page, ptr %273, i32 0, i32 1
  %275 = load volatile i32, ptr %274, align 4
  %276 = and i32 %275, 1
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %280, label %278, !prof !14

278:                                              ; preds = %272
  %279 = add i32 %275, -1
  br label %282

280:                                              ; preds = %272
  %281 = ptrtoint ptr %273 to i32
  br label %282

282:                                              ; preds = %280, %278
  %283 = phi i32 [ %279, %278 ], [ %281, %280 ]
  %284 = inttoptr i32 %283 to ptr
  %285 = load volatile i32, ptr %284, align 4
  %286 = and i32 %285, 4
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %289, label %288

288:                                              ; preds = %282
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !15
  br label %311

289:                                              ; preds = %301, %282
  %290 = phi ptr [ %309, %301 ], [ %273, %282 ]
  %291 = phi i32 [ %308, %301 ], [ 0, %282 ]
  %292 = load volatile i32, ptr %290, align 4
  %293 = and i32 %292, 65536
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %298, label %295

295:                                              ; preds = %289
  %296 = getelementptr %struct.page, ptr %290, i32 1, i32 1, i32 0, i32 2
  %297 = load i32, ptr %296, align 4
  br label %298

298:                                              ; preds = %295, %289
  %299 = phi i32 [ %297, %295 ], [ 1, %289 ]
  %300 = icmp ult i32 %291, %299
  br i1 %300, label %301, label %310

301:                                              ; preds = %298
  %302 = getelementptr %struct.page, ptr %290, i32 %291
  %303 = load i32, ptr @pgprot_kernel, align 4
  %304 = or i32 %303, 512
  %305 = call ptr @__kmap_local_page_prot(ptr noundef %302, i32 noundef %304) #16
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(4096) %305, i8 0, i32 4096, i1 false) #16
  call void @kunmap_local_indexed(ptr noundef %305) #16
  %306 = load ptr, ptr %9, align 4
  %307 = getelementptr %struct.page, ptr %306, i32 %291
  call void @flush_dcache_page(ptr noundef %307) #16
  %308 = add nuw i32 %291, 1
  %309 = load ptr, ptr %9, align 4
  br label %289

310:                                              ; preds = %298
  call void asm sideeffect "dmb ishst", "~{memory}"() #16, !srcloc !25
  call void @_set_bit(i32 noundef 2, ptr noundef %290) #16
  br label %311

311:                                              ; preds = %310, %288
  br i1 %14, label %312, label %377

312:                                              ; preds = %320, %311
  %313 = load volatile i32, ptr %16, align 4
  %314 = and i32 %313, 1
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %320, label %316

316:                                              ; preds = %316, %312
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !10
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #16, !srcloc !11
  %317 = load volatile i32, ptr %16, align 4
  %318 = and i32 %317, 1
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %320, label %316

320:                                              ; preds = %316, %312
  %321 = phi i32 [ %313, %312 ], [ %317, %316 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  %322 = load i64, ptr %17, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !13
  %323 = load volatile i32, ptr %16, align 4
  %324 = icmp eq i32 %323, %321
  br i1 %324, label %325, label %312

325:                                              ; preds = %320
  %326 = icmp slt i64 %15, %322
  br i1 %326, label %377, label %327

327:                                              ; preds = %325
  %328 = icmp eq i32 %271, 0
  br i1 %328, label %410, label %329

329:                                              ; preds = %327
  %330 = load ptr, ptr %9, align 4
  %331 = getelementptr inbounds %struct.page, ptr %330, i32 0, i32 1
  %332 = load volatile i32, ptr %331, align 4
  %333 = and i32 %332, 1
  %334 = icmp eq i32 %333, 0
  br i1 %334, label %337, label %335, !prof !14

335:                                              ; preds = %329
  %336 = add i32 %332, -1
  br label %339

337:                                              ; preds = %329
  %338 = ptrtoint ptr %330 to i32
  br label %339

339:                                              ; preds = %337, %335
  %340 = phi i32 [ %336, %335 ], [ %338, %337 ]
  %341 = inttoptr i32 %340 to ptr
  call void @_clear_bit(i32 noundef 3, ptr noundef %341) #16
  %342 = load ptr, ptr %9, align 4
  call void @delete_from_page_cache(ptr noundef %342) #16
  call void @_raw_spin_lock_irq(ptr noundef %12) #16
  %343 = load i32, ptr %29, align 4
  %344 = load i32, ptr %31, align 8
  %345 = load ptr, ptr %10, align 8
  %346 = getelementptr inbounds %struct.address_space, ptr %345, i32 0, i32 7
  %347 = load i32, ptr %346, align 4
  %348 = add i32 %347, %344
  %349 = sub i32 %343, %348
  %350 = icmp sgt i32 %349, 0
  br i1 %350, label %351, label %374

351:                                              ; preds = %339
  store i32 %348, ptr %29, align 4
  %352 = shl i32 %349, 3
  %353 = zext i32 %352 to i64
  %354 = load i64, ptr %30, align 8
  %355 = sub i64 %354, %353
  store i64 %355, ptr %30, align 8
  %356 = load ptr, ptr %18, align 4
  %357 = getelementptr inbounds %struct.super_block, ptr %356, i32 0, i32 27
  %358 = load ptr, ptr %357, align 4
  %359 = load i32, ptr %358, align 8
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %366, label %361

361:                                              ; preds = %351
  %362 = getelementptr inbounds %struct.shmem_sb_info, ptr %358, i32 0, i32 1
  %363 = zext i32 %349 to i64
  %364 = sub nsw i64 0, %363
  %365 = load i32, ptr @percpu_counter_batch, align 4
  call void @percpu_counter_add_batch(ptr noundef %362, i64 noundef %364, i32 noundef %365) #16
  br label %366

366:                                              ; preds = %361, %351
  %367 = load i32, ptr %21, align 8
  %368 = and i32 %367, 2097152
  %369 = icmp eq i32 %368, 0
  br i1 %369, label %374, label %370

370:                                              ; preds = %366
  %371 = sub nsw i32 0, %349
  %372 = sext i32 %371 to i64
  %373 = load i32, ptr @vm_committed_as_batch, align 4
  call void @percpu_counter_add_batch(ptr noundef nonnull @vm_committed_as, i64 noundef %372, i32 noundef %373) #16
  br label %374

374:                                              ; preds = %370, %366, %339
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !20
  %375 = load i16, ptr %12, align 4
  %376 = add i16 %375, 1
  store i16 %376, ptr %12, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !21
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !22
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #16, !srcloc !23
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !24
  br label %410

377:                                              ; preds = %325, %311, %269, %266, %87
  %378 = phi i32 [ %68, %87 ], [ %1, %266 ], [ %270, %269 ], [ %270, %311 ], [ %270, %325 ]
  %379 = load ptr, ptr %9, align 4
  %380 = getelementptr %struct.page, ptr %379, i32 %1
  %381 = sub i32 0, %378
  %382 = getelementptr %struct.page, ptr %380, i32 %381
  store ptr %382, ptr %2, align 4
  br label %479

383:                                              ; preds = %206
  %384 = load volatile i32, ptr %210, align 4
  %385 = and i32 %384, 65536
  %386 = icmp eq i32 %385, 0
  br i1 %386, label %390, label %387

387:                                              ; preds = %383
  %388 = getelementptr %struct.page, ptr %210, i32 1, i32 1, i32 0, i32 2
  %389 = load i32, ptr %388, align 4
  br label %390

390:                                              ; preds = %387, %383
  %391 = phi i32 [ %389, %387 ], [ 1, %383 ]
  %392 = load ptr, ptr %18, align 4
  %393 = getelementptr inbounds %struct.super_block, ptr %392, i32 0, i32 27
  %394 = load ptr, ptr %393, align 4
  %395 = load i32, ptr %394, align 8
  %396 = icmp eq i32 %395, 0
  br i1 %396, label %402, label %397

397:                                              ; preds = %390
  %398 = getelementptr inbounds %struct.shmem_sb_info, ptr %394, i32 0, i32 1
  %399 = sext i32 %391 to i64
  %400 = sub nsw i64 0, %399
  %401 = load i32, ptr @percpu_counter_batch, align 4
  call void @percpu_counter_add_batch(ptr noundef %398, i64 noundef %400, i32 noundef %401) #16
  br label %402

402:                                              ; preds = %397, %390
  %403 = load i32, ptr %21, align 8
  %404 = and i32 %403, 2097152
  %405 = icmp eq i32 %404, 0
  br i1 %405, label %410, label %406

406:                                              ; preds = %402
  %407 = sub i32 0, %391
  %408 = sext i32 %407 to i64
  %409 = load i32, ptr @vm_committed_as_batch, align 4
  call void @percpu_counter_add_batch(ptr noundef nonnull @vm_committed_as, i64 noundef %408, i32 noundef %409) #16
  br label %410

410:                                              ; preds = %406, %402, %374, %327
  %411 = phi i32 [ -22, %374 ], [ -22, %327 ], [ %208, %402 ], [ %208, %406 ]
  %412 = phi i32 [ %271, %374 ], [ 0, %327 ], [ %37, %402 ], [ %37, %406 ]
  %413 = load ptr, ptr %9, align 4
  %414 = icmp eq ptr %413, null
  br i1 %414, label %433, label %415

415:                                              ; preds = %410
  call void @unlock_page(ptr noundef nonnull %413) #16
  %416 = load ptr, ptr %9, align 4
  %417 = getelementptr inbounds %struct.page, ptr %416, i32 0, i32 1
  %418 = load volatile i32, ptr %417, align 4
  %419 = and i32 %418, 1
  %420 = icmp eq i32 %419, 0
  br i1 %420, label %423, label %421, !prof !14

421:                                              ; preds = %415
  %422 = add i32 %418, -1
  br label %425

423:                                              ; preds = %415
  %424 = ptrtoint ptr %416 to i32
  br label %425

425:                                              ; preds = %423, %421
  %426 = phi i32 [ %422, %421 ], [ %424, %423 ]
  %427 = inttoptr i32 %426 to ptr
  %428 = getelementptr inbounds %struct.page, ptr %427, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !16
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %428) #16, !srcloc !17
  %429 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %428, ptr %428, i32 1, ptr elementtype(i32) %428) #16, !srcloc !18
  %430 = extractvalue { i32, i32 } %429, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  %431 = icmp eq i32 %430, 0
  br i1 %431, label %432, label %433

432:                                              ; preds = %425
  call void @__put_page(ptr noundef %427) #16
  br label %433

433:                                              ; preds = %432, %425, %410, %187
  %434 = phi i32 [ %412, %432 ], [ %412, %425 ], [ %412, %410 ], [ %37, %187 ]
  %435 = phi i32 [ %411, %432 ], [ %411, %425 ], [ %411, %410 ], [ %189, %187 ]
  %436 = icmp eq i32 %435, -28
  br i1 %436, label %437, label %473

437:                                              ; preds = %433
  br i1 %34, label %438, label %479

438:                                              ; preds = %437
  call void @_raw_spin_lock_irq(ptr noundef %12) #16
  %439 = load i32, ptr %29, align 4
  %440 = load i32, ptr %31, align 8
  %441 = load ptr, ptr %10, align 8
  %442 = getelementptr inbounds %struct.address_space, ptr %441, i32 0, i32 7
  %443 = load i32, ptr %442, align 4
  %444 = add i32 %443, %440
  %445 = sub i32 %439, %444
  %446 = icmp sgt i32 %445, 0
  br i1 %446, label %447, label %470

447:                                              ; preds = %438
  store i32 %444, ptr %29, align 4
  %448 = shl i32 %445, 3
  %449 = zext i32 %448 to i64
  %450 = load i64, ptr %30, align 8
  %451 = sub i64 %450, %449
  store i64 %451, ptr %30, align 8
  %452 = load ptr, ptr %18, align 4
  %453 = getelementptr inbounds %struct.super_block, ptr %452, i32 0, i32 27
  %454 = load ptr, ptr %453, align 4
  %455 = load i32, ptr %454, align 8
  %456 = icmp eq i32 %455, 0
  br i1 %456, label %462, label %457

457:                                              ; preds = %447
  %458 = getelementptr inbounds %struct.shmem_sb_info, ptr %454, i32 0, i32 1
  %459 = zext i32 %445 to i64
  %460 = sub nsw i64 0, %459
  %461 = load i32, ptr @percpu_counter_batch, align 4
  call void @percpu_counter_add_batch(ptr noundef %458, i64 noundef %460, i32 noundef %461) #16
  br label %462

462:                                              ; preds = %457, %447
  %463 = load i32, ptr %21, align 8
  %464 = and i32 %463, 2097152
  %465 = icmp eq i32 %464, 0
  br i1 %465, label %470, label %466

466:                                              ; preds = %462
  %467 = sub nsw i32 0, %445
  %468 = sext i32 %467 to i64
  %469 = load i32, ptr @vm_committed_as_batch, align 4
  call void @percpu_counter_add_batch(ptr noundef nonnull @vm_committed_as, i64 noundef %468, i32 noundef %469) #16
  br label %470

470:                                              ; preds = %466, %462, %438
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !20
  %471 = load i16, ptr %12, align 4
  %472 = add i16 %471, 1
  store i16 %472, ptr %12, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !21
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !22
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #16, !srcloc !23
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !24
  br label %33

473:                                              ; preds = %433, %187
  %474 = phi i32 [ %435, %433 ], [ %189, %187 ]
  %475 = phi i32 [ %434, %433 ], [ %37, %187 ]
  %476 = icmp eq i32 %474, -17
  br i1 %476, label %36, label %477

477:                                              ; preds = %473, %108
  %478 = phi i32 [ %3, %108 ], [ %474, %473 ]
  br label %479

479:                                              ; preds = %477, %437, %377, %108, %107, %62, %52
  %480 = phi i32 [ %60, %62 ], [ 0, %377 ], [ 0, %107 ], [ %478, %477 ], [ -2, %108 ], [ -22, %52 ], [ -28, %437 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #16
  ret i32 %480
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @vma_is_shmem(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 12
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, @shmem_vm_ops
  ret i1 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @shmem_charge(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr i8, ptr %0, i32 -56
  %4 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 27
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %0, i32 -48
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 2097152
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %2
  %13 = tail call ptr @llvm.thread.pointer() #16
  %14 = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 37
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 @cap_vm_enough_memory(ptr noundef %15, i32 noundef %1) #16
  %17 = tail call i32 @__vm_enough_memory(ptr noundef %15, i32 noundef %1, i32 noundef %16) #16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %86

19:                                               ; preds = %12, %2
  %20 = load i32, ptr %7, align 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %40, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.shmem_sb_info, ptr %7, i32 0, i32 1
  %24 = sub i32 %20, %1
  %25 = zext i32 %24 to i64
  %26 = load i32, ptr @percpu_counter_batch, align 4
  %27 = tail call i32 @__percpu_counter_compare(ptr noundef %23, i64 noundef %25, i32 noundef %26) #16
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %22
  %30 = sext i32 %1 to i64
  %31 = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef %23, i64 noundef %30, i32 noundef %31) #16
  br label %40

32:                                               ; preds = %22
  %33 = load i32, ptr %8, align 8
  %34 = and i32 %33, 2097152
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %86, label %36

36:                                               ; preds = %32
  %37 = sub i32 0, %1
  %38 = sext i32 %37 to i64
  %39 = load i32, ptr @vm_committed_as_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef nonnull @vm_committed_as, i64 noundef %38, i32 noundef %39) #16
  br label %86

40:                                               ; preds = %29, %19
  %41 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 9
  %42 = load ptr, ptr %41, align 8
  %43 = getelementptr inbounds %struct.address_space, ptr %42, i32 0, i32 7
  %44 = load i32, ptr %43, align 4
  %45 = add i32 %44, %1
  store i32 %45, ptr %43, align 4
  %46 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #16
  %47 = getelementptr i8, ptr %0, i32 -44
  %48 = load i32, ptr %47, align 4
  %49 = add i32 %48, %1
  store i32 %49, ptr %47, align 4
  %50 = shl i32 %1, 3
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 21
  %53 = load i64, ptr %52, align 8
  %54 = add i64 %53, %51
  store i64 %54, ptr %52, align 8
  %55 = getelementptr i8, ptr %0, i32 -40
  %56 = load i32, ptr %55, align 8
  %57 = load ptr, ptr %41, align 8
  %58 = getelementptr inbounds %struct.address_space, ptr %57, i32 0, i32 7
  %59 = load i32, ptr %58, align 4
  %60 = add i32 %59, %56
  %61 = sub i32 %49, %60
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %85

63:                                               ; preds = %40
  store i32 %60, ptr %47, align 4
  %64 = shl i32 %61, 3
  %65 = zext i32 %64 to i64
  %66 = sub i64 %54, %65
  store i64 %66, ptr %52, align 8
  %67 = load ptr, ptr %4, align 4
  %68 = getelementptr inbounds %struct.super_block, ptr %67, i32 0, i32 27
  %69 = load ptr, ptr %68, align 4
  %70 = load i32, ptr %69, align 8
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %63
  %73 = getelementptr inbounds %struct.shmem_sb_info, ptr %69, i32 0, i32 1
  %74 = zext i32 %61 to i64
  %75 = sub nsw i64 0, %74
  %76 = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef %73, i64 noundef %75, i32 noundef %76) #16
  br label %77

77:                                               ; preds = %72, %63
  %78 = load i32, ptr %8, align 8
  %79 = and i32 %78, 2097152
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %77
  %82 = sub nsw i32 0, %61
  %83 = sext i32 %82 to i64
  %84 = load i32, ptr @vm_committed_as_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef nonnull @vm_committed_as, i64 noundef %83, i32 noundef %84) #16
  br label %85

85:                                               ; preds = %81, %77, %40
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %46) #16
  br label %86

86:                                               ; preds = %85, %36, %32, %12
  %87 = phi i1 [ true, %85 ], [ false, %12 ], [ false, %32 ], [ false, %36 ]
  ret i1 %87
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @shmem_recalc_inode(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 -44
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr i8, ptr %0, i32 -40
  %5 = load i32, ptr %4, align 8
  %6 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 9
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.address_space, ptr %7, i32 0, i32 7
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, %5
  %11 = sub i32 %3, %10
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %39

13:                                               ; preds = %1
  store i32 %10, ptr %2, align 4
  %14 = shl i32 %11, 3
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 21
  %17 = load i64, ptr %16, align 8
  %18 = sub i64 %17, %15
  store i64 %18, ptr %16, align 8
  %19 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.super_block, ptr %20, i32 0, i32 27
  %22 = load ptr, ptr %21, align 4
  %23 = load i32, ptr %22, align 8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %13
  %26 = getelementptr inbounds %struct.shmem_sb_info, ptr %22, i32 0, i32 1
  %27 = zext i32 %11 to i64
  %28 = sub nsw i64 0, %27
  %29 = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef %26, i64 noundef %28, i32 noundef %29) #16
  br label %30

30:                                               ; preds = %25, %13
  %31 = getelementptr i8, ptr %0, i32 -48
  %32 = load i32, ptr %31, align 8
  %33 = and i32 %32, 2097152
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %30
  %36 = sub nsw i32 0, %11
  %37 = sext i32 %36 to i64
  %38 = load i32, ptr @vm_committed_as_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef nonnull @vm_committed_as, i64 noundef %37, i32 noundef %38) #16
  br label %39

39:                                               ; preds = %35, %30, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @shmem_uncharge(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr i8, ptr %0, i32 -56
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #16
  %5 = getelementptr i8, ptr %0, i32 -44
  %6 = load i32, ptr %5, align 4
  %7 = sub i32 %6, %1
  store i32 %7, ptr %5, align 4
  %8 = shl i32 %1, 3
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 21
  %11 = load i64, ptr %10, align 8
  %12 = sub i64 %11, %9
  store i64 %12, ptr %10, align 8
  %13 = getelementptr i8, ptr %0, i32 -40
  %14 = load i32, ptr %13, align 8
  %15 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 9
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.address_space, ptr %16, i32 0, i32 7
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, %14
  %20 = sub i32 %7, %19
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %46

22:                                               ; preds = %2
  store i32 %19, ptr %5, align 4
  %23 = shl i32 %20, 3
  %24 = zext i32 %23 to i64
  %25 = sub i64 %12, %24
  store i64 %25, ptr %10, align 8
  %26 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.super_block, ptr %27, i32 0, i32 27
  %29 = load ptr, ptr %28, align 4
  %30 = load i32, ptr %29, align 8
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %22
  %33 = getelementptr inbounds %struct.shmem_sb_info, ptr %29, i32 0, i32 1
  %34 = zext i32 %20 to i64
  %35 = sub nsw i64 0, %34
  %36 = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef %33, i64 noundef %35, i32 noundef %36) #16
  br label %37

37:                                               ; preds = %32, %22
  %38 = getelementptr i8, ptr %0, i32 -48
  %39 = load i32, ptr %38, align 8
  %40 = and i32 %39, 2097152
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %37
  %43 = sub nsw i32 0, %20
  %44 = sext i32 %43 to i64
  %45 = load i32, ptr @vm_committed_as_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef nonnull @vm_committed_as, i64 noundef %44, i32 noundef %45) #16
  br label %46

46:                                               ; preds = %42, %37, %2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #16
  %47 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.super_block, ptr %48, i32 0, i32 27
  %50 = load ptr, ptr %49, align 4
  %51 = load i32, ptr %50, align 8
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %46
  %54 = getelementptr inbounds %struct.shmem_sb_info, ptr %50, i32 0, i32 1
  %55 = sext i32 %1 to i64
  %56 = sub nsw i64 0, %55
  %57 = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef %54, i64 noundef %56, i32 noundef %57) #16
  br label %58

58:                                               ; preds = %53, %46
  %59 = getelementptr i8, ptr %0, i32 -48
  %60 = load i32, ptr %59, align 8
  %61 = and i32 %60, 2097152
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %58
  %64 = sub i32 0, %1
  %65 = sext i32 %64 to i64
  %66 = load i32, ptr @vm_committed_as_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef nonnull @vm_committed_as, i64 noundef %65, i32 noundef %66) #16
  br label %67

67:                                               ; preds = %63, %58
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @shmem_is_huge(ptr nocapture readnone %0, ptr nocapture readnone %1, i32 %2) local_unnamed_addr #4 {
  ret i1 false
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @shmem_partial_swap_usage(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.xa_state, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #16
  %5 = getelementptr inbounds %struct.address_space, ptr %0, i32 0, i32 1
  store ptr %5, ptr %4, align 4
  %6 = getelementptr inbounds %struct.xa_state, ptr %4, i32 0, i32 1
  store i32 %1, ptr %6, align 4
  %7 = getelementptr inbounds %struct.xa_state, ptr %4, i32 0, i32 2
  %8 = getelementptr inbounds %struct.xa_state, ptr %4, i32 0, i32 4
  %9 = getelementptr inbounds %struct.xa_state, ptr %4, i32 0, i32 6
  store i32 0, ptr %7, align 4
  store ptr inttoptr (i32 3 to ptr), ptr %9, align 4
  %10 = getelementptr inbounds %struct.xa_state, ptr %4, i32 0, i32 7
  store ptr null, ptr %10, align 4
  %11 = getelementptr inbounds %struct.xa_state, ptr %4, i32 0, i32 8
  store ptr null, ptr %11, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !26
  %12 = add i32 %2, -1
  %13 = call ptr @xas_find(ptr noundef nonnull %4, i32 noundef %12) #16
  %14 = icmp eq ptr %13, null
  br i1 %14, label %69, label %15

15:                                               ; preds = %66, %3
  %16 = phi i32 [ %30, %66 ], [ 0, %3 ]
  %17 = phi ptr [ %67, %66 ], [ %13, %3 ]
  %18 = ptrtoint ptr %17 to i32
  switch i32 %18, label %20 [
    i32 1030, label %29
    i32 1026, label %19
  ]

19:                                               ; preds = %15
  store ptr inttoptr (i32 3 to ptr), ptr %9, align 4
  br label %29

20:                                               ; preds = %15
  %21 = and i32 %18, 1
  %22 = add i32 %21, %16
  %23 = tail call ptr @llvm.thread.pointer() #16
  %24 = load volatile i32, ptr %23, align 4
  %25 = and i32 %24, 2
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %20
  call void @xas_pause(ptr noundef nonnull %4) #16
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !27
  %28 = call i32 @__cond_resched() #16
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !26
  br label %29

29:                                               ; preds = %27, %20, %19, %15
  %30 = phi i32 [ %22, %27 ], [ %22, %20 ], [ %16, %19 ], [ %16, %15 ]
  %31 = load ptr, ptr %9, align 4
  %32 = ptrtoint ptr %31 to i32
  %33 = and i32 %32, 3
  %34 = icmp ne i32 %33, 0
  %35 = icmp eq ptr %31, null
  %36 = or i1 %35, %34
  br i1 %36, label %64, label %37, !prof !28

37:                                               ; preds = %29
  %38 = load i8, ptr %31, align 4
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %64, !prof !14

40:                                               ; preds = %37
  %41 = load i8, ptr %8, align 2
  %42 = zext i8 %41 to i32
  %43 = load i32, ptr %6, align 4
  %44 = and i32 %43, 63
  %45 = icmp eq i32 %44, %42
  br i1 %45, label %46, label %64, !prof !14

46:                                               ; preds = %60, %40
  %47 = phi i8 [ %61, %60 ], [ %41, %40 ]
  %48 = phi i32 [ %62, %60 ], [ %43, %40 ]
  %49 = icmp uge i32 %48, %12
  %50 = icmp eq i8 %47, 63
  %51 = select i1 %49, i1 true, i1 %50
  br i1 %51, label %64, label %52, !prof !29

52:                                               ; preds = %46
  %53 = zext i8 %47 to i32
  %54 = add nuw nsw i32 %53, 1
  %55 = getelementptr %struct.xa_node, ptr %31, i32 0, i32 7, i32 %54
  %56 = load volatile ptr, ptr %55, align 4
  %57 = ptrtoint ptr %56 to i32
  %58 = and i32 %57, 3
  %59 = icmp eq i32 %58, 2
  br i1 %59, label %64, label %60, !prof !28

60:                                               ; preds = %52
  %61 = add i8 %47, 1
  store i8 %61, ptr %8, align 2
  %62 = add nuw i32 %48, 1
  store i32 %62, ptr %6, align 4
  %63 = icmp eq ptr %56, null
  br i1 %63, label %46, label %66

64:                                               ; preds = %52, %46, %40, %37, %29
  %65 = call ptr @xas_find(ptr noundef nonnull %4, i32 noundef %12) #16
  br label %66

66:                                               ; preds = %64, %60
  %67 = phi ptr [ %65, %64 ], [ %56, %60 ]
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %15

69:                                               ; preds = %66, %3
  %70 = phi i32 [ 0, %3 ], [ %30, %66 ]
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !27
  %71 = shl i32 %70, 12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #16
  ret i32 %71
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xas_find(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xas_pause(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @shmem_swap_usage(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 14
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 9
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr i8, ptr %5, i32 -40
  %9 = load volatile i32, ptr %8, align 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %30, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 13
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  %15 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = load i32, ptr %0, align 4
  %18 = sub i32 %16, %17
  br i1 %14, label %19, label %26

19:                                               ; preds = %11
  %20 = zext i32 %18 to i64
  %21 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 13
  %22 = load i64, ptr %21, align 8
  %23 = icmp sgt i64 %22, %20
  br i1 %23, label %26, label %24

24:                                               ; preds = %19
  %25 = shl i32 %9, 12
  br label %30

26:                                               ; preds = %19, %11
  %27 = lshr i32 %18, 12
  %28 = add i32 %27, %13
  %29 = tail call i32 @shmem_partial_swap_usage(ptr noundef %7, i32 noundef %13, i32 noundef %28)
  br label %30

30:                                               ; preds = %26, %24, %1
  %31 = phi i32 [ %29, %26 ], [ %25, %24 ], [ 0, %1 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @shmem_unlock_mapping(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.pagevec, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %2, i8 0, i32 64, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  store i32 0, ptr %3, align 4
  store i8 0, ptr %2, align 4
  %4 = getelementptr inbounds %struct.pagevec, ptr %2, i32 0, i32 1
  store i8 0, ptr %4, align 1
  %5 = getelementptr inbounds %struct.address_space, ptr %0, i32 0, i32 10
  %6 = icmp eq ptr %0, null
  br label %7

7:                                                ; preds = %19, %1
  br i1 %6, label %12, label %8

8:                                                ; preds = %7
  %9 = load volatile i32, ptr %5, align 4
  %10 = and i32 %9, 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %8, %7
  %13 = call i32 @pagevec_lookup_range(ptr noundef nonnull %2, ptr noundef %0, ptr noundef nonnull %3, i32 noundef -1) #16
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %12
  call void @check_move_unevictable_pages(ptr noundef nonnull %2) #16
  %16 = load i8, ptr %2, align 4
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  call void @__pagevec_release(ptr noundef nonnull %2) #16
  br label %19

19:                                               ; preds = %18, %15
  %20 = call i32 @__cond_resched() #16
  br label %7

21:                                               ; preds = %12, %8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @check_move_unevictable_pages(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @shmem_truncate_range(ptr noundef %0, i64 noundef %1, i64 noundef %2) #0 {
  %4 = alloca %struct.timespec64, align 8
  tail call fastcc void @shmem_undo_range(ptr noundef %0, i64 noundef %1, i64 noundef %2, i1 noundef zeroext false)
  %5 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 16
  %6 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #16
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %4, ptr noundef %0) #16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %5, ptr noundef align 8 dereferenceable(16) %6, i32 16, i1 false)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @shmem_undo_range(ptr noundef %0, i64 noundef %1, i64 noundef %2, i1 noundef zeroext %3) unnamed_addr #0 {
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca %struct.folio_batch, align 4
  %8 = alloca [15 x i32], align 4
  %9 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 9
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr i8, ptr %0, i32 -56
  %12 = add i64 %1, 4095
  %13 = lshr i64 %12, 12
  %14 = trunc i64 %13 to i32
  %15 = add i64 %2, 1
  %16 = lshr i64 %15, 12
  %17 = trunc i64 %16 to i32
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %7, i8 0, i32 64, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %8) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(60) %8, i8 0, i32 60, i1 false), !annotation !9
  %18 = icmp eq i64 %2, -1
  %19 = select i1 %18, i32 -1, i32 %17
  %20 = getelementptr i8, ptr %0, i32 -36
  %21 = load i32, ptr %20, align 4
  %22 = icmp ule i32 %21, %14
  %23 = icmp ugt i32 %21, %19
  %24 = or i1 %22, %23
  %25 = or i1 %24, %3
  br i1 %25, label %27, label %26

26:                                               ; preds = %4
  store i32 %14, ptr %20, align 4
  br label %27

27:                                               ; preds = %26, %4
  store i8 0, ptr %7, align 4
  %28 = getelementptr inbounds %struct.folio_batch, ptr %7, i32 0, i32 1
  store i8 0, ptr %28, align 1
  %29 = add i32 %19, -1
  %30 = icmp ugt i32 %19, %14
  br i1 %30, label %31, label %103

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.address_space, ptr %10, i32 0, i32 1
  br label %33

33:                                               ; preds = %96, %31
  %34 = phi i32 [ %14, %31 ], [ %98, %96 ]
  %35 = phi i32 [ 0, %31 ], [ %91, %96 ]
  %36 = call i32 @find_lock_entries(ptr noundef %10, i32 noundef %34, i32 noundef %29, ptr noundef nonnull %7, ptr noundef nonnull %8) #16
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %100, label %38

38:                                               ; preds = %33
  %39 = load i8, ptr %7, align 4
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %90, label %41

41:                                               ; preds = %83, %38
  %42 = phi i32 [ %86, %83 ], [ 0, %38 ]
  %43 = phi i32 [ %84, %83 ], [ %35, %38 ]
  %44 = getelementptr %struct.folio_batch, ptr %7, i32 0, i32 2, i32 %42
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr [15 x i32], ptr %8, i32 0, i32 %42
  %47 = load i32, ptr %46, align 4
  %48 = ptrtoint ptr %45 to i32
  %49 = and i32 %48, 1
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %64, label %51

51:                                               ; preds = %41
  br i1 %3, label %83, label %52

52:                                               ; preds = %51
  call void @_raw_spin_lock_irq(ptr noundef %32) #16
  %53 = call ptr @__xa_cmpxchg(ptr noundef %32, i32 noundef %47, ptr noundef %45, ptr noundef null, i32 noundef 0) #16
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !20
  %54 = load i16, ptr %32, align 4
  %55 = add i16 %54, 1
  store i16 %55, ptr %32, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !21
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !22
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #16, !srcloc !23
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !24
  %56 = icmp eq ptr %53, %45
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = lshr i32 %48, 1
  %59 = insertvalue [1 x i32] poison, i32 %58, 0
  %60 = call i32 @free_swap_and_cache([1 x i32] %59) #16
  br label %61

61:                                               ; preds = %57, %52
  %62 = zext i1 %56 to i32
  %63 = add i32 %43, %62
  br label %83

64:                                               ; preds = %41
  %65 = load volatile i32, ptr %45, align 4
  %66 = and i32 %65, 65536
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %64
  %69 = getelementptr %struct.page, ptr %45, i32 1, i32 1, i32 0, i32 2
  %70 = load i32, ptr %69, align 4
  br label %71

71:                                               ; preds = %68, %64
  %72 = phi i32 [ %70, %68 ], [ 1, %64 ]
  %73 = add i32 %47, -1
  %74 = add i32 %73, %72
  br i1 %3, label %75, label %80

75:                                               ; preds = %71
  %76 = load volatile i32, ptr %45, align 4
  %77 = and i32 %76, 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %75
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !15
  br label %82

80:                                               ; preds = %75, %71
  %81 = call i32 @truncate_inode_folio(ptr noundef %10, ptr noundef %45) #16
  br label %82

82:                                               ; preds = %80, %79
  call void @folio_unlock(ptr noundef %45) #16
  br label %83

83:                                               ; preds = %82, %61, %51
  %84 = phi i32 [ %43, %51 ], [ %63, %61 ], [ %43, %82 ]
  %85 = phi i32 [ %47, %51 ], [ %47, %61 ], [ %74, %82 ]
  %86 = add nuw nsw i32 %42, 1
  %87 = load i8, ptr %7, align 4
  %88 = zext i8 %87 to i32
  %89 = icmp ult i32 %86, %88
  br i1 %89, label %41, label %90

90:                                               ; preds = %83, %38
  %91 = phi i32 [ %35, %38 ], [ %84, %83 ]
  %92 = phi i32 [ %34, %38 ], [ %85, %83 ]
  call void @folio_batch_remove_exceptionals(ptr noundef nonnull %7) #16
  %93 = load i8, ptr %7, align 4
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %90
  call void @__pagevec_release(ptr noundef nonnull %7) #16
  br label %96

96:                                               ; preds = %95, %90
  %97 = call i32 @__cond_resched() #16
  %98 = add i32 %92, 1
  %99 = icmp ult i32 %98, %19
  br i1 %99, label %33, label %100

100:                                              ; preds = %96, %33
  %101 = phi i32 [ %35, %33 ], [ %91, %96 ]
  %102 = load ptr, ptr %9, align 8
  br label %103

103:                                              ; preds = %100, %27
  %104 = phi ptr [ %10, %27 ], [ %102, %100 ]
  %105 = phi i32 [ 0, %27 ], [ %101, %100 ]
  %106 = ashr i64 %1, 12
  %107 = ashr i64 %2, 12
  %108 = icmp eq i64 %106, %107
  %109 = trunc i64 %106 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  %110 = call ptr @__filemap_get_folio(ptr noundef %104, i32 noundef %109, i32 noundef 258, i32 noundef 0) #16
  %111 = ptrtoint ptr %110 to i32
  %112 = and i32 %111, 1
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %134, label %114

114:                                              ; preds = %103
  store ptr null, ptr %6, align 4
  %115 = load ptr, ptr %9, align 8
  %116 = getelementptr inbounds %struct.address_space, ptr %115, i32 0, i32 3
  %117 = load i32, ptr %116, align 4
  %118 = call fastcc i32 @shmem_getpage_gfp(ptr noundef %0, i32 noundef %109, ptr noundef nonnull %6, i32 noundef 0, i32 noundef %117, ptr noundef null, ptr noundef null) #16
  %119 = load ptr, ptr %6, align 4
  %120 = icmp eq ptr %119, null
  br i1 %120, label %121, label %122

121:                                              ; preds = %114
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  br i1 %108, label %227, label %182

122:                                              ; preds = %114
  %123 = getelementptr inbounds %struct.page, ptr %119, i32 0, i32 1
  %124 = load volatile i32, ptr %123, align 4
  %125 = and i32 %124, 1
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %129, label %127, !prof !14

127:                                              ; preds = %122
  %128 = add i32 %124, -1
  br label %131

129:                                              ; preds = %122
  %130 = ptrtoint ptr %119 to i32
  br label %131

131:                                              ; preds = %129, %127
  %132 = phi i32 [ %128, %127 ], [ %130, %129 ]
  %133 = inttoptr i32 %132 to ptr
  br label %134

134:                                              ; preds = %131, %103
  %135 = phi ptr [ %110, %103 ], [ %133, %131 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  %136 = icmp eq ptr %135, null
  br i1 %136, label %178, label %137

137:                                              ; preds = %134
  %138 = getelementptr inbounds %struct.page, ptr %135, i32 0, i32 1, i32 0, i32 2
  %139 = load i32, ptr %138, align 4
  %140 = zext i32 %139 to i64
  %141 = shl nuw nsw i64 %140, 12
  %142 = load volatile i32, ptr %135, align 4
  %143 = and i32 %142, 65536
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %150, label %145

145:                                              ; preds = %137
  %146 = getelementptr %struct.page, ptr %135, i32 1, i32 1
  %147 = getelementptr inbounds %struct.anon.11, ptr %146, i32 0, i32 2
  %148 = load i8, ptr %147, align 1
  %149 = zext i8 %148 to i32
  br label %150

150:                                              ; preds = %145, %137
  %151 = phi i32 [ %149, %145 ], [ 0, %137 ]
  %152 = shl i32 4096, %151
  %153 = zext i32 %152 to i64
  %154 = add nuw nsw i64 %141, %153
  %155 = icmp sgt i64 %154, %2
  %156 = call zeroext i1 @folio_mark_dirty(ptr noundef nonnull %135) #16
  %157 = call zeroext i1 @truncate_inode_partial_folio(ptr noundef nonnull %135, i64 noundef %1, i64 noundef %2) #16
  br i1 %157, label %170, label %158

158:                                              ; preds = %150
  %159 = load i32, ptr %138, align 4
  %160 = load volatile i32, ptr %135, align 4
  %161 = and i32 %160, 65536
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %166, label %163

163:                                              ; preds = %158
  %164 = getelementptr %struct.page, ptr %135, i32 1, i32 1, i32 0, i32 2
  %165 = load i32, ptr %164, align 4
  br label %166

166:                                              ; preds = %163, %158
  %167 = phi i32 [ %165, %163 ], [ 1, %158 ]
  %168 = add i32 %167, %159
  %169 = select i1 %155, i32 %159, i32 %19
  br label %170

170:                                              ; preds = %166, %150
  %171 = phi i32 [ %14, %150 ], [ %168, %166 ]
  %172 = phi i32 [ %19, %150 ], [ %169, %166 ]
  call void @folio_unlock(ptr noundef nonnull %135) #16
  %173 = getelementptr inbounds %struct.page, ptr %135, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !16
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %173) #16, !srcloc !17
  %174 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %173, ptr %173, i32 1, ptr elementtype(i32) %173) #16, !srcloc !18
  %175 = extractvalue { i32, i32 } %174, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %170
  call void @__put_page(ptr noundef nonnull %135) #16
  br i1 %155, label %227, label %182

178:                                              ; preds = %170, %134
  %179 = phi i32 [ %14, %134 ], [ %171, %170 ]
  %180 = phi i32 [ %19, %134 ], [ %172, %170 ]
  %181 = phi i1 [ %108, %134 ], [ %155, %170 ]
  br i1 %181, label %227, label %182

182:                                              ; preds = %178, %177, %121
  %183 = phi i32 [ %19, %121 ], [ %180, %178 ], [ %172, %177 ]
  %184 = phi i32 [ %14, %121 ], [ %179, %178 ], [ %171, %177 ]
  %185 = trunc i64 %107 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  %186 = load ptr, ptr %9, align 8
  %187 = call ptr @__filemap_get_folio(ptr noundef %186, i32 noundef %185, i32 noundef 258, i32 noundef 0) #16
  %188 = ptrtoint ptr %187 to i32
  %189 = and i32 %188, 1
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %211, label %191

191:                                              ; preds = %182
  store ptr null, ptr %5, align 4
  %192 = load ptr, ptr %9, align 8
  %193 = getelementptr inbounds %struct.address_space, ptr %192, i32 0, i32 3
  %194 = load i32, ptr %193, align 4
  %195 = call fastcc i32 @shmem_getpage_gfp(ptr noundef %0, i32 noundef %185, ptr noundef nonnull %5, i32 noundef 0, i32 noundef %194, ptr noundef null, ptr noundef null) #16
  %196 = load ptr, ptr %5, align 4
  %197 = icmp eq ptr %196, null
  br i1 %197, label %198, label %199

198:                                              ; preds = %191
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  br label %227

199:                                              ; preds = %191
  %200 = getelementptr inbounds %struct.page, ptr %196, i32 0, i32 1
  %201 = load volatile i32, ptr %200, align 4
  %202 = and i32 %201, 1
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %206, label %204, !prof !14

204:                                              ; preds = %199
  %205 = add i32 %201, -1
  br label %208

206:                                              ; preds = %199
  %207 = ptrtoint ptr %196 to i32
  br label %208

208:                                              ; preds = %206, %204
  %209 = phi i32 [ %205, %204 ], [ %207, %206 ]
  %210 = inttoptr i32 %209 to ptr
  br label %211

211:                                              ; preds = %208, %182
  %212 = phi ptr [ %187, %182 ], [ %210, %208 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  %213 = icmp eq ptr %212, null
  br i1 %213, label %227, label %214

214:                                              ; preds = %211
  %215 = call zeroext i1 @folio_mark_dirty(ptr noundef nonnull %212) #16
  %216 = call zeroext i1 @truncate_inode_partial_folio(ptr noundef nonnull %212, i64 noundef %1, i64 noundef %2) #16
  br i1 %216, label %220, label %217

217:                                              ; preds = %214
  %218 = getelementptr inbounds %struct.anon.36, ptr %212, i32 0, i32 3
  %219 = load i32, ptr %218, align 4
  br label %220

220:                                              ; preds = %217, %214
  %221 = phi i32 [ %183, %214 ], [ %219, %217 ]
  call void @folio_unlock(ptr noundef nonnull %212) #16
  %222 = getelementptr inbounds %struct.page, ptr %212, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !16
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %222) #16, !srcloc !17
  %223 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %222, ptr %222, i32 1, ptr elementtype(i32) %222) #16, !srcloc !18
  %224 = extractvalue { i32, i32 } %223, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %226, label %227

226:                                              ; preds = %220
  call void @__put_page(ptr noundef nonnull %212) #16
  br label %227

227:                                              ; preds = %226, %220, %211, %198, %178, %177, %121
  %228 = phi i32 [ %184, %211 ], [ %184, %198 ], [ %184, %220 ], [ %184, %226 ], [ %171, %177 ], [ %14, %121 ], [ %179, %178 ]
  %229 = phi i32 [ %183, %211 ], [ %183, %198 ], [ %221, %220 ], [ %221, %226 ], [ %172, %177 ], [ %19, %121 ], [ %180, %178 ]
  %230 = add i32 %229, -1
  %231 = icmp ne i32 %229, -1
  %232 = getelementptr inbounds %struct.address_space, ptr %10, i32 0, i32 1
  br label %233

233:                                              ; preds = %321, %227
  %234 = phi i32 [ %316, %321 ], [ %105, %227 ]
  %235 = phi i32 [ %322, %321 ], [ %228, %227 ]
  br label %236

236:                                              ; preds = %246, %233
  %237 = phi i32 [ %228, %246 ], [ %235, %233 ]
  %238 = icmp ult i32 %237, %229
  br i1 %238, label %239, label %323

239:                                              ; preds = %236
  %240 = call i32 @__cond_resched() #16
  %241 = call i32 @find_get_entries(ptr noundef %10, i32 noundef %237, i32 noundef %230, ptr noundef nonnull %7, ptr noundef nonnull %8) #16
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %246, label %243

243:                                              ; preds = %239
  %244 = load i8, ptr %7, align 4
  %245 = icmp eq i8 %244, 0
  br i1 %245, label %315, label %249

246:                                              ; preds = %239
  %247 = icmp eq i32 %237, %228
  %248 = select i1 %247, i1 true, i1 %231
  br i1 %248, label %323, label %236

249:                                              ; preds = %308, %243
  %250 = phi i32 [ %311, %308 ], [ 0, %243 ]
  %251 = phi i32 [ %309, %308 ], [ %234, %243 ]
  %252 = getelementptr %struct.folio_batch, ptr %7, i32 0, i32 2, i32 %250
  %253 = load ptr, ptr %252, align 4
  %254 = getelementptr [15 x i32], ptr %8, i32 0, i32 %250
  %255 = load i32, ptr %254, align 4
  %256 = ptrtoint ptr %253 to i32
  %257 = and i32 %256, 1
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %272, label %259

259:                                              ; preds = %249
  br i1 %3, label %308, label %260

260:                                              ; preds = %259
  call void @_raw_spin_lock_irq(ptr noundef %232) #16
  %261 = call ptr @__xa_cmpxchg(ptr noundef %232, i32 noundef %255, ptr noundef %253, ptr noundef null, i32 noundef 0) #16
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !20
  %262 = load i16, ptr %232, align 4
  %263 = add i16 %262, 1
  store i16 %263, ptr %232, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !21
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !22
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #16, !srcloc !23
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !24
  %264 = icmp eq ptr %261, %253
  br i1 %264, label %267, label %265

265:                                              ; preds = %260
  %266 = add i32 %255, -1
  br label %315

267:                                              ; preds = %260
  %268 = lshr i32 %256, 1
  %269 = insertvalue [1 x i32] poison, i32 %268, 0
  %270 = call i32 @free_swap_and_cache([1 x i32] %269) #16
  %271 = add i32 %251, 1
  br label %308

272:                                              ; preds = %249
  %273 = load volatile i32, ptr %253, align 4
  %274 = and i32 %273, 1
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %276, label %281

276:                                              ; preds = %272
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %253) #16, !srcloc !17
  %277 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %253, ptr %253, i32 1, ptr elementtype(i32) %253) #16, !srcloc !30
  %278 = extractvalue { i32, i32, i32 } %277, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !31
  %279 = and i32 %278, 1
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %282, label %281

281:                                              ; preds = %276, %272
  call void @__folio_lock(ptr noundef %253) #16
  br label %282

282:                                              ; preds = %281, %276
  br i1 %3, label %283, label %288

283:                                              ; preds = %282
  %284 = load volatile i32, ptr %253, align 4
  %285 = and i32 %284, 4
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %288, label %287

287:                                              ; preds = %283
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !15
  br label %295

288:                                              ; preds = %283, %282
  %289 = call ptr @folio_mapping(ptr noundef %253) #16
  %290 = icmp eq ptr %289, %10
  br i1 %290, label %293, label %291

291:                                              ; preds = %288
  call void @folio_unlock(ptr noundef %253) #16
  %292 = add i32 %255, -1
  br label %315

293:                                              ; preds = %288
  %294 = call i32 @truncate_inode_folio(ptr noundef %10, ptr noundef %253) #16
  br label %295

295:                                              ; preds = %293, %287
  %296 = getelementptr inbounds %struct.anon.36, ptr %253, i32 0, i32 3
  %297 = load i32, ptr %296, align 4
  %298 = load volatile i32, ptr %253, align 4
  %299 = and i32 %298, 65536
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %304, label %301

301:                                              ; preds = %295
  %302 = getelementptr %struct.page, ptr %253, i32 1, i32 1, i32 0, i32 2
  %303 = load i32, ptr %302, align 4
  br label %304

304:                                              ; preds = %301, %295
  %305 = phi i32 [ %303, %301 ], [ 1, %295 ]
  %306 = add i32 %297, -1
  %307 = add i32 %306, %305
  call void @folio_unlock(ptr noundef %253) #16
  br label %308

308:                                              ; preds = %304, %267, %259
  %309 = phi i32 [ %251, %259 ], [ %271, %267 ], [ %251, %304 ]
  %310 = phi i32 [ %255, %259 ], [ %255, %267 ], [ %307, %304 ]
  %311 = add nuw nsw i32 %250, 1
  %312 = load i8, ptr %7, align 4
  %313 = zext i8 %312 to i32
  %314 = icmp ult i32 %311, %313
  br i1 %314, label %249, label %315

315:                                              ; preds = %308, %291, %265, %243
  %316 = phi i32 [ %251, %265 ], [ %251, %291 ], [ %234, %243 ], [ %309, %308 ]
  %317 = phi i32 [ %266, %265 ], [ %292, %291 ], [ %237, %243 ], [ %310, %308 ]
  call void @folio_batch_remove_exceptionals(ptr noundef nonnull %7) #16
  %318 = load i8, ptr %7, align 4
  %319 = icmp eq i8 %318, 0
  br i1 %319, label %321, label %320

320:                                              ; preds = %315
  call void @__pagevec_release(ptr noundef nonnull %7) #16
  br label %321

321:                                              ; preds = %320, %315
  %322 = add i32 %317, 1
  br label %233

323:                                              ; preds = %246, %236
  call void @_raw_spin_lock_irq(ptr noundef %11) #16
  %324 = getelementptr i8, ptr %0, i32 -40
  %325 = load i32, ptr %324, align 8
  %326 = sub i32 %325, %234
  store i32 %326, ptr %324, align 8
  %327 = getelementptr i8, ptr %0, i32 -44
  %328 = load i32, ptr %327, align 4
  %329 = load ptr, ptr %9, align 8
  %330 = getelementptr inbounds %struct.address_space, ptr %329, i32 0, i32 7
  %331 = load i32, ptr %330, align 4
  %332 = add i32 %331, %326
  %333 = sub i32 %328, %332
  %334 = icmp sgt i32 %333, 0
  br i1 %334, label %335, label %361

335:                                              ; preds = %323
  store i32 %332, ptr %327, align 4
  %336 = shl i32 %333, 3
  %337 = zext i32 %336 to i64
  %338 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 21
  %339 = load i64, ptr %338, align 8
  %340 = sub i64 %339, %337
  store i64 %340, ptr %338, align 8
  %341 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %342 = load ptr, ptr %341, align 4
  %343 = getelementptr inbounds %struct.super_block, ptr %342, i32 0, i32 27
  %344 = load ptr, ptr %343, align 4
  %345 = load i32, ptr %344, align 8
  %346 = icmp eq i32 %345, 0
  br i1 %346, label %352, label %347

347:                                              ; preds = %335
  %348 = getelementptr inbounds %struct.shmem_sb_info, ptr %344, i32 0, i32 1
  %349 = zext i32 %333 to i64
  %350 = sub nsw i64 0, %349
  %351 = load i32, ptr @percpu_counter_batch, align 4
  call void @percpu_counter_add_batch(ptr noundef %348, i64 noundef %350, i32 noundef %351) #16
  br label %352

352:                                              ; preds = %347, %335
  %353 = getelementptr i8, ptr %0, i32 -48
  %354 = load i32, ptr %353, align 8
  %355 = and i32 %354, 2097152
  %356 = icmp eq i32 %355, 0
  br i1 %356, label %361, label %357

357:                                              ; preds = %352
  %358 = sub nsw i32 0, %333
  %359 = sext i32 %358 to i64
  %360 = load i32, ptr @vm_committed_as_batch, align 4
  call void @percpu_counter_add_batch(ptr noundef nonnull @vm_committed_as, i64 noundef %359, i32 noundef %360) #16
  br label %361

361:                                              ; preds = %357, %352, %323
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !20
  %362 = load i16, ptr %11, align 4
  %363 = add i16 %362, 1
  store i16 %363, ptr %11, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !21
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !22
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #16, !srcloc !23
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !24
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @shmem_unuse(i32 noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.pagevec, align 4
  %3 = alloca ptr, align 4
  %4 = alloca %struct.xa_state, align 4
  %5 = alloca %struct.pagevec, align 4
  %6 = alloca [15 x i32], align 4
  %7 = load volatile ptr, ptr @shmem_swaplist, align 4
  %8 = icmp eq ptr %7, @shmem_swaplist
  br i1 %8, label %238, label %9

9:                                                ; preds = %1
  tail call void @mutex_lock(ptr noundef nonnull @shmem_swaplist_mutex) #16
  %10 = load ptr, ptr @shmem_swaplist, align 4
  %11 = icmp eq ptr %10, @shmem_swaplist
  br i1 %11, label %236, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.pagevec, ptr %5, i32 0, i32 1
  %14 = getelementptr inbounds %struct.pagevec, ptr %5, i32 0, i32 2
  %15 = getelementptr inbounds %struct.xa_state, ptr %4, i32 0, i32 1
  %16 = getelementptr inbounds %struct.xa_state, ptr %4, i32 0, i32 2
  %17 = getelementptr inbounds %struct.xa_state, ptr %4, i32 0, i32 4
  %18 = getelementptr inbounds %struct.xa_state, ptr %4, i32 0, i32 6
  %19 = getelementptr inbounds %struct.xa_state, ptr %4, i32 0, i32 7
  %20 = getelementptr inbounds %struct.xa_state, ptr %4, i32 0, i32 8
  %21 = getelementptr inbounds [16 x i32], ptr %5, i32 0, i32 2
  %22 = getelementptr inbounds [16 x i32], ptr %5, i32 0, i32 3
  %23 = getelementptr inbounds [16 x i32], ptr %5, i32 0, i32 4
  %24 = getelementptr inbounds [16 x i32], ptr %5, i32 0, i32 5
  %25 = getelementptr inbounds [16 x i32], ptr %5, i32 0, i32 6
  %26 = getelementptr inbounds [16 x i32], ptr %5, i32 0, i32 7
  %27 = getelementptr inbounds [16 x i32], ptr %5, i32 0, i32 8
  %28 = getelementptr inbounds [16 x i32], ptr %5, i32 0, i32 9
  %29 = getelementptr inbounds [16 x i32], ptr %5, i32 0, i32 10
  %30 = getelementptr inbounds [16 x i32], ptr %5, i32 0, i32 11
  %31 = getelementptr inbounds [16 x i32], ptr %5, i32 0, i32 12
  %32 = getelementptr inbounds [16 x i32], ptr %5, i32 0, i32 13
  %33 = getelementptr inbounds [16 x i32], ptr %5, i32 0, i32 14
  %34 = getelementptr inbounds [16 x i32], ptr %5, i32 0, i32 15
  %35 = getelementptr inbounds [16 x i32], ptr %2, i32 0, i32 1
  %36 = getelementptr inbounds [16 x i32], ptr %2, i32 0, i32 2
  %37 = getelementptr inbounds [16 x i32], ptr %2, i32 0, i32 3
  %38 = getelementptr inbounds [16 x i32], ptr %2, i32 0, i32 4
  %39 = getelementptr inbounds [16 x i32], ptr %2, i32 0, i32 5
  %40 = getelementptr inbounds [16 x i32], ptr %2, i32 0, i32 6
  %41 = getelementptr inbounds [16 x i32], ptr %2, i32 0, i32 7
  %42 = getelementptr inbounds [16 x i32], ptr %2, i32 0, i32 8
  %43 = getelementptr inbounds [16 x i32], ptr %2, i32 0, i32 9
  %44 = getelementptr inbounds [16 x i32], ptr %2, i32 0, i32 10
  %45 = getelementptr inbounds [16 x i32], ptr %2, i32 0, i32 11
  %46 = getelementptr inbounds [16 x i32], ptr %2, i32 0, i32 12
  %47 = getelementptr inbounds [16 x i32], ptr %2, i32 0, i32 13
  %48 = getelementptr inbounds [16 x i32], ptr %2, i32 0, i32 14
  %49 = getelementptr inbounds [16 x i32], ptr %2, i32 0, i32 15
  br label %50

50:                                               ; preds = %233, %12
  %51 = phi ptr [ %10, %12 ], [ %234, %233 ]
  %52 = getelementptr i8, ptr %51, i32 -16
  %53 = load i32, ptr %52, align 8
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = load ptr, ptr %51, align 8
  %57 = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.list_head, ptr %56, i32 0, i32 1
  store ptr %58, ptr %59, align 4
  store volatile ptr %56, ptr %58, align 4
  store volatile ptr %51, ptr %51, align 4
  store ptr %51, ptr %57, align 4
  br label %233

60:                                               ; preds = %50
  %61 = getelementptr i8, ptr %51, i32 20
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %61) #16, !srcloc !17
  %62 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %61, ptr %61, i32 1, ptr elementtype(i32) %61) #16, !srcloc !32
  call void @mutex_unlock(ptr noundef nonnull @shmem_swaplist_mutex) #16
  %63 = getelementptr i8, ptr %51, i32 24
  %64 = getelementptr i8, ptr %51, i32 56
  %65 = load ptr, ptr %64, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %5, i8 0, i32 64, i1 false) #16, !annotation !9
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %6) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(60) %6, i8 0, i32 60, i1 false) #16, !annotation !9
  store i8 0, ptr %5, align 4
  store i8 0, ptr %13, align 1
  %66 = getelementptr inbounds %struct.address_space, ptr %65, i32 0, i32 1
  br label %67

67:                                               ; preds = %210, %60
  %68 = phi i32 [ 0, %60 ], [ %215, %210 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #16
  store ptr %66, ptr %4, align 4
  store i32 %68, ptr %15, align 4
  store i32 0, ptr %16, align 4
  store ptr inttoptr (i32 3 to ptr), ptr %18, align 4
  store ptr null, ptr %19, align 4
  store ptr null, ptr %20, align 4
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !26
  %69 = call ptr @xas_find(ptr noundef nonnull %4, i32 noundef -1) #16
  %70 = icmp eq ptr %69, null
  br i1 %70, label %135, label %71

71:                                               ; preds = %132, %67
  %72 = phi i32 [ %96, %132 ], [ 0, %67 ]
  %73 = phi ptr [ %133, %132 ], [ %69, %67 ]
  %74 = ptrtoint ptr %73 to i32
  switch i32 %74, label %76 [
    i32 1030, label %95
    i32 1026, label %75
  ]

75:                                               ; preds = %71
  store ptr inttoptr (i32 3 to ptr), ptr %18, align 4
  br label %95

76:                                               ; preds = %71
  %77 = and i32 %74, 1
  %78 = icmp ne i32 %77, 0
  %79 = lshr i32 %74, 27
  %80 = icmp eq i32 %79, %0
  %81 = and i1 %78, %80
  br i1 %81, label %82, label %95

82:                                               ; preds = %76
  %83 = load i32, ptr %15, align 4
  %84 = getelementptr i32, ptr %6, i32 %72
  store i32 %83, ptr %84, align 4
  %85 = getelementptr ptr, ptr %14, i32 %72
  store ptr %73, ptr %85, align 4
  %86 = tail call ptr @llvm.thread.pointer() #16
  %87 = load volatile i32, ptr %86, align 4
  %88 = and i32 %87, 2
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %92, label %90

90:                                               ; preds = %82
  call void @xas_pause(ptr noundef nonnull %4) #16
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !27
  %91 = call i32 @__cond_resched() #16
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !26
  br label %92

92:                                               ; preds = %90, %82
  %93 = add i32 %72, 1
  %94 = icmp eq i32 %93, 15
  br i1 %94, label %135, label %95

95:                                               ; preds = %92, %76, %75, %71
  %96 = phi i32 [ %93, %92 ], [ %72, %76 ], [ %72, %75 ], [ %72, %71 ]
  %97 = load ptr, ptr %18, align 4
  %98 = ptrtoint ptr %97 to i32
  %99 = and i32 %98, 3
  %100 = icmp ne i32 %99, 0
  %101 = icmp eq ptr %97, null
  %102 = or i1 %101, %100
  br i1 %102, label %130, label %103, !prof !28

103:                                              ; preds = %95
  %104 = load i8, ptr %97, align 4
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %106, label %130, !prof !14

106:                                              ; preds = %103
  %107 = load i8, ptr %17, align 2
  %108 = zext i8 %107 to i32
  %109 = load i32, ptr %15, align 4
  %110 = and i32 %109, 63
  %111 = icmp eq i32 %110, %108
  br i1 %111, label %112, label %130, !prof !14

112:                                              ; preds = %126, %106
  %113 = phi i8 [ %127, %126 ], [ %107, %106 ]
  %114 = phi i32 [ %128, %126 ], [ %109, %106 ]
  %115 = icmp eq i32 %114, -1
  %116 = icmp eq i8 %113, 63
  %117 = select i1 %115, i1 true, i1 %116
  br i1 %117, label %130, label %118, !prof !29

118:                                              ; preds = %112
  %119 = zext i8 %113 to i32
  %120 = add nuw nsw i32 %119, 1
  %121 = getelementptr %struct.xa_node, ptr %97, i32 0, i32 7, i32 %120
  %122 = load volatile ptr, ptr %121, align 4
  %123 = ptrtoint ptr %122 to i32
  %124 = and i32 %123, 3
  %125 = icmp eq i32 %124, 2
  br i1 %125, label %130, label %126, !prof !28

126:                                              ; preds = %118
  %127 = add i8 %113, 1
  store i8 %127, ptr %17, align 2
  %128 = add nuw i32 %114, 1
  store i32 %128, ptr %15, align 4
  %129 = icmp eq ptr %122, null
  br i1 %129, label %112, label %132

130:                                              ; preds = %118, %112, %106, %103, %95
  %131 = call ptr @xas_find(ptr noundef nonnull %4, i32 noundef -1) #16
  br label %132

132:                                              ; preds = %130, %126
  %133 = phi ptr [ %131, %130 ], [ %122, %126 ]
  %134 = icmp eq ptr %133, null
  br i1 %134, label %135, label %71

135:                                              ; preds = %132, %92, %67
  %136 = phi i32 [ 0, %67 ], [ 15, %92 ], [ %96, %132 ]
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !27
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #16
  %137 = trunc i32 %136 to i8
  store i8 %137, ptr %5, align 4
  %138 = and i32 %136, 255
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %216, label %140

140:                                              ; preds = %135
  %141 = load i32, ptr %5, align 4
  %142 = load i32, ptr %14, align 4
  %143 = load i32, ptr %21, align 4
  %144 = load i32, ptr %22, align 4
  %145 = load i32, ptr %23, align 4
  %146 = load i32, ptr %24, align 4
  %147 = load i32, ptr %25, align 4
  %148 = load i32, ptr %26, align 4
  %149 = load i32, ptr %27, align 4
  %150 = load i32, ptr %28, align 4
  %151 = load i32, ptr %29, align 4
  %152 = load i32, ptr %30, align 4
  %153 = load i32, ptr %31, align 4
  %154 = load i32, ptr %32, align 4
  %155 = load i32, ptr %33, align 4
  %156 = load i32, ptr %34, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #16
  store i32 %141, ptr %2, align 4
  store i32 %142, ptr %35, align 4
  store i32 %143, ptr %36, align 4
  store i32 %144, ptr %37, align 4
  store i32 %145, ptr %38, align 4
  store i32 %146, ptr %39, align 4
  store i32 %147, ptr %40, align 4
  store i32 %148, ptr %41, align 4
  store i32 %149, ptr %42, align 4
  store i32 %150, ptr %43, align 4
  store i32 %151, ptr %44, align 4
  store i32 %152, ptr %45, align 4
  store i32 %153, ptr %46, align 4
  store i32 %154, ptr %47, align 4
  store i32 %155, ptr %48, align 4
  store i32 %156, ptr %49, align 4
  %157 = trunc i32 %141 to i8
  %158 = and i32 %141, 255
  %159 = icmp eq i8 %157, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %140
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #16
  br label %210

161:                                              ; preds = %140
  %162 = load ptr, ptr %64, align 8
  %163 = getelementptr inbounds %struct.address_space, ptr %162, i32 0, i32 3
  br label %164

164:                                              ; preds = %202, %161
  %165 = phi i32 [ 0, %161 ], [ %203, %202 ]
  %166 = phi i32 [ 0, %161 ], [ %204, %202 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  %167 = getelementptr %struct.pagevec, ptr %2, i32 0, i32 2, i32 %166
  %168 = load ptr, ptr %167, align 4
  store ptr %168, ptr %3, align 4
  %169 = ptrtoint ptr %168 to i32
  %170 = and i32 %169, 1
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %164
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  br label %202

173:                                              ; preds = %164
  %174 = getelementptr i32, ptr %6, i32 %166
  %175 = load i32, ptr %174, align 4
  %176 = load i32, ptr %163, align 4
  %177 = call fastcc i32 @shmem_swapin_page(ptr noundef %63, i32 noundef %175, ptr noundef nonnull %3, i32 noundef 2, i32 noundef %176, ptr noundef null, ptr noundef null) #16
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %199

179:                                              ; preds = %173
  %180 = load ptr, ptr %3, align 4
  call void @unlock_page(ptr noundef %180) #16
  %181 = getelementptr inbounds %struct.page, ptr %180, i32 0, i32 1
  %182 = load volatile i32, ptr %181, align 4
  %183 = and i32 %182, 1
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %187, label %185, !prof !14

185:                                              ; preds = %179
  %186 = add i32 %182, -1
  br label %189

187:                                              ; preds = %179
  %188 = ptrtoint ptr %180 to i32
  br label %189

189:                                              ; preds = %187, %185
  %190 = phi i32 [ %186, %185 ], [ %188, %187 ]
  %191 = inttoptr i32 %190 to ptr
  %192 = getelementptr inbounds %struct.page, ptr %191, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !16
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %192) #16, !srcloc !17
  %193 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %192, ptr %192, i32 1, ptr elementtype(i32) %192) #16, !srcloc !18
  %194 = extractvalue { i32, i32 } %193, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %189
  call void @__put_page(ptr noundef %191) #16
  br label %197

197:                                              ; preds = %196, %189
  %198 = add i32 %165, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  br label %202

199:                                              ; preds = %173
  %200 = icmp eq i32 %177, -12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  br i1 %200, label %201, label %202

201:                                              ; preds = %199
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #16
  br label %216

202:                                              ; preds = %199, %197, %172
  %203 = phi i32 [ %165, %172 ], [ %165, %199 ], [ %198, %197 ]
  %204 = add nuw nsw i32 %166, 1
  %205 = icmp eq i32 %204, %158
  br i1 %205, label %206, label %164

206:                                              ; preds = %202
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #16
  %207 = icmp slt i32 %203, 0
  br i1 %207, label %216, label %208

208:                                              ; preds = %206
  %209 = load i8, ptr %5, align 4
  br label %210

210:                                              ; preds = %208, %160
  %211 = phi i8 [ %209, %208 ], [ 0, %160 ]
  %212 = zext i8 %211 to i32
  %213 = add nsw i32 %212, -1
  %214 = getelementptr [15 x i32], ptr %6, i32 0, i32 %213
  %215 = load i32, ptr %214, align 4
  br label %67

216:                                              ; preds = %206, %201, %135
  %217 = phi i32 [ -12, %201 ], [ %203, %206 ], [ 0, %135 ]
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #16
  %218 = call i32 @__cond_resched() #16
  call void @mutex_lock(ptr noundef nonnull @shmem_swaplist_mutex) #16
  %219 = load ptr, ptr %51, align 8
  %220 = load i32, ptr %52, align 8
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %222, label %226

222:                                              ; preds = %216
  %223 = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  %224 = load ptr, ptr %223, align 4
  %225 = getelementptr inbounds %struct.list_head, ptr %219, i32 0, i32 1
  store ptr %224, ptr %225, align 4
  store volatile ptr %219, ptr %224, align 4
  store volatile ptr %51, ptr %51, align 4
  store ptr %51, ptr %223, align 4
  br label %226

226:                                              ; preds = %222, %216
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !16
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %61) #16, !srcloc !17
  %227 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %61, ptr %61, i32 1, ptr elementtype(i32) %61) #16, !srcloc !18
  %228 = extractvalue { i32, i32 } %227, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %230, label %231

230:                                              ; preds = %226
  call void @wake_up_var(ptr noundef %61) #16
  br label %231

231:                                              ; preds = %230, %226
  %232 = icmp eq i32 %217, 0
  br i1 %232, label %233, label %236

233:                                              ; preds = %231, %55
  %234 = phi ptr [ %219, %231 ], [ %56, %55 ]
  %235 = icmp eq ptr %234, @shmem_swaplist
  br i1 %235, label %236, label %50

236:                                              ; preds = %233, %231, %9
  %237 = phi i32 [ 0, %9 ], [ %217, %231 ], [ 0, %233 ]
  call void @mutex_unlock(ptr noundef nonnull @shmem_swaplist_mutex) #16
  br label %238

238:                                              ; preds = %236, %1
  %239 = phi i32 [ %237, %236 ], [ 0, %1 ]
  ret i32 %239
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_var(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @shmem_get_unmapped_area(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = icmp ugt i32 %2, -1090519040
  br i1 %6, label %14, label %7

7:                                                ; preds = %5
  %8 = tail call ptr @llvm.thread.pointer() #16
  %9 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 37
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.anon.15, ptr %10, i32 0, i32 3
  %12 = load ptr, ptr %11, align 8
  %13 = tail call i32 %12(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #16
  br label %14

14:                                               ; preds = %7, %5
  %15 = phi i32 [ %13, %7 ], [ -12, %5 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @shmem_lock(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq i32 %1, 0
  %7 = getelementptr i8, ptr %5, i32 -48
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 8192
  br i1 %6, label %24, label %10

10:                                               ; preds = %3
  %11 = icmp eq i32 %9, 0
  br i1 %11, label %12, label %37

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 13
  %14 = load i64, ptr %13, align 8
  %15 = trunc i64 %14 to i32
  %16 = tail call i32 @user_shm_lock(i32 noundef %15, ptr noundef %2) #16
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %37, label %18

18:                                               ; preds = %12
  %19 = load i32, ptr %7, align 8
  %20 = or i32 %19, 8192
  store i32 %20, ptr %7, align 8
  %21 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 17
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.address_space, ptr %22, i32 0, i32 10
  tail call void @_set_bit(i32 noundef 3, ptr noundef %23) #16
  br label %37

24:                                               ; preds = %3
  %25 = icmp ne i32 %9, 0
  %26 = icmp ne ptr %2, null
  %27 = and i1 %26, %25
  br i1 %27, label %28, label %37

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 13
  %30 = load i64, ptr %29, align 8
  %31 = trunc i64 %30 to i32
  tail call void @user_shm_unlock(i32 noundef %31, ptr noundef nonnull %2) #16
  %32 = load i32, ptr %7, align 8
  %33 = and i32 %32, -8193
  store i32 %33, ptr %7, align 8
  %34 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 17
  %35 = load ptr, ptr %34, align 8
  %36 = getelementptr inbounds %struct.address_space, ptr %35, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %36) #16
  br label %37

37:                                               ; preds = %28, %24, %18, %12, %10
  %38 = phi i32 [ -12, %12 ], [ 0, %10 ], [ 0, %18 ], [ 0, %28 ], [ 0, %24 ]
  ret i32 %38
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @user_shm_lock(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @user_shm_unlock(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fs_param_is_u32(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fs_param_is_enum(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fs_param_is_string(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @shmem_writepage(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.xa_state, align 4
  %4 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8, !prof !14

8:                                                ; preds = %2
  %9 = add i32 %5, -1
  br label %12

10:                                               ; preds = %2
  %11 = ptrtoint ptr %0 to i32
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32 [ %9, %8 ], [ %11, %10 ]
  %14 = inttoptr i32 %13 to ptr
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19, !prof !28

18:                                               ; preds = %12
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/shmem.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1325, 0\0A.popsection", ""() #16, !srcloc !33
  unreachable

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, i32 0, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = load ptr, ptr %21, align 4
  %25 = getelementptr i8, ptr %24, i32 -56
  %26 = getelementptr i8, ptr %24, i32 -48
  %27 = load i32, ptr %26, align 8
  %28 = and i32 %27, 8192
  %29 = icmp eq i32 %28, 0
  %30 = load i32, ptr @total_swap_pages, align 4
  %31 = icmp ne i32 %30, 0
  %32 = select i1 %29, i1 %31, i1 false
  br i1 %32, label %33, label %192

33:                                               ; preds = %19
  %34 = getelementptr inbounds %struct.writeback_control, ptr %1, i32 0, i32 5
  %35 = load i16, ptr %34, align 4
  %36 = and i16 %35, 8
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i1, ptr @shmem_writepage.__already_done, align 1
  br i1 %39, label %192, label %40, !prof !14

40:                                               ; preds = %38
  store i1 true, ptr @shmem_writepage.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1343, i32 noundef 9, ptr noundef null) #16
  br label %192

41:                                               ; preds = %33
  %42 = load volatile i32, ptr %4, align 4
  %43 = and i32 %42, 1
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %47, label %45, !prof !14

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
  %53 = and i32 %52, 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %49
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !15
  br label %88

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.inode, ptr %24, i32 0, i32 47
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %84, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.inode, ptr %24, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %61) #16
  %62 = load ptr, ptr %57, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %81, label %64

64:                                               ; preds = %60
  %65 = load ptr, ptr %62, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %81

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.shmem_falloc, ptr %62, i32 0, i32 1
  %69 = load i32, ptr %68, align 4
  %70 = icmp ult i32 %23, %69
  br i1 %70, label %81, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.shmem_falloc, ptr %62, i32 0, i32 2
  %73 = load i32, ptr %72, align 4
  %74 = icmp ult i32 %23, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.shmem_falloc, ptr %62, i32 0, i32 4
  %77 = load i32, ptr %76, align 4
  %78 = add i32 %77, 1
  store i32 %78, ptr %76, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !20
  %79 = load i16, ptr %61, align 4
  %80 = add i16 %79, 1
  store i16 %80, ptr %61, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !34
  br label %192

81:                                               ; preds = %71, %67, %64, %60
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !20
  %82 = load i16, ptr %61, align 4
  %83 = add i16 %82, 1
  store i16 %83, ptr %61, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !34
  br label %84

84:                                               ; preds = %81, %56
  %85 = load i32, ptr @pgprot_kernel, align 4
  %86 = or i32 %85, 512
  %87 = tail call ptr @__kmap_local_page_prot(ptr noundef %0, i32 noundef %86) #16
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(4096) %87, i8 0, i32 4096, i1 false) #16
  tail call void @kunmap_local_indexed(ptr noundef %87) #16
  tail call void @flush_dcache_page(ptr noundef %0) #16
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #16, !srcloc !25
  tail call void @_set_bit(i32 noundef 2, ptr noundef %0) #16
  br label %88

88:                                               ; preds = %84, %55
  %89 = tail call i32 @get_swap_page(ptr noundef %0) #16
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %192, label %91

91:                                               ; preds = %88
  tail call void @mutex_lock(ptr noundef nonnull @shmem_swaplist_mutex) #16
  %92 = getelementptr i8, ptr %24, i32 -24
  %93 = load volatile ptr, ptr %92, align 4
  %94 = icmp eq ptr %93, %92
  br i1 %94, label %95, label %99

95:                                               ; preds = %91
  %96 = load ptr, ptr @shmem_swaplist, align 4
  %97 = getelementptr inbounds %struct.list_head, ptr %96, i32 0, i32 1
  store ptr %92, ptr %97, align 4
  store ptr %96, ptr %92, align 4
  %98 = getelementptr i8, ptr %24, i32 -20
  store ptr @shmem_swaplist, ptr %98, align 4
  store volatile ptr %92, ptr @shmem_swaplist, align 4
  br label %99

99:                                               ; preds = %95, %91
  %100 = insertvalue [1 x i32] poison, i32 %89, 0
  %101 = tail call i32 @add_to_swap_cache(ptr noundef %0, [1 x i32] %100, i32 noundef 532512, ptr noundef null) #16
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %191

103:                                              ; preds = %99
  tail call void @_raw_spin_lock_irq(ptr noundef %25) #16
  %104 = getelementptr i8, ptr %24, i32 -44
  %105 = load i32, ptr %104, align 4
  %106 = getelementptr i8, ptr %24, i32 -40
  %107 = load i32, ptr %106, align 8
  %108 = getelementptr inbounds %struct.inode, ptr %24, i32 0, i32 9
  %109 = load ptr, ptr %108, align 8
  %110 = getelementptr inbounds %struct.address_space, ptr %109, i32 0, i32 7
  %111 = load i32, ptr %110, align 4
  %112 = add i32 %111, %107
  %113 = sub i32 %105, %112
  %114 = icmp sgt i32 %113, 0
  br i1 %114, label %115, label %140

115:                                              ; preds = %103
  store i32 %112, ptr %104, align 4
  %116 = shl i32 %113, 3
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds %struct.inode, ptr %24, i32 0, i32 21
  %119 = load i64, ptr %118, align 8
  %120 = sub i64 %119, %117
  store i64 %120, ptr %118, align 8
  %121 = getelementptr inbounds %struct.inode, ptr %24, i32 0, i32 8
  %122 = load ptr, ptr %121, align 4
  %123 = getelementptr inbounds %struct.super_block, ptr %122, i32 0, i32 27
  %124 = load ptr, ptr %123, align 4
  %125 = load i32, ptr %124, align 8
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %132, label %127

127:                                              ; preds = %115
  %128 = getelementptr inbounds %struct.shmem_sb_info, ptr %124, i32 0, i32 1
  %129 = zext i32 %113 to i64
  %130 = sub nsw i64 0, %129
  %131 = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef %128, i64 noundef %130, i32 noundef %131) #16
  br label %132

132:                                              ; preds = %127, %115
  %133 = load i32, ptr %26, align 8
  %134 = and i32 %133, 2097152
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %140, label %136

136:                                              ; preds = %132
  %137 = sub nsw i32 0, %113
  %138 = sext i32 %137 to i64
  %139 = load i32, ptr @vm_committed_as_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef nonnull @vm_committed_as, i64 noundef %138, i32 noundef %139) #16
  br label %140

140:                                              ; preds = %136, %132, %103
  %141 = load i32, ptr %106, align 8
  %142 = add i32 %141, 1
  store i32 %142, ptr %106, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !20
  %143 = load i16, ptr %25, align 4
  %144 = add i16 %143, 1
  store i16 %144, ptr %25, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !22
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #16, !srcloc !23
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !24
  tail call void @swap_shmem_alloc([1 x i32] %100) #16
  %145 = icmp slt i32 %89, 0
  br i1 %145, label %146, label %147, !prof !28

146:                                              ; preds = %140
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 54, i32 noundef 9, ptr noundef null) #16
  br label %147

147:                                              ; preds = %146, %140
  %148 = load ptr, ptr %20, align 4
  %149 = getelementptr inbounds %struct.address_space, ptr %148, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %149) #16
  %150 = load i32, ptr %22, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #16
  store ptr %149, ptr %3, align 4
  %151 = getelementptr inbounds %struct.xa_state, ptr %3, i32 0, i32 1
  store i32 %150, ptr %151, align 4
  %152 = getelementptr inbounds %struct.xa_state, ptr %3, i32 0, i32 2
  %153 = getelementptr inbounds %struct.xa_state, ptr %3, i32 0, i32 6
  store i32 0, ptr %152, align 4
  store ptr inttoptr (i32 3 to ptr), ptr %153, align 4
  %154 = getelementptr inbounds %struct.xa_state, ptr %3, i32 0, i32 7
  store ptr null, ptr %154, align 4
  %155 = getelementptr inbounds %struct.xa_state, ptr %3, i32 0, i32 8
  store ptr null, ptr %155, align 4
  %156 = call ptr @xas_load(ptr noundef nonnull %3) #16
  %157 = icmp eq ptr %156, %0
  br i1 %157, label %158, label %163

158:                                              ; preds = %147
  %159 = shl i32 %89, 1
  %160 = or i32 %159, 1
  %161 = inttoptr i32 %160 to ptr
  %162 = call ptr @xas_store(ptr noundef nonnull %3, ptr noundef nonnull %161) #16
  br label %163

163:                                              ; preds = %158, %147
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #16
  store ptr null, ptr %20, align 4
  %164 = getelementptr inbounds %struct.address_space, ptr %148, i32 0, i32 7
  %165 = load i32, ptr %164, align 4
  %166 = add i32 %165, -1
  store i32 %166, ptr %164, align 4
  call void @__mod_node_page_state(ptr noundef nonnull @contig_page_data, i32 noundef 19, i32 noundef -1) #16
  call void @__mod_node_page_state(ptr noundef nonnull @contig_page_data, i32 noundef 23, i32 noundef -1) #16
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !20
  %167 = load i16, ptr %149, align 4
  %168 = add i16 %167, 1
  store i16 %168, ptr %149, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !21
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !22
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #16, !srcloc !23
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !24
  %169 = load volatile i32, ptr %4, align 4
  %170 = and i32 %169, 1
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %174, label %172, !prof !14

172:                                              ; preds = %163
  %173 = add i32 %169, -1
  br label %176

174:                                              ; preds = %163
  %175 = ptrtoint ptr %0 to i32
  br label %176

176:                                              ; preds = %174, %172
  %177 = phi i32 [ %173, %172 ], [ %175, %174 ]
  %178 = inttoptr i32 %177 to ptr
  %179 = getelementptr inbounds %struct.page, ptr %178, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !16
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %179) #16, !srcloc !17
  %180 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %179, ptr %179, i32 1, ptr elementtype(i32) %179) #16, !srcloc !18
  %181 = extractvalue { i32, i32 } %180, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %176
  call void @__put_page(ptr noundef %178) #16
  br label %184

184:                                              ; preds = %183, %176
  br i1 %157, label %186, label %185, !prof !14

185:                                              ; preds = %184
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/shmem.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 780, 0\0A.popsection", ""() #16, !srcloc !35
  unreachable

186:                                              ; preds = %184
  call void @mutex_unlock(ptr noundef nonnull @shmem_swaplist_mutex) #16
  %187 = call zeroext i1 @page_mapped(ptr noundef %0) #16
  br i1 %187, label %188, label %189, !prof !28

188:                                              ; preds = %186
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/shmem.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1407, 0\0A.popsection", ""() #16, !srcloc !36
  unreachable

189:                                              ; preds = %186
  %190 = call i32 @swap_writepage(ptr noundef %0, ptr noundef %1) #16
  br label %199

191:                                              ; preds = %99
  tail call void @mutex_unlock(ptr noundef nonnull @shmem_swaplist_mutex) #16
  tail call void @put_swap_page(ptr noundef %0, [1 x i32] %100) #16
  br label %192

192:                                              ; preds = %191, %88, %75, %40, %38, %19
  %193 = tail call zeroext i1 @set_page_dirty(ptr noundef %0) #16
  %194 = getelementptr inbounds %struct.writeback_control, ptr %1, i32 0, i32 5
  %195 = load i16, ptr %194, align 4
  %196 = and i16 %195, 8
  %197 = icmp eq i16 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %192
  tail call void @unlock_page(ptr noundef %0) #16
  br label %199

199:                                              ; preds = %198, %192, %189
  %200 = phi i32 [ 0, %198 ], [ 0, %189 ], [ 524288, %192 ]
  ret i32 %200
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__set_page_dirty_no_writeback(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @shmem_write_begin(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef writeonly %5, ptr nocapture noundef readnone %6) #0 {
  %8 = load ptr, ptr %1, align 4
  %9 = lshr i64 %2, 12
  %10 = trunc i64 %9 to i32
  %11 = getelementptr i8, ptr %8, i32 -52
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 28
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %27, label %15, !prof !14

15:                                               ; preds = %7
  %16 = and i32 %12, 24
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %15
  %19 = and i32 %12, 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %18
  %22 = zext i32 %3 to i64
  %23 = add i64 %22, %2
  %24 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 13
  %25 = load i64, ptr %24, align 8
  %26 = icmp sgt i64 %23, %25
  br i1 %26, label %33, label %27

27:                                               ; preds = %21, %18, %7
  %28 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 9
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds %struct.address_space, ptr %29, i32 0, i32 3
  %31 = load i32, ptr %30, align 4
  %32 = tail call fastcc i32 @shmem_getpage_gfp(ptr noundef %8, i32 noundef %10, ptr noundef %5, i32 noundef 3, i32 noundef %31, ptr noundef null, ptr noundef null) #16
  br label %33

33:                                               ; preds = %27, %21, %15
  %34 = phi i32 [ -1, %15 ], [ -1, %21 ], [ %32, %27 ]
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @shmem_write_end(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, i64 noundef %2, i32 noundef %3, i32 noundef returned %4, ptr noundef %5, ptr nocapture noundef readnone %6) #0 {
  %8 = load ptr, ptr %1, align 4
  %9 = zext i32 %4 to i64
  %10 = add i64 %9, %2
  %11 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 13
  %12 = load i64, ptr %11, align 8
  %13 = icmp sgt i64 %10, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %7
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !37
  %15 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 22
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, 1
  store i32 %17, ptr %15, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #16, !srcloc !38
  store i64 %10, ptr %11, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #16, !srcloc !39
  %18 = load i32, ptr %15, align 4
  %19 = add i32 %18, 1
  store i32 %19, ptr %15, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !40
  br label %20

20:                                               ; preds = %14, %7
  %21 = getelementptr inbounds %struct.page, ptr %5, i32 0, i32 1
  %22 = load volatile i32, ptr %21, align 4
  %23 = and i32 %22, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25, !prof !14

25:                                               ; preds = %20
  %26 = add i32 %22, -1
  br label %29

27:                                               ; preds = %20
  %28 = ptrtoint ptr %5 to i32
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %26, %25 ], [ %28, %27 ]
  %31 = inttoptr i32 %30 to ptr
  %32 = load volatile i32, ptr %31, align 4
  %33 = and i32 %32, 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %29
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !15
  br label %53

36:                                               ; preds = %29
  %37 = load volatile i32, ptr %21, align 4
  %38 = and i32 %37, 1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40, !prof !14

40:                                               ; preds = %36
  %41 = add i32 %37, -1
  br label %44

42:                                               ; preds = %36
  %43 = ptrtoint ptr %5 to i32
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i32 [ %41, %40 ], [ %43, %42 ]
  %46 = inttoptr i32 %45 to ptr
  %47 = icmp ult i32 %4, 4096
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = trunc i64 %2 to i32
  %50 = and i32 %49, 4095
  %51 = add nuw nsw i32 %50, %4
  tail call void @zero_user_segments(ptr noundef %5, i32 noundef 0, i32 noundef %50, i32 noundef %51, i32 noundef 4096) #16
  br label %52

52:                                               ; preds = %48, %44
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #16, !srcloc !25
  tail call void @_set_bit(i32 noundef 2, ptr noundef %46) #16
  br label %53

53:                                               ; preds = %52, %35
  %54 = tail call zeroext i1 @set_page_dirty(ptr noundef %5) #16
  tail call void @unlock_page(ptr noundef %5) #16
  %55 = load volatile i32, ptr %21, align 4
  %56 = and i32 %55, 1
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %60, label %58, !prof !14

58:                                               ; preds = %53
  %59 = add i32 %55, -1
  br label %62

60:                                               ; preds = %53
  %61 = ptrtoint ptr %5 to i32
  br label %62

62:                                               ; preds = %60, %58
  %63 = phi i32 [ %59, %58 ], [ %61, %60 ]
  %64 = inttoptr i32 %63 to ptr
  %65 = getelementptr inbounds %struct.page, ptr %64, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %65) #16, !srcloc !17
  %66 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %65, ptr %65, i32 1, ptr elementtype(i32) %65) #16, !srcloc !18
  %67 = extractvalue { i32, i32 } %66, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  tail call void @__put_page(ptr noundef %64) #16
  br label %70

70:                                               ; preds = %69, %62
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @migrate_page(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @shmem_error_remove_page(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #4 {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @shmem_init_fs_context(ptr nocapture noundef writeonly %0) #0 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 40) #17
  %4 = icmp eq ptr %3, null
  br i1 %4, label %18, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.shmem_options, ptr %3, i32 0, i32 5
  store i16 1023, ptr %6, align 4
  %7 = getelementptr inbounds %struct.shmem_options, ptr %3, i32 0, i32 3
  %8 = tail call ptr @llvm.thread.pointer() #16
  %9 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 83
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.cred, ptr %10, i32 0, i32 7
  %12 = load i32, ptr %11, align 4
  store i32 %12, ptr %7, align 4
  %13 = getelementptr inbounds %struct.shmem_options, ptr %3, i32 0, i32 4
  %14 = load ptr, ptr %9, align 8
  %15 = getelementptr inbounds %struct.cred, ptr %14, i32 0, i32 8
  %16 = load i32, ptr %15, align 4
  store i32 %16, ptr %13, align 8
  %17 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 3
  store ptr %3, ptr %17, align 4
  store ptr @shmem_fs_context_ops, ptr %0, align 4
  br label %18

18:                                               ; preds = %5, %1
  %19 = phi i32 [ 0, %5 ], [ -12, %1 ]
  ret i32 %19
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @shmem_init() local_unnamed_addr #7 section ".init.text" {
  %1 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.37, i32 noundef 448, i32 noundef 0, i32 noundef 262144, ptr noundef nonnull @shmem_init_inode) #16
  store ptr %1, ptr @shmem_inode_cachep, align 4
  %2 = tail call i32 @register_filesystem(ptr noundef nonnull @shmem_fs_type) #16
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %0
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #18
  br label %13

6:                                                ; preds = %0
  %7 = tail call ptr @kern_mount(ptr noundef nonnull @shmem_fs_type) #16
  store ptr %7, ptr @shm_mnt, align 4
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %17

9:                                                ; preds = %6
  %10 = ptrtoint ptr %7 to i32
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #18
  %12 = tail call i32 @unregister_filesystem(ptr noundef nonnull @shmem_fs_type) #16
  br label %13

13:                                               ; preds = %9, %4
  %14 = phi i32 [ %2, %4 ], [ %10, %9 ]
  %15 = load ptr, ptr @shmem_inode_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %15) #16
  %16 = inttoptr i32 %14 to ptr
  store ptr %16, ptr @shm_mnt, align 4
  br label %17

17:                                               ; preds = %13, %6
  %18 = phi i32 [ %14, %13 ], [ 0, %6 ]
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_filesystem(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kern_mount(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_filesystem(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @shmem_kernel_file_setup(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @shm_mnt, align 4
  %5 = tail call fastcc ptr @__shmem_file_setup(ptr noundef %4, ptr noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef 512)
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @__shmem_file_setup(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %36, label %7

7:                                                ; preds = %5
  %8 = icmp ugt i64 %2, 17592186040320
  br i1 %8, label %36, label %9

9:                                                ; preds = %7
  %10 = and i32 %3, 2097152
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %9
  %13 = tail call ptr @llvm.thread.pointer() #16
  %14 = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 37
  %15 = load ptr, ptr %14, align 4
  %16 = add nuw nsw i64 %2, 4095
  %17 = lshr i64 %16, 12
  %18 = trunc i64 %17 to i32
  %19 = tail call i32 @cap_vm_enough_memory(ptr noundef %15, i32 noundef %18) #16
  %20 = tail call i32 @__vm_enough_memory(ptr noundef %15, i32 noundef %18, i32 noundef %19) #16
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %12, %9
  %23 = getelementptr inbounds %struct.vfsmount, ptr %0, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = tail call fastcc ptr @shmem_get_inode(ptr noundef %24, ptr noundef null, i16 noundef zeroext -32257, i32 noundef 0, i32 noundef %3)
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %28, !prof !28

27:                                               ; preds = %22
  tail call fastcc void @shmem_unacct_size(i32 noundef %3, i64 noundef %2)
  br label %36

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.inode, ptr %25, i32 0, i32 4
  %30 = load i32, ptr %29, align 4
  %31 = or i32 %30, %4
  store i32 %31, ptr %29, align 4
  %32 = getelementptr inbounds %struct.inode, ptr %25, i32 0, i32 13
  store i64 %2, ptr %32, align 8
  tail call void @clear_nlink(ptr noundef nonnull %25) #16
  %33 = tail call ptr @alloc_file_pseudo(ptr noundef nonnull %25, ptr noundef %0, ptr noundef %1, i32 noundef 2, ptr noundef nonnull @shmem_file_operations) #16
  %34 = icmp ugt ptr %33, inttoptr (i32 -4096 to ptr)
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  tail call void @iput(ptr noundef nonnull %25) #16
  br label %36

36:                                               ; preds = %35, %28, %27, %12, %7, %5
  %37 = phi ptr [ inttoptr (i32 -28 to ptr), %27 ], [ %33, %35 ], [ %33, %28 ], [ %0, %5 ], [ inttoptr (i32 -22 to ptr), %7 ], [ inttoptr (i32 -12 to ptr), %12 ]
  ret ptr %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @shmem_file_setup(ptr noundef %0, i64 noundef %1, i32 noundef %2) #0 {
  %4 = load ptr, ptr @shm_mnt, align 4
  %5 = tail call fastcc ptr @__shmem_file_setup(ptr noundef %4, ptr noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef 0)
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @shmem_file_setup_with_mnt(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) #0 {
  %5 = tail call fastcc ptr @__shmem_file_setup(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef 0)
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @shmem_zero_setup(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = load i32, ptr %0, align 4
  %5 = sub i32 %3, %4
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 8
  %8 = load i32, ptr %7, align 4
  %9 = load ptr, ptr @shm_mnt, align 4
  %10 = tail call fastcc ptr @__shmem_file_setup(ptr noundef %9, ptr noundef nonnull @.str.13, i64 noundef %6, i32 noundef %8, i32 noundef 512) #16
  %11 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = ptrtoint ptr %10 to i32
  br label %21

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 14
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  tail call void @fput(ptr noundef nonnull %16) #16
  br label %19

19:                                               ; preds = %18, %14
  store ptr %10, ptr %15, align 4
  %20 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 12
  store ptr @shmem_vm_ops, ptr %20, align 4
  br label %21

21:                                               ; preds = %19, %12
  %22 = phi i32 [ %13, %12 ], [ 0, %19 ]
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @shmem_read_mapping_page_gfp(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  store ptr null, ptr %4, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.address_space, ptr %0, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, @shmem_aops
  br i1 %8, label %10, label %9, !prof !14

9:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/shmem.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 4167, 0\0A.popsection", ""() #16, !srcloc !41
  unreachable

10:                                               ; preds = %3
  %11 = call fastcc i32 @shmem_getpage_gfp(ptr noundef %5, i32 noundef %1, ptr noundef nonnull %4, i32 noundef 2, i32 noundef %2, ptr noundef null, ptr noundef null)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = inttoptr i32 %11 to ptr
  br label %17

15:                                               ; preds = %10
  %16 = load ptr, ptr %4, align 4
  tail call void @unlock_page(ptr noundef %16) #16
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi ptr [ %14, %13 ], [ %16, %15 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  ret ptr %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__vm_enough_memory(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cap_vm_enough_memory(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__percpu_counter_compare(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_counter_add_batch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pagevec_lookup_range(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pagevec_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @find_lock_entries(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @truncate_inode_folio(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @folio_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @folio_batch_remove_exceptionals(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @folio_mark_dirty(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @truncate_inode_partial_folio(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @find_get_entries(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @folio_mapping(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @free_swap_and_cache([1 x i32]) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__xa_cmpxchg(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__filemap_get_folio(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__folio_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @shmem_swapin_page(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef readnone %5, ptr noundef %6) unnamed_addr #0 {
  %8 = alloca %struct.xa_state, align 4
  %9 = alloca %struct.vm_area_struct, align 4
  %10 = alloca %struct.vm_area_struct, align 4
  %11 = alloca %struct.vm_fault, align 4
  %12 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 9
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr i8, ptr %0, i32 -56
  %15 = load ptr, ptr %2, align 4
  %16 = ptrtoint ptr %15 to i32
  %17 = lshr i32 %16, 1
  store ptr null, ptr %2, align 4
  %18 = insertvalue [1 x i32] poison, i32 %17, 0
  %19 = tail call ptr @lookup_swap_cache([1 x i32] %18, ptr noundef null, i32 noundef 0) #16
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %49

21:                                               ; preds = %7
  %22 = icmp eq ptr %6, null
  br i1 %22, label %34, label %23

23:                                               ; preds = %21
  %24 = load i32, ptr %6, align 4
  %25 = or i32 %24, 4
  store i32 %25, ptr %6, align 4
  %26 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !42
  %27 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %28 = inttoptr i32 %27 to ptr
  %29 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %28) #9, !srcloc !43
  %30 = add i32 %29, ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 21) to i32)
  %31 = inttoptr i32 %30 to ptr
  %32 = load i32, ptr %31, align 4
  %33 = add i32 %32, 1
  store i32 %33, ptr %31, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %26) #16, !srcloc !44
  br label %34

34:                                               ; preds = %23, %21
  call void @llvm.lifetime.start.p0(i64 92, ptr nonnull %10) #16
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %11) #16
  %35 = getelementptr inbounds i8, ptr %11, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(48) %35, i8 0, i64 48, i1 false) #16
  store ptr %10, ptr %11, align 4
  %36 = getelementptr inbounds %struct.vm_area_struct, ptr %10, i32 0, i32 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(92) %10, i8 0, i64 92, i1 false) #16
  store ptr @vma_init.dummy_vm_ops, ptr %36, align 4
  %37 = getelementptr inbounds %struct.vm_area_struct, ptr %10, i32 0, i32 10
  store volatile ptr %37, ptr %37, align 4
  %38 = getelementptr inbounds %struct.vm_area_struct, ptr %10, i32 0, i32 10, i32 1
  store ptr %37, ptr %38, align 4
  %39 = getelementptr i8, ptr %0, i32 36
  %40 = load i32, ptr %39, align 4
  %41 = add i32 %40, %1
  %42 = getelementptr inbounds %struct.vm_area_struct, ptr %10, i32 0, i32 13
  store i32 %41, ptr %42, align 4
  %43 = getelementptr inbounds %struct.vm_area_struct, ptr %10, i32 0, i32 15
  store ptr null, ptr %43, align 4
  %44 = call ptr @swap_cluster_readahead([1 x i32] %18, i32 noundef %4, ptr noundef nonnull %11) #16
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %10) #16
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %34
  %47 = or i32 %16, 1
  %48 = inttoptr i32 %47 to ptr
  br label %270

49:                                               ; preds = %34, %7
  %50 = phi ptr [ %44, %34 ], [ %19, %7 ]
  %51 = getelementptr inbounds %struct.page, ptr %50, i32 0, i32 1
  %52 = load volatile i32, ptr %51, align 4
  %53 = and i32 %52, 1
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %57, label %55, !prof !14

55:                                               ; preds = %49
  %56 = add i32 %52, -1
  br label %59

57:                                               ; preds = %49
  %58 = ptrtoint ptr %50 to i32
  br label %59

59:                                               ; preds = %57, %55
  %60 = phi i32 [ %56, %55 ], [ %58, %57 ]
  %61 = inttoptr i32 %60 to ptr
  %62 = load volatile i32, ptr %61, align 4
  %63 = and i32 %62, 1
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %59
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %61) #16, !srcloc !17
  %66 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %61, ptr %61, i32 1, ptr elementtype(i32) %61) #16, !srcloc !30
  %67 = extractvalue { i32, i32, i32 } %66, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !31
  %68 = and i32 %67, 1
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %65, %59
  call void @__folio_lock(ptr noundef %61) #16
  br label %71

71:                                               ; preds = %70, %65
  %72 = load volatile i32, ptr %51, align 4
  %73 = and i32 %72, 1
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %77, label %75, !prof !14

75:                                               ; preds = %71
  %76 = add i32 %72, -1
  br label %79

77:                                               ; preds = %71
  %78 = ptrtoint ptr %50 to i32
  br label %79

79:                                               ; preds = %77, %75
  %80 = phi i32 [ %76, %75 ], [ %78, %77 ]
  %81 = inttoptr i32 %80 to ptr
  %82 = load volatile i32, ptr %81, align 4
  %83 = and i32 %82, 524288
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %279, label %85

85:                                               ; preds = %79
  %86 = load volatile i32, ptr %81, align 4
  %87 = and i32 %86, 1024
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %279, label %89

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.page, ptr %50, i32 0, i32 1, i32 0, i32 3
  %91 = load i32, ptr %90, align 4
  %92 = icmp eq i32 %91, %17
  br i1 %92, label %93, label %279

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.address_space, ptr %13, i32 0, i32 1
  %95 = call ptr @xa_load(ptr noundef %94, i32 noundef %1) #16
  %96 = or i32 %16, 1
  %97 = inttoptr i32 %96 to ptr
  %98 = icmp eq ptr %95, %97
  br i1 %98, label %99, label %279

99:                                               ; preds = %93
  %100 = load volatile i32, ptr %51, align 4
  %101 = and i32 %100, 1
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %105, label %103, !prof !14

103:                                              ; preds = %99
  %104 = add i32 %100, -1
  br label %107

105:                                              ; preds = %99
  %106 = ptrtoint ptr %50 to i32
  br label %107

107:                                              ; preds = %105, %103
  %108 = phi i32 [ %104, %103 ], [ %106, %105 ]
  %109 = inttoptr i32 %108 to ptr
  %110 = load volatile i32, ptr %109, align 4
  %111 = and i32 %110, 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %270, label %113

113:                                              ; preds = %107
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !15
  call void @wait_on_page_writeback(ptr noundef nonnull %50) #16
  %114 = load i32, ptr %50, align 4
  %115 = lshr i32 %114, 30
  %116 = shl i32 %4, 1
  %117 = and i32 %116, 30
  %118 = lshr i32 19988769, %117
  %119 = and i32 %118, 3
  %120 = icmp ugt i32 %115, %119
  br i1 %120, label %121, label %256

121:                                              ; preds = %113
  %122 = load i32, ptr %90, align 4
  %123 = and i32 %122, 67108863
  %124 = call ptr @page_mapping(ptr noundef nonnull %50) #16
  %125 = and i32 %4, -3145729
  call void @llvm.lifetime.start.p0(i64 92, ptr nonnull %9) #16
  %126 = getelementptr inbounds %struct.vm_area_struct, ptr %9, i32 0, i32 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(92) %9, i8 0, i64 92, i1 false) #16
  store ptr @vma_init.dummy_vm_ops, ptr %126, align 4
  %127 = getelementptr inbounds %struct.vm_area_struct, ptr %9, i32 0, i32 10
  store volatile ptr %127, ptr %127, align 4
  %128 = getelementptr inbounds %struct.vm_area_struct, ptr %9, i32 0, i32 10, i32 1
  store ptr %127, ptr %128, align 4
  %129 = getelementptr i8, ptr %0, i32 36
  %130 = load i32, ptr %129, align 4
  %131 = add i32 %130, %1
  %132 = getelementptr inbounds %struct.vm_area_struct, ptr %9, i32 0, i32 13
  store i32 %131, ptr %132, align 4
  %133 = getelementptr inbounds %struct.vm_area_struct, ptr %9, i32 0, i32 15
  store ptr null, ptr %133, align 4
  %134 = call ptr @__alloc_pages(i32 noundef %125, i32 noundef 0, i32 noundef 0, ptr noundef null) #16
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %9) #16
  %135 = icmp eq ptr %134, null
  br i1 %135, label %270, label %136

136:                                              ; preds = %121
  %137 = getelementptr inbounds %struct.page, ptr %134, i32 0, i32 1
  %138 = load volatile i32, ptr %137, align 4
  %139 = and i32 %138, 1
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %143, label %141, !prof !14

141:                                              ; preds = %136
  %142 = add i32 %138, -1
  br label %145

143:                                              ; preds = %136
  %144 = ptrtoint ptr %134 to i32
  br label %145

145:                                              ; preds = %143, %141
  %146 = phi i32 [ %142, %141 ], [ %144, %143 ]
  %147 = inttoptr i32 %146 to ptr
  %148 = getelementptr inbounds %struct.page, ptr %147, i32 0, i32 3
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %148) #16, !srcloc !17
  %149 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %148, ptr %148, i32 1, ptr elementtype(i32) %148) #16, !srcloc !32
  %150 = load i32, ptr @pgprot_kernel, align 4
  %151 = or i32 %150, 512
  %152 = call ptr @__kmap_local_page_prot(ptr noundef nonnull %50, i32 noundef %151) #16
  %153 = load i32, ptr @pgprot_kernel, align 4
  %154 = or i32 %153, 512
  %155 = call ptr @__kmap_local_page_prot(ptr noundef nonnull %134, i32 noundef %154) #16
  call void @copy_page(ptr noundef %155, ptr noundef %152) #16
  call void @kunmap_local_indexed(ptr noundef %155) #16
  call void @kunmap_local_indexed(ptr noundef %152) #16
  call void @flush_dcache_page(ptr noundef nonnull %134) #16
  %156 = load volatile i32, ptr %137, align 4
  %157 = and i32 %156, 1
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %161, label %159, !prof !14

159:                                              ; preds = %145
  %160 = add i32 %156, -1
  br label %163

161:                                              ; preds = %145
  %162 = ptrtoint ptr %134 to i32
  br label %163

163:                                              ; preds = %161, %159
  %164 = phi i32 [ %160, %159 ], [ %162, %161 ]
  %165 = inttoptr i32 %164 to ptr
  %166 = load i32, ptr %165, align 4
  %167 = or i32 %166, 1
  store i32 %167, ptr %165, align 4
  %168 = load volatile i32, ptr %137, align 4
  %169 = and i32 %168, 1
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %173, label %171, !prof !14

171:                                              ; preds = %163
  %172 = add i32 %168, -1
  br label %175

173:                                              ; preds = %163
  %174 = ptrtoint ptr %134 to i32
  br label %175

175:                                              ; preds = %173, %171
  %176 = phi i32 [ %172, %171 ], [ %174, %173 ]
  %177 = inttoptr i32 %176 to ptr
  %178 = load i32, ptr %177, align 4
  %179 = or i32 %178, 524288
  store i32 %179, ptr %177, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #16, !srcloc !25
  call void @_set_bit(i32 noundef 2, ptr noundef nonnull %134) #16
  %180 = getelementptr inbounds %struct.page, ptr %134, i32 0, i32 1, i32 0, i32 3
  store i32 %122, ptr %180, align 4
  %181 = load volatile i32, ptr %137, align 4
  %182 = and i32 %181, 1
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %186, label %184, !prof !14

184:                                              ; preds = %175
  %185 = add i32 %181, -1
  br label %188

186:                                              ; preds = %175
  %187 = ptrtoint ptr %134 to i32
  br label %188

188:                                              ; preds = %186, %184
  %189 = phi i32 [ %185, %184 ], [ %187, %186 ]
  %190 = inttoptr i32 %189 to ptr
  call void @_set_bit(i32 noundef 10, ptr noundef %190) #16
  %191 = getelementptr inbounds %struct.address_space, ptr %124, i32 0, i32 1
  call void @_raw_spin_lock_irq(ptr noundef %191) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #16
  store ptr %191, ptr %8, align 4
  %192 = getelementptr inbounds %struct.xa_state, ptr %8, i32 0, i32 1
  store i32 %123, ptr %192, align 4
  %193 = getelementptr inbounds %struct.xa_state, ptr %8, i32 0, i32 2
  %194 = getelementptr inbounds %struct.xa_state, ptr %8, i32 0, i32 6
  store i32 0, ptr %193, align 4
  store ptr inttoptr (i32 3 to ptr), ptr %194, align 4
  %195 = getelementptr inbounds %struct.xa_state, ptr %8, i32 0, i32 7
  store ptr null, ptr %195, align 4
  %196 = getelementptr inbounds %struct.xa_state, ptr %8, i32 0, i32 8
  store ptr null, ptr %196, align 4
  %197 = call ptr @xas_load(ptr noundef nonnull %8) #16
  %198 = icmp eq ptr %197, %50
  br i1 %198, label %199, label %205

199:                                              ; preds = %188
  %200 = call ptr @xas_store(ptr noundef nonnull %8, ptr noundef nonnull %134) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #16
  %201 = load volatile i32, ptr %51, align 4
  %202 = load volatile i32, ptr %137, align 4
  call void @__mod_node_page_state(ptr noundef nonnull @contig_page_data, i32 noundef 19, i32 noundef 1) #16
  call void @__mod_node_page_state(ptr noundef nonnull @contig_page_data, i32 noundef 19, i32 noundef -1) #16
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !20
  %203 = load i16, ptr %191, align 4
  %204 = add i16 %203, 1
  store i16 %204, ptr %191, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !21
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !22
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #16, !srcloc !23
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !24
  call void @lru_cache_add(ptr noundef nonnull %134) #16
  br label %208

205:                                              ; preds = %188
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #16
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !20
  %206 = load i16, ptr %191, align 4
  %207 = add i16 %206, 1
  store i16 %207, ptr %191, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !21
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !22
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #16, !srcloc !23
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !24
  br label %208

208:                                              ; preds = %205, %199
  %209 = phi ptr [ %134, %199 ], [ %50, %205 ]
  %210 = phi i32 [ 0, %199 ], [ -2, %205 ]
  %211 = phi ptr [ %50, %199 ], [ %134, %205 ]
  %212 = getelementptr inbounds %struct.page, ptr %211, i32 0, i32 1
  %213 = load volatile i32, ptr %212, align 4
  %214 = and i32 %213, 1
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %218, label %216, !prof !14

216:                                              ; preds = %208
  %217 = add i32 %213, -1
  br label %220

218:                                              ; preds = %208
  %219 = ptrtoint ptr %211 to i32
  br label %220

220:                                              ; preds = %218, %216
  %221 = phi i32 [ %217, %216 ], [ %219, %218 ]
  %222 = inttoptr i32 %221 to ptr
  call void @_clear_bit(i32 noundef 10, ptr noundef %222) #16
  %223 = getelementptr inbounds %struct.page, ptr %211, i32 0, i32 1, i32 0, i32 3
  store i32 0, ptr %223, align 4
  call void @unlock_page(ptr noundef nonnull %211) #16
  %224 = load volatile i32, ptr %212, align 4
  %225 = and i32 %224, 1
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %229, label %227, !prof !14

227:                                              ; preds = %220
  %228 = add i32 %224, -1
  br label %231

229:                                              ; preds = %220
  %230 = ptrtoint ptr %211 to i32
  br label %231

231:                                              ; preds = %229, %227
  %232 = phi i32 [ %228, %227 ], [ %230, %229 ]
  %233 = inttoptr i32 %232 to ptr
  %234 = getelementptr inbounds %struct.page, ptr %233, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !16
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %234) #16, !srcloc !17
  %235 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %234, ptr %234, i32 1, ptr elementtype(i32) %234) #16, !srcloc !18
  %236 = extractvalue { i32, i32 } %235, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %238, label %239

238:                                              ; preds = %231
  call void @__put_page(ptr noundef %233) #16
  br label %239

239:                                              ; preds = %238, %231
  %240 = load volatile i32, ptr %212, align 4
  %241 = and i32 %240, 1
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %245, label %243, !prof !14

243:                                              ; preds = %239
  %244 = add i32 %240, -1
  br label %247

245:                                              ; preds = %239
  %246 = ptrtoint ptr %211 to i32
  br label %247

247:                                              ; preds = %245, %243
  %248 = phi i32 [ %244, %243 ], [ %246, %245 ]
  %249 = inttoptr i32 %248 to ptr
  %250 = getelementptr inbounds %struct.page, ptr %249, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !16
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %250) #16, !srcloc !17
  %251 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %250, ptr %250, i32 1, ptr elementtype(i32) %250) #16, !srcloc !18
  %252 = extractvalue { i32, i32 } %251, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %254, label %255

254:                                              ; preds = %247
  call void @__put_page(ptr noundef %249) #16
  br label %255

255:                                              ; preds = %254, %247
  br i1 %198, label %256, label %270

256:                                              ; preds = %255, %113
  %257 = phi ptr [ %209, %255 ], [ %50, %113 ]
  %258 = call fastcc i32 @shmem_add_to_page_cache(ptr noundef nonnull %257, ptr noundef %13, i32 noundef %1, ptr noundef nonnull %95, i32 noundef %4)
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %260, label %270

260:                                              ; preds = %256
  call void @_raw_spin_lock_irq(ptr noundef %14) #16
  %261 = getelementptr i8, ptr %0, i32 -40
  %262 = load i32, ptr %261, align 8
  %263 = add i32 %262, -1
  store i32 %263, ptr %261, align 8
  call fastcc void @shmem_recalc_inode(ptr noundef %0)
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !20
  %264 = load i16, ptr %14, align 4
  %265 = add i16 %264, 1
  store i16 %265, ptr %14, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !21
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !22
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #16, !srcloc !23
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !24
  %266 = icmp eq i32 %3, 3
  br i1 %266, label %267, label %268

267:                                              ; preds = %260
  call void @mark_page_accessed(ptr noundef nonnull %257) #16
  br label %268

268:                                              ; preds = %267, %260
  call void @delete_from_swap_cache(ptr noundef nonnull %257) #16
  %269 = call zeroext i1 @set_page_dirty(ptr noundef nonnull %257) #16
  call void @swap_free([1 x i32] %18) #16
  store ptr %257, ptr %2, align 4
  br label %298

270:                                              ; preds = %256, %255, %121, %107, %46
  %271 = phi ptr [ %48, %46 ], [ %97, %121 ], [ %97, %107 ], [ %97, %255 ], [ %97, %256 ]
  %272 = phi ptr [ null, %46 ], [ %50, %121 ], [ %50, %107 ], [ %209, %255 ], [ %257, %256 ]
  %273 = phi i32 [ -12, %46 ], [ -12, %121 ], [ -5, %107 ], [ %210, %255 ], [ %258, %256 ]
  %274 = getelementptr inbounds %struct.address_space, ptr %13, i32 0, i32 1
  %275 = call ptr @xa_load(ptr noundef %274, i32 noundef %1) #16
  %276 = icmp eq ptr %275, %271
  %277 = select i1 %276, i32 %273, i32 -17
  %278 = icmp eq ptr %272, null
  br i1 %278, label %298, label %279

279:                                              ; preds = %270, %93, %89, %85, %79
  %280 = phi i32 [ %277, %270 ], [ -17, %93 ], [ -17, %89 ], [ -17, %85 ], [ -17, %79 ]
  %281 = phi ptr [ %272, %270 ], [ %50, %93 ], [ %50, %89 ], [ %50, %85 ], [ %50, %79 ]
  call void @unlock_page(ptr noundef nonnull %281) #16
  %282 = getelementptr inbounds %struct.page, ptr %281, i32 0, i32 1
  %283 = load volatile i32, ptr %282, align 4
  %284 = and i32 %283, 1
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %288, label %286, !prof !14

286:                                              ; preds = %279
  %287 = add i32 %283, -1
  br label %290

288:                                              ; preds = %279
  %289 = ptrtoint ptr %281 to i32
  br label %290

290:                                              ; preds = %288, %286
  %291 = phi i32 [ %287, %286 ], [ %289, %288 ]
  %292 = inttoptr i32 %291 to ptr
  %293 = getelementptr inbounds %struct.page, ptr %292, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !16
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %293) #16, !srcloc !17
  %294 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %293, ptr %293, i32 1, ptr elementtype(i32) %293) #16, !srcloc !18
  %295 = extractvalue { i32, i32 } %294, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %297, label %298

297:                                              ; preds = %290
  call void @__put_page(ptr noundef %292) #16
  br label %298

298:                                              ; preds = %297, %290, %270, %268
  %299 = phi i32 [ 0, %268 ], [ %277, %270 ], [ %280, %290 ], [ %280, %297 ]
  ret i32 %299
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lookup_swap_cache([1 x i32], ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_on_page_writeback(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @shmem_add_to_page_cache(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef readnone %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca %struct.xa_state, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #16
  %7 = getelementptr inbounds %struct.address_space, ptr %1, i32 0, i32 1
  store ptr %7, ptr %6, align 4
  %8 = getelementptr inbounds %struct.xa_state, ptr %6, i32 0, i32 1
  %9 = load volatile i32, ptr %0, align 4
  %10 = and i32 %9, 65536
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %5
  %13 = getelementptr %struct.page, ptr %0, i32 1, i32 1
  %14 = getelementptr inbounds %struct.anon.11, ptr %13, i32 0, i32 2
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i32
  br label %17

17:                                               ; preds = %12, %5
  %18 = phi i32 [ %16, %12 ], [ 0, %5 ]
  %19 = lshr i32 %2, %18
  %20 = load volatile i32, ptr %0, align 4
  %21 = and i32 %20, 65536
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %17
  %24 = getelementptr %struct.page, ptr %0, i32 1, i32 1
  %25 = getelementptr inbounds %struct.anon.11, ptr %24, i32 0, i32 2
  %26 = load i8, ptr %25, align 1
  %27 = zext i8 %26 to i32
  br label %28

28:                                               ; preds = %23, %17
  %29 = phi i32 [ %27, %23 ], [ 0, %17 ]
  %30 = shl i32 %19, %29
  store i32 %30, ptr %8, align 4
  %31 = getelementptr inbounds %struct.xa_state, ptr %6, i32 0, i32 2
  %32 = load volatile i32, ptr %0, align 4
  %33 = and i32 %32, 65536
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %28
  %36 = getelementptr %struct.page, ptr %0, i32 1, i32 1
  %37 = getelementptr inbounds %struct.anon.11, ptr %36, i32 0, i32 2
  %38 = load i8, ptr %37, align 1
  br label %39

39:                                               ; preds = %35, %28
  %40 = phi i8 [ %38, %35 ], [ 0, %28 ]
  %41 = load volatile i32, ptr %0, align 4
  %42 = and i32 %41, 65536
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %39
  %45 = getelementptr %struct.page, ptr %0, i32 1, i32 1
  %46 = getelementptr inbounds %struct.anon.11, ptr %45, i32 0, i32 2
  %47 = load i8, ptr %46, align 1
  %48 = urem i8 %47, 6
  br label %49

49:                                               ; preds = %44, %39
  %50 = phi i8 [ %48, %44 ], [ 0, %39 ]
  %51 = sub i8 %40, %50
  store i8 %51, ptr %31, align 4
  %52 = getelementptr inbounds %struct.xa_state, ptr %6, i32 0, i32 3
  %53 = load volatile i32, ptr %0, align 4
  %54 = and i32 %53, 65536
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %49
  %57 = getelementptr %struct.page, ptr %0, i32 1, i32 1
  %58 = getelementptr inbounds %struct.anon.11, ptr %57, i32 0, i32 2
  %59 = load i8, ptr %58, align 1
  %60 = urem i8 %59, 6
  %61 = zext i8 %60 to i32
  br label %62

62:                                               ; preds = %56, %49
  %63 = phi i32 [ %61, %56 ], [ 0, %49 ]
  %64 = shl nsw i32 -1, %63
  %65 = trunc i32 %64 to i8
  %66 = xor i8 %65, -1
  store i8 %66, ptr %52, align 1
  %67 = getelementptr inbounds %struct.xa_state, ptr %6, i32 0, i32 4
  store i8 0, ptr %67, align 2
  %68 = getelementptr inbounds %struct.xa_state, ptr %6, i32 0, i32 5
  store i8 0, ptr %68, align 1
  %69 = getelementptr inbounds %struct.xa_state, ptr %6, i32 0, i32 6
  store ptr inttoptr (i32 3 to ptr), ptr %69, align 4
  %70 = getelementptr inbounds %struct.xa_state, ptr %6, i32 0, i32 7
  store ptr null, ptr %70, align 4
  %71 = getelementptr inbounds %struct.xa_state, ptr %6, i32 0, i32 8
  store ptr null, ptr %71, align 4
  %72 = load volatile i32, ptr %0, align 4
  %73 = and i32 %72, 65536
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %62
  %76 = getelementptr %struct.page, ptr %0, i32 1, i32 1, i32 0, i32 2
  %77 = load i32, ptr %76, align 4
  br label %78

78:                                               ; preds = %75, %62
  %79 = phi i32 [ %77, %75 ], [ 1, %62 ]
  %80 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %80) #16, !srcloc !17
  %81 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %80, ptr %80, i32 %79, ptr elementtype(i32) %80) #16, !srcloc !32
  %82 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, i32 0, i32 1
  store ptr %1, ptr %82, align 4
  %83 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, i32 0, i32 2
  store i32 %2, ptr %83, align 4
  %84 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %85 = load volatile i32, ptr %84, align 4
  %86 = and i32 %85, 1
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %90, label %88, !prof !14

88:                                               ; preds = %78
  %89 = add i32 %85, -1
  br label %92

90:                                               ; preds = %78
  %91 = ptrtoint ptr %0 to i32
  br label %92

92:                                               ; preds = %90, %88
  %93 = phi i32 [ %89, %88 ], [ %91, %90 ]
  %94 = inttoptr i32 %93 to ptr
  %95 = load volatile i32, ptr %94, align 4
  %96 = and i32 %95, 524288
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %102, label %98

98:                                               ; preds = %92
  %99 = load volatile i32, ptr %94, align 4
  %100 = and i32 %99, 1024
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %98, %92
  %103 = load volatile i32, ptr %84, align 4
  br label %104

104:                                              ; preds = %102, %98
  %105 = icmp eq ptr %3, null
  %106 = getelementptr inbounds %struct.address_space, ptr %1, i32 0, i32 7
  br label %107

107:                                              ; preds = %135, %104
  %108 = phi ptr [ %136, %135 ], [ %7, %104 ]
  call void @_raw_spin_lock_irq(ptr noundef %108) #16
  %109 = call ptr @xas_find_conflict(ptr noundef nonnull %6) #16
  %110 = icmp eq ptr %109, %3
  br i1 %110, label %112, label %111

111:                                              ; preds = %107
  store ptr inttoptr (i32 -66 to ptr), ptr %69, align 4
  br label %130

112:                                              ; preds = %107
  br i1 %105, label %117, label %113

113:                                              ; preds = %112
  %114 = call ptr @xas_find_conflict(ptr noundef nonnull %6) #16
  %115 = icmp eq ptr %114, null
  br i1 %115, label %117, label %116

116:                                              ; preds = %113
  store ptr inttoptr (i32 -66 to ptr), ptr %69, align 4
  br label %130

117:                                              ; preds = %113, %112
  %118 = call ptr @xas_store(ptr noundef nonnull %6, ptr noundef %0) #16
  %119 = load ptr, ptr %69, align 4
  %120 = ptrtoint ptr %119 to i32
  %121 = and i32 %120, 3
  %122 = icmp ne i32 %121, 2
  %123 = icmp ult ptr %119, inttoptr (i32 -16378 to ptr)
  %124 = icmp ult ptr %119, inttoptr (i32 4 to ptr)
  %125 = or i1 %123, %122
  %126 = or i1 %124, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %117
  %128 = load i32, ptr %106, align 4
  %129 = add i32 %128, %79
  store i32 %129, ptr %106, align 4
  call void @__mod_node_page_state(ptr noundef nonnull @contig_page_data, i32 noundef 19, i32 noundef %79) #16
  call void @__mod_node_page_state(ptr noundef nonnull @contig_page_data, i32 noundef 23, i32 noundef %79) #16
  br label %130

130:                                              ; preds = %127, %117, %116, %111
  %131 = load ptr, ptr %6, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !20
  %132 = load i16, ptr %131, align 4
  %133 = add i16 %132, 1
  store i16 %133, ptr %131, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !21
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !22
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #16, !srcloc !23
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !24
  %134 = call zeroext i1 @xas_nomem(ptr noundef nonnull %6, i32 noundef %4) #16
  br i1 %134, label %135, label %137

135:                                              ; preds = %130
  %136 = load ptr, ptr %6, align 4
  br label %107

137:                                              ; preds = %130
  %138 = load ptr, ptr %69, align 4
  %139 = ptrtoint ptr %138 to i32
  %140 = and i32 %139, 3
  %141 = icmp eq i32 %140, 2
  %142 = icmp uge ptr %138, inttoptr (i32 -16378 to ptr)
  %143 = and i1 %142, %141
  %144 = ashr i32 %139, 2
  %145 = select i1 %143, i32 %144, i32 0
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %149, label %147

147:                                              ; preds = %137
  store ptr null, ptr %82, align 4
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %80) #16, !srcloc !17
  %148 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %80, ptr %80, i32 %79, ptr elementtype(i32) %80) #16, !srcloc !45
  br label %149

149:                                              ; preds = %147, %137
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #16
  ret i32 %145
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_page_accessed(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @delete_from_swap_cache(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_page_dirty(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @swap_free([1 x i32]) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @swap_cluster_readahead([1 x i32], i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_load(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_mapping(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lru_cache_add(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @copy_page(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xas_load(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xas_store(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mod_node_page_state(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xas_find_conflict(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xas_nomem(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pagecache_get_page(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @delete_from_page_cache(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_swap_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_to_swap_cache(ptr noundef, [1 x i32], i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @swap_shmem_alloc([1 x i32]) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @page_mapped(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @swap_writepage(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_swap_page(ptr noundef, [1 x i32]) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @zero_user_segments(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @shmem_fault(ptr nocapture noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wait_queue_entry, align 4
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.vm_area_struct, ptr %4, i32 0, i32 14
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.file, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 9
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.address_space, ptr %10, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #16
  store i32 512, ptr %2, align 4
  %13 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 47
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %58, label %16, !prof !14

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %17) #16
  %18 = load ptr, ptr %13, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %53, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %18, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %53, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.anon.18, ptr %0, i32 0, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.shmem_falloc, ptr %18, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = icmp ult i32 %25, %27
  br i1 %28, label %53, label %29

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.shmem_falloc, ptr %18, i32 0, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = icmp ult i32 %25, %31
  br i1 %32, label %33, label %53

33:                                               ; preds = %29
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #16
  %34 = getelementptr inbounds %struct.wait_queue_entry, ptr %3, i32 0, i32 1
  %35 = tail call ptr @llvm.thread.pointer() #16
  store i32 0, ptr %3, align 4
  store ptr %35, ptr %34, align 4
  %36 = getelementptr inbounds %struct.wait_queue_entry, ptr %3, i32 0, i32 2
  store ptr @synchronous_wake_function, ptr %36, align 4
  %37 = getelementptr inbounds %struct.wait_queue_entry, ptr %3, i32 0, i32 3
  store ptr %37, ptr %37, align 4
  %38 = getelementptr inbounds %struct.wait_queue_entry, ptr %3, i32 0, i32 3, i32 1
  store ptr %37, ptr %38, align 4
  %39 = call fastcc ptr @maybe_unlock_mmap_for_io(ptr noundef %0)
  %40 = icmp eq ptr %39, null
  br i1 %40, label %47, label %41

41:                                               ; preds = %33
  store i32 1024, ptr %2, align 4
  %42 = load ptr, ptr %18, align 4
  call void @prepare_to_wait(ptr noundef %42, ptr noundef nonnull %3, i32 noundef 2) #16
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !20
  %43 = load i16, ptr %17, align 4
  %44 = add i16 %43, 1
  store i16 %44, ptr %17, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !21
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !22
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !34
  call void @schedule() #16
  call void @_raw_spin_lock(ptr noundef %17) #16
  call void @finish_wait(ptr noundef %42, ptr noundef nonnull %3) #16
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !20
  %45 = load i16, ptr %17, align 4
  %46 = add i16 %45, 1
  store i16 %46, ptr %17, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !21
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !22
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !34
  call void @fput(ptr noundef nonnull %39) #16
  br label %56

47:                                               ; preds = %33
  %48 = load ptr, ptr %18, align 4
  call void @prepare_to_wait(ptr noundef %48, ptr noundef nonnull %3, i32 noundef 2) #16
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !20
  %49 = load i16, ptr %17, align 4
  %50 = add i16 %49, 1
  store i16 %50, ptr %17, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !21
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !22
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !34
  call void @schedule() #16
  call void @_raw_spin_lock(ptr noundef %17) #16
  call void @finish_wait(ptr noundef %48, ptr noundef nonnull %3) #16
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !20
  %51 = load i16, ptr %17, align 4
  %52 = add i16 %51, 1
  store i16 %52, ptr %17, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !21
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !22
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !34
  br label %56

53:                                               ; preds = %29, %23, %20, %16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !20
  %54 = load i16, ptr %17, align 4
  %55 = add i16 %54, 1
  store i16 %55, ptr %17, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !34
  br label %58

56:                                               ; preds = %47, %41
  %57 = phi i32 [ 1024, %41 ], [ 256, %47 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #16
  br label %69

58:                                               ; preds = %53, %1
  %59 = getelementptr inbounds %struct.anon.18, ptr %0, i32 0, i32 2
  %60 = load i32, ptr %59, align 4
  %61 = getelementptr inbounds %struct.vm_fault, ptr %0, i32 0, i32 6
  %62 = call fastcc i32 @shmem_getpage_gfp(ptr noundef %8, i32 noundef %60, ptr noundef %61, i32 noundef 2, i32 noundef %12, ptr noundef %4, ptr noundef nonnull %2)
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %58
  %65 = icmp eq i32 %62, -12
  %66 = select i1 %65, i32 1, i32 2
  br label %69

67:                                               ; preds = %58
  %68 = load i32, ptr %2, align 4
  br label %69

69:                                               ; preds = %67, %64, %56
  %70 = phi i32 [ %66, %64 ], [ %68, %67 ], [ %57, %56 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #16
  ret i32 %70
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_map_pages(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @synchronous_wake_function(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = tail call i32 @default_wake_function(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #16
  %6 = getelementptr inbounds %struct.wait_queue_entry, ptr %0, i32 0, i32 3
  %7 = getelementptr inbounds %struct.wait_queue_entry, ptr %0, i32 0, i32 3, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  store ptr %8, ptr %10, align 4
  store volatile ptr %9, ptr %8, align 4
  store volatile ptr %6, ptr %6, align 4
  store ptr %6, ptr %7, align 4
  ret i32 %5
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @maybe_unlock_mmap_for_io(ptr nocapture noundef readonly %0) unnamed_addr #11 {
  %2 = getelementptr inbounds %struct.vm_fault, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 44
  %5 = icmp eq i32 %4, 4
  br i1 %5, label %6, label %20

6:                                                ; preds = %1
  %7 = load ptr, ptr %0, align 4
  %8 = getelementptr inbounds %struct.vm_area_struct, ptr %7, i32 0, i32 14
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.file, ptr %9, i32 0, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %10) #16, !srcloc !17
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %10, ptr %10, i32 1, ptr elementtype(i32) %10) #16, !srcloc !32
  %12 = load ptr, ptr %0, align 4
  %13 = getelementptr inbounds %struct.vm_area_struct, ptr %12, i32 0, i32 6
  %14 = load ptr, ptr %13, align 4
  %15 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %6
  tail call void @__mmap_lock_do_trace_released(ptr noundef %14, i1 noundef zeroext false) #16
  br label %18

18:                                               ; preds = %17, %6
  %19 = getelementptr inbounds %struct.anon.15, ptr %14, i32 0, i32 15
  tail call void @up_read(ptr noundef %19) #16
  br label %20

20:                                               ; preds = %18, %1
  %21 = phi ptr [ %9, %18 ], [ null, %1 ]
  ret ptr %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @prepare_to_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_released(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @shmem_free_fc(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @kfree(ptr noundef nonnull %3) #16
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @shmem_parse_one(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.fs_parse_result, align 8
  %4 = alloca ptr, align 4
  %5 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i32 16, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  store ptr null, ptr %4, align 4, !annotation !9
  %7 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 9
  %8 = call i32 @__fs_parse(ptr noundef %7, ptr noundef nonnull @shmem_fs_parameters, ptr noundef %1, ptr noundef nonnull %3) #16
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %108, label %10

10:                                               ; preds = %2
  switch i32 %8, label %108 [
    i32 6, label %11
    i32 4, label %41
    i32 5, label %52
    i32 2, label %64
    i32 7, label %70
    i32 0, label %75
    i32 1, label %80
    i32 3, label %98
    i32 8, label %89
    i32 9, label %94
  ]

11:                                               ; preds = %10
  %12 = getelementptr inbounds %struct.fs_parameter, ptr %1, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = call i64 @memparse(ptr noundef %13, ptr noundef nonnull %4) #16
  %15 = load ptr, ptr %4, align 4
  %16 = load i8, ptr %15, align 1
  %17 = icmp eq i8 %16, 37
  br i1 %17, label %18, label %31

18:                                               ; preds = %11
  %19 = shl i64 %14, 12
  %20 = load volatile i32, ptr @_totalram_pages, align 4
  %21 = zext i32 %20 to i64
  %22 = mul i64 %19, %21
  %23 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %22, i32 0) #19, !srcloc !46
  %24 = extractvalue { i64, i32 } %23, 0
  %25 = extractvalue { i64, i32 } %23, 1
  %26 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %22, i64 %24, i32 %25) #19, !srcloc !47
  %27 = extractvalue { i64, i32 } %26, 0
  %28 = lshr i64 %27, 6
  %29 = getelementptr i8, ptr %15, i32 1
  store ptr %29, ptr %4, align 4
  %30 = load i8, ptr %29, align 1
  br label %31

31:                                               ; preds = %18, %11
  %32 = phi i8 [ %30, %18 ], [ %16, %11 ]
  %33 = phi i64 [ %28, %18 ], [ %14, %11 ]
  %34 = icmp eq i8 %32, 0
  br i1 %34, label %35, label %103

35:                                               ; preds = %31
  %36 = add i64 %33, 4095
  %37 = lshr i64 %36, 12
  store i64 %37, ptr %6, align 8
  %38 = getelementptr inbounds %struct.shmem_options, ptr %6, i32 0, i32 8
  %39 = load i32, ptr %38, align 4
  %40 = or i32 %39, 1
  store i32 %40, ptr %38, align 4
  br label %108

41:                                               ; preds = %10
  %42 = getelementptr inbounds %struct.fs_parameter, ptr %1, i32 0, i32 2
  %43 = load ptr, ptr %42, align 4
  %44 = call i64 @memparse(ptr noundef %43, ptr noundef nonnull %4) #16
  store i64 %44, ptr %6, align 8
  %45 = load ptr, ptr %4, align 4
  %46 = load i8, ptr %45, align 1
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %103

48:                                               ; preds = %41
  %49 = getelementptr inbounds %struct.shmem_options, ptr %6, i32 0, i32 8
  %50 = load i32, ptr %49, align 4
  %51 = or i32 %50, 1
  store i32 %51, ptr %49, align 4
  br label %108

52:                                               ; preds = %10
  %53 = getelementptr inbounds %struct.fs_parameter, ptr %1, i32 0, i32 2
  %54 = load ptr, ptr %53, align 4
  %55 = call i64 @memparse(ptr noundef %54, ptr noundef nonnull %4) #16
  %56 = getelementptr inbounds %struct.shmem_options, ptr %6, i32 0, i32 1
  store i64 %55, ptr %56, align 8
  %57 = load ptr, ptr %4, align 4
  %58 = load i8, ptr %57, align 1
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %103

60:                                               ; preds = %52
  %61 = getelementptr inbounds %struct.shmem_options, ptr %6, i32 0, i32 8
  %62 = load i32, ptr %61, align 4
  %63 = or i32 %62, 2
  store i32 %63, ptr %61, align 4
  br label %108

64:                                               ; preds = %10
  %65 = getelementptr inbounds %struct.fs_parse_result, ptr %3, i32 0, i32 1
  %66 = load i32, ptr %65, align 8
  %67 = trunc i32 %66 to i16
  %68 = and i16 %67, 4095
  %69 = getelementptr inbounds %struct.shmem_options, ptr %6, i32 0, i32 5
  store i16 %68, ptr %69, align 4
  br label %108

70:                                               ; preds = %10
  %71 = getelementptr inbounds %struct.shmem_options, ptr %6, i32 0, i32 3
  %72 = getelementptr inbounds %struct.fs_parse_result, ptr %3, i32 0, i32 1
  %73 = load i32, ptr %72, align 8
  store i32 %73, ptr %71, align 4
  %74 = icmp eq i32 %73, -1
  br i1 %74, label %103, label %108

75:                                               ; preds = %10
  %76 = getelementptr inbounds %struct.shmem_options, ptr %6, i32 0, i32 4
  %77 = getelementptr inbounds %struct.fs_parse_result, ptr %3, i32 0, i32 1
  %78 = load i32, ptr %77, align 8
  store i32 %78, ptr %76, align 8
  %79 = icmp eq i32 %78, -1
  br i1 %79, label %103, label %108

80:                                               ; preds = %10
  %81 = getelementptr inbounds %struct.fs_parse_result, ptr %3, i32 0, i32 1
  %82 = load i32, ptr %81, align 8
  %83 = getelementptr inbounds %struct.shmem_options, ptr %6, i32 0, i32 7
  store i32 %82, ptr %83, align 8
  %84 = icmp eq i32 %82, 0
  br i1 %84, label %85, label %98

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.shmem_options, ptr %6, i32 0, i32 8
  %87 = load i32, ptr %86, align 4
  %88 = or i32 %87, 4
  store i32 %88, ptr %86, align 4
  br label %108

89:                                               ; preds = %10
  %90 = getelementptr inbounds %struct.shmem_options, ptr %6, i32 0, i32 6
  store i8 0, ptr %90, align 2
  %91 = getelementptr inbounds %struct.shmem_options, ptr %6, i32 0, i32 8
  %92 = load i32, ptr %91, align 4
  %93 = or i32 %92, 8
  store i32 %93, ptr %91, align 4
  br label %108

94:                                               ; preds = %10
  %95 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 9, i32 1
  %96 = load ptr, ptr %95, align 4
  %97 = load ptr, ptr %7, align 4
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %96, ptr noundef %97, i8 noundef zeroext 101, ptr noundef nonnull @.str.20) #16
  br label %108

98:                                               ; preds = %80, %10
  %99 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 9, i32 1
  %100 = load ptr, ptr %99, align 4
  %101 = load ptr, ptr %7, align 4
  %102 = load ptr, ptr %1, align 4
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %100, ptr noundef %101, i8 noundef zeroext 101, ptr noundef nonnull @.str.21, ptr noundef %102) #16
  br label %108

103:                                              ; preds = %75, %70, %52, %41, %31
  %104 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 9, i32 1
  %105 = load ptr, ptr %104, align 4
  %106 = load ptr, ptr %7, align 4
  %107 = load ptr, ptr %1, align 4
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %105, ptr noundef %106, i8 noundef zeroext 101, ptr noundef nonnull @.str.22, ptr noundef %107) #16
  br label %108

108:                                              ; preds = %103, %98, %94, %89, %85, %75, %70, %64, %60, %48, %35, %10, %2
  %109 = phi i32 [ -22, %94 ], [ -22, %98 ], [ -22, %103 ], [ %8, %2 ], [ 0, %75 ], [ 0, %70 ], [ 0, %10 ], [ 0, %89 ], [ 0, %85 ], [ 0, %64 ], [ 0, %60 ], [ 0, %48 ], [ 0, %35 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #16
  ret i32 %109
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @shmem_parse_options(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %34, label %4

4:                                                ; preds = %32, %2
  %5 = phi ptr [ %18, %32 ], [ %1, %2 ]
  br label %6

6:                                                ; preds = %10, %4
  %7 = phi ptr [ %11, %10 ], [ %5, %4 ]
  %8 = tail call ptr @strchr(ptr noundef %7, i32 noundef 44)
  %9 = icmp eq ptr %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %6
  %11 = getelementptr i8, ptr %8, i32 1
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = add nsw i32 %13, -58
  %15 = icmp ult i32 %14, -10
  br i1 %15, label %16, label %6

16:                                               ; preds = %10
  store i8 0, ptr %8, align 1
  br label %17

17:                                               ; preds = %16, %6
  %18 = phi ptr [ %11, %16 ], [ null, %6 ]
  %19 = load i8, ptr %5, align 1
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %32, label %21

21:                                               ; preds = %17
  %22 = tail call ptr @strchr(ptr noundef nonnull %5, i32 noundef 61)
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = getelementptr i8, ptr %22, i32 1
  store i8 0, ptr %22, align 1
  %26 = tail call i32 @strlen(ptr noundef %25)
  br label %27

27:                                               ; preds = %24, %21
  %28 = phi ptr [ %25, %24 ], [ null, %21 ]
  %29 = phi i32 [ %26, %24 ], [ 0, %21 ]
  %30 = tail call i32 @vfs_parse_fs_string(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %28, i32 noundef %29) #16
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %27, %17
  %33 = icmp eq ptr %18, null
  br i1 %33, label %34, label %4

34:                                               ; preds = %32, %27, %2
  %35 = phi i32 [ 0, %2 ], [ %30, %27 ], [ 0, %32 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @shmem_get_tree(ptr noundef %0) #0 {
  %2 = tail call i32 @get_tree_nodev(ptr noundef %0, ptr noundef nonnull @shmem_fill_super) #16
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @shmem_reconfigure(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 27
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.shmem_sb_info, ptr %9, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %10) #16
  %11 = getelementptr inbounds %struct.shmem_sb_info, ptr %9, i32 0, i32 2
  %12 = load i32, ptr %11, align 8
  %13 = getelementptr inbounds %struct.shmem_sb_info, ptr %9, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = sub i32 %12, %14
  %16 = getelementptr inbounds %struct.shmem_options, ptr %3, i32 0, i32 8
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %33, label %20

20:                                               ; preds = %1
  %21 = load i64, ptr %3, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %33, label %23

23:                                               ; preds = %20
  %24 = load i32, ptr %9, align 8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %93, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.shmem_sb_info, ptr %9, i32 0, i32 1
  %28 = load i32, ptr @percpu_counter_batch, align 4
  %29 = tail call i32 @__percpu_counter_compare(ptr noundef %27, i64 noundef %21, i32 noundef %28) #16
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %93, label %31

31:                                               ; preds = %26
  %32 = load i32, ptr %16, align 4
  br label %33

33:                                               ; preds = %31, %20, %1
  %34 = phi i32 [ %32, %31 ], [ %17, %20 ], [ %17, %1 ]
  %35 = and i32 %34, 2
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %47, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.shmem_options, ptr %3, i32 0, i32 1
  %39 = load i64, ptr %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %37
  %42 = load i32, ptr %11, align 8
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %93, label %44

44:                                               ; preds = %41
  %45 = zext i32 %15 to i64
  %46 = icmp ult i64 %39, %45
  br i1 %46, label %93, label %47

47:                                               ; preds = %44, %37, %33
  %48 = and i32 %34, 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.shmem_options, ptr %3, i32 0, i32 7
  %52 = load i32, ptr %51, align 8
  %53 = trunc i32 %52 to i8
  %54 = getelementptr inbounds %struct.shmem_sb_info, ptr %9, i32 0, i32 6
  store i8 %53, ptr %54, align 2
  %55 = load i32, ptr %16, align 4
  br label %56

56:                                               ; preds = %50, %47
  %57 = phi i32 [ %55, %50 ], [ %34, %47 ]
  %58 = and i32 %57, 8
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.shmem_options, ptr %3, i32 0, i32 6
  %62 = load i8, ptr %61, align 2, !range !48
  %63 = getelementptr inbounds %struct.shmem_sb_info, ptr %9, i32 0, i32 9
  store i8 %62, ptr %63, align 8
  %64 = load i32, ptr %16, align 4
  br label %65

65:                                               ; preds = %60, %56
  %66 = phi i32 [ %64, %60 ], [ %57, %56 ]
  %67 = and i32 %66, 1
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %65
  %70 = load i64, ptr %3, align 8
  %71 = trunc i64 %70 to i32
  store i32 %71, ptr %9, align 8
  %72 = load i32, ptr %16, align 4
  br label %73

73:                                               ; preds = %69, %65
  %74 = phi i32 [ %72, %69 ], [ %66, %65 ]
  %75 = and i32 %74, 2
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %84, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.shmem_options, ptr %3, i32 0, i32 1
  %79 = load i64, ptr %78, align 8
  %80 = trunc i64 %79 to i32
  store i32 %80, ptr %11, align 8
  %81 = load i64, ptr %78, align 8
  %82 = trunc i64 %81 to i32
  %83 = sub i32 %82, %15
  store i32 %83, ptr %13, align 4
  br label %84

84:                                               ; preds = %77, %73
  %85 = getelementptr inbounds %struct.shmem_options, ptr %3, i32 0, i32 2
  %86 = load ptr, ptr %85, align 8
  %87 = icmp eq ptr %86, null
  br i1 %87, label %90, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.shmem_sb_info, ptr %9, i32 0, i32 12
  store ptr %86, ptr %89, align 4
  store ptr null, ptr %85, align 8
  br label %90

90:                                               ; preds = %88, %84
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !20
  %91 = load i16, ptr %10, align 4
  %92 = add i16 %91, 1
  store i16 %92, ptr %10, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !34
  br label %101

93:                                               ; preds = %44, %41, %26, %23
  %94 = phi ptr [ @.str.31, %23 ], [ @.str.32, %26 ], [ @.str.33, %41 ], [ @.str.34, %44 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !20
  %95 = load i16, ptr %10, align 4
  %96 = add i16 %95, 1
  store i16 %96, ptr %10, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !34
  %97 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 9
  %98 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 9, i32 1
  %99 = load ptr, ptr %98, align 4
  %100 = load ptr, ptr %97, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %99, ptr noundef %100, i8 noundef zeroext 101, ptr noundef nonnull @.str.36, ptr noundef nonnull %94) #16
  br label %101

101:                                              ; preds = %93, %90
  %102 = phi i32 [ -22, %93 ], [ 0, %90 ]
  ret i32 %102
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @memparse(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @logfc(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fs_parse(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_parse_fs_string(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_tree_nodev(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @shmem_fill_super(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.fs_context, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 96) #17
  %7 = icmp eq ptr %6, null
  br i1 %7, label %113, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  store ptr %6, ptr %9, align 4
  %10 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 10
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 4194304
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %39

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.shmem_options, ptr %4, i32 0, i32 8
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = load volatile i32, ptr @_totalram_pages, align 4
  %21 = lshr i32 %20, 1
  %22 = zext i32 %21 to i64
  store i64 %22, ptr %4, align 8
  br label %23

23:                                               ; preds = %19, %14
  %24 = and i32 %16, 2
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %23
  %27 = load volatile i32, ptr @_totalram_pages, align 4
  %28 = load volatile i32, ptr @_totalhigh_pages, align 4
  %29 = sub i32 %27, %28
  %30 = lshr i32 %27, 1
  %31 = tail call i32 @llvm.umin.i32(i32 %29, i32 %30) #16
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.shmem_options, ptr %4, i32 0, i32 1
  store i64 %32, ptr %33, align 8
  br label %34

34:                                               ; preds = %26, %23
  %35 = and i32 %16, 8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.shmem_options, ptr %4, i32 0, i32 6
  store i8 0, ptr %38, align 2
  br label %41

39:                                               ; preds = %8
  %40 = or i32 %11, -2147483648
  store i32 %40, ptr %10, align 4
  br label %41

41:                                               ; preds = %39, %37, %34
  %42 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 9
  store ptr @shmem_export_ops, ptr %42, align 16
  %43 = load i32, ptr %10, align 4
  %44 = or i32 %43, 268435456
  store i32 %44, ptr %10, align 4
  %45 = load i64, ptr %4, align 8
  %46 = trunc i64 %45 to i32
  store i32 %46, ptr %6, align 8
  %47 = getelementptr inbounds %struct.shmem_options, ptr %4, i32 0, i32 1
  %48 = load i64, ptr %47, align 8
  %49 = trunc i64 %48 to i32
  %50 = getelementptr inbounds %struct.shmem_sb_info, ptr %6, i32 0, i32 2
  store i32 %49, ptr %50, align 8
  %51 = getelementptr inbounds %struct.shmem_sb_info, ptr %6, i32 0, i32 3
  store i32 %49, ptr %51, align 4
  %52 = and i32 %43, 4194304
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %41
  %55 = tail call noalias ptr @__alloc_percpu(i32 noundef 4, i32 noundef 4) #20
  %56 = getelementptr inbounds %struct.shmem_sb_info, ptr %6, i32 0, i32 11
  store ptr %55, ptr %56, align 8
  %57 = icmp eq ptr %55, null
  br i1 %57, label %108, label %58

58:                                               ; preds = %54, %41
  %59 = getelementptr inbounds %struct.shmem_sb_info, ptr %6, i32 0, i32 7
  %60 = getelementptr inbounds %struct.shmem_options, ptr %4, i32 0, i32 3
  %61 = load i32, ptr %60, align 4
  store i32 %61, ptr %59, align 8
  %62 = getelementptr inbounds %struct.shmem_sb_info, ptr %6, i32 0, i32 8
  %63 = getelementptr inbounds %struct.shmem_options, ptr %4, i32 0, i32 4
  %64 = load i32, ptr %63, align 8
  store i32 %64, ptr %62, align 4
  %65 = getelementptr inbounds %struct.shmem_options, ptr %4, i32 0, i32 6
  %66 = load i8, ptr %65, align 2, !range !48
  %67 = getelementptr inbounds %struct.shmem_sb_info, ptr %6, i32 0, i32 9
  store i8 %66, ptr %67, align 8
  %68 = getelementptr inbounds %struct.shmem_options, ptr %4, i32 0, i32 5
  %69 = load i16, ptr %68, align 4
  %70 = getelementptr inbounds %struct.shmem_sb_info, ptr %6, i32 0, i32 5
  store i16 %69, ptr %70, align 4
  %71 = getelementptr inbounds %struct.shmem_options, ptr %4, i32 0, i32 7
  %72 = load i32, ptr %71, align 8
  %73 = trunc i32 %72 to i8
  %74 = getelementptr inbounds %struct.shmem_sb_info, ptr %6, i32 0, i32 6
  store i8 %73, ptr %74, align 2
  %75 = getelementptr inbounds %struct.shmem_options, ptr %4, i32 0, i32 2
  %76 = load ptr, ptr %75, align 8
  %77 = getelementptr inbounds %struct.shmem_sb_info, ptr %6, i32 0, i32 12
  store ptr %76, ptr %77, align 4
  store ptr null, ptr %75, align 8
  %78 = getelementptr inbounds %struct.shmem_sb_info, ptr %6, i32 0, i32 4
  store i32 0, ptr %78, align 8
  %79 = getelementptr inbounds %struct.shmem_sb_info, ptr %6, i32 0, i32 1
  %80 = tail call i32 @__percpu_counter_init(ptr noundef %79, i64 noundef 0, i32 noundef 3264, ptr noundef nonnull @shmem_fill_super.__key) #16
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %108

82:                                               ; preds = %58
  %83 = getelementptr inbounds %struct.shmem_sb_info, ptr %6, i32 0, i32 13
  store i32 0, ptr %83, align 8
  %84 = getelementptr inbounds %struct.shmem_sb_info, ptr %6, i32 0, i32 14
  store volatile ptr %84, ptr %84, align 4
  %85 = getelementptr inbounds %struct.shmem_sb_info, ptr %6, i32 0, i32 14, i32 1
  store ptr %84, ptr %85, align 8
  %86 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 4
  store i64 17592186040320, ptr %86, align 8
  %87 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 3
  store i32 4096, ptr %87, align 16
  %88 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 2
  store i8 12, ptr %88, align 4
  %89 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 12
  store i32 16914836, ptr %89, align 4
  %90 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 6
  store ptr @shmem_ops, ptr %90, align 4
  %91 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 28
  store i32 1, ptr %91, align 32
  %92 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 17
  store ptr @shmem_xattr_handlers, ptr %92, align 4
  %93 = load i32, ptr %10, align 4
  %94 = or i32 %93, 65536
  store i32 %94, ptr %10, align 4
  %95 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 34
  tail call void @uuid_gen(ptr noundef %95) #16
  %96 = load i16, ptr %70, align 4
  %97 = or i16 %96, 16384
  %98 = tail call fastcc ptr @shmem_get_inode(ptr noundef %0, ptr noundef null, i16 noundef zeroext %97, i32 noundef 0, i32 noundef 2097152)
  %99 = icmp eq ptr %98, null
  br i1 %99, label %108, label %100

100:                                              ; preds = %82
  %101 = getelementptr inbounds %struct.inode, ptr %98, i32 0, i32 2
  %102 = load i32, ptr %59, align 8
  store i32 %102, ptr %101, align 4
  %103 = getelementptr inbounds %struct.inode, ptr %98, i32 0, i32 3
  %104 = load i32, ptr %62, align 4
  store i32 %104, ptr %103, align 8
  %105 = tail call ptr @d_make_root(ptr noundef nonnull %98) #16
  %106 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 13
  store ptr %105, ptr %106, align 64
  %107 = icmp eq ptr %105, null
  br i1 %107, label %108, label %113

108:                                              ; preds = %100, %82, %58, %54
  %109 = load ptr, ptr %9, align 4
  %110 = getelementptr inbounds %struct.shmem_sb_info, ptr %109, i32 0, i32 11
  %111 = load ptr, ptr %110, align 8
  tail call void @free_percpu(ptr noundef %111) #16
  %112 = getelementptr inbounds %struct.shmem_sb_info, ptr %109, i32 0, i32 1
  tail call void @percpu_counter_destroy(ptr noundef %112) #16
  tail call void @kfree(ptr noundef %109) #16
  store ptr null, ptr %9, align 4
  br label %113

113:                                              ; preds = %108, %100, %2
  %114 = phi i32 [ -12, %108 ], [ -12, %2 ], [ 0, %100 ]
  ret i32 %114
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__percpu_counter_init(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @uuid_gen(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @shmem_get_inode(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca %struct.timespec64, align 8
  %7 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 10
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 4194304
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %35

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.shmem_sb_info, ptr %8, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %14) #16
  %15 = getelementptr inbounds %struct.shmem_sb_info, ptr %8, i32 0, i32 2
  %16 = load i32, ptr %15, align 8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.shmem_sb_info, ptr %8, i32 0, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %61, label %22

22:                                               ; preds = %18
  %23 = add i32 %20, -1
  store i32 %23, ptr %19, align 4
  br label %24

24:                                               ; preds = %22, %13
  %25 = getelementptr inbounds %struct.shmem_sb_info, ptr %8, i32 0, i32 10
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, 1
  %28 = icmp eq i32 %26, 0
  br i1 %28, label %29, label %30, !prof !28

29:                                               ; preds = %24
  br label %30

30:                                               ; preds = %29, %24
  %31 = phi i32 [ 2, %29 ], [ %27, %24 ]
  %32 = phi i32 [ 1, %29 ], [ %26, %24 ]
  store i32 %31, ptr %25, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !20
  %33 = load i16, ptr %14, align 4
  %34 = add i16 %33, 1
  store i16 %34, ptr %14, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !34
  br label %64

35:                                               ; preds = %5
  %36 = getelementptr inbounds %struct.shmem_sb_info, ptr %8, i32 0, i32 11
  %37 = load ptr, ptr %36, align 8
  %38 = ptrtoint ptr %37 to i32
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !49
  %39 = tail call ptr @llvm.thread.pointer() #16
  %40 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 2
  %41 = load i32, ptr %40, align 8
  %42 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %41
  %43 = load i32, ptr %42, align 4
  %44 = add i32 %43, %38
  %45 = inttoptr i32 %44 to ptr
  %46 = load i32, ptr %45, align 4
  %47 = and i32 %46, 1023
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %58, !prof !28

49:                                               ; preds = %35
  %50 = getelementptr inbounds %struct.shmem_sb_info, ptr %8, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %50) #16
  %51 = getelementptr inbounds %struct.shmem_sb_info, ptr %8, i32 0, i32 10
  %52 = load i32, ptr %51, align 4
  %53 = add i32 %52, 1024
  store i32 %53, ptr %51, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !20
  %54 = load i16, ptr %50, align 4
  %55 = add i16 %54, 1
  store i16 %55, ptr %50, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !34
  %56 = icmp eq i32 %52, 0
  br i1 %56, label %57, label %58, !prof !28

57:                                               ; preds = %49
  br label %58

58:                                               ; preds = %57, %49, %35
  %59 = phi i32 [ 1, %57 ], [ %52, %49 ], [ %46, %35 ]
  %60 = add i32 %59, 1
  store i32 %60, ptr %45, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !50
  br label %64

61:                                               ; preds = %18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !20
  %62 = load i16, ptr %14, align 4
  %63 = add i16 %62, 1
  store i16 %63, ptr %14, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !34
  br label %119

64:                                               ; preds = %58, %30
  %65 = phi i32 [ %59, %58 ], [ %32, %30 ]
  %66 = tail call ptr @new_inode(ptr noundef %0) #16
  %67 = icmp eq ptr %66, null
  br i1 %67, label %107, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.inode, ptr %66, i32 0, i32 10
  store i32 %65, ptr %69, align 4
  tail call void @inode_init_owner(ptr noundef nonnull @init_user_ns, ptr noundef nonnull %66, ptr noundef %1, i16 noundef zeroext %2) #16
  %70 = getelementptr inbounds %struct.inode, ptr %66, i32 0, i32 21
  store i64 0, ptr %70, align 8
  %71 = getelementptr inbounds %struct.inode, ptr %66, i32 0, i32 14
  %72 = getelementptr inbounds %struct.inode, ptr %66, i32 0, i32 15
  %73 = getelementptr inbounds %struct.inode, ptr %66, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #16
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %6, ptr noundef nonnull %66) #16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %73, ptr noundef nonnull align 8 dereferenceable(16) %6, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %72, ptr noundef align 8 dereferenceable(16) %73, i32 16, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %71, ptr noundef align 8 dereferenceable(16) %73, i32 16, i1 false)
  %74 = call i32 @prandom_u32() #16
  %75 = getelementptr inbounds %struct.inode, ptr %66, i32 0, i32 44
  store i32 %74, ptr %75, align 8
  %76 = getelementptr i8, ptr %66, i32 -56
  %77 = getelementptr i8, ptr %66, i32 -4
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(24) %76, i8 0, i64 24, i1 false)
  store volatile i32 0, ptr %77, align 4
  %78 = getelementptr i8, ptr %66, i32 -52
  store i32 1, ptr %78, align 4
  %79 = and i32 %4, 2097152
  %80 = getelementptr i8, ptr %66, i32 -48
  store i32 %79, ptr %80, align 8
  %81 = getelementptr i8, ptr %66, i32 -32
  store volatile ptr %81, ptr %81, align 4
  %82 = getelementptr i8, ptr %66, i32 -28
  store ptr %81, ptr %82, align 4
  %83 = getelementptr i8, ptr %66, i32 -24
  store volatile ptr %83, ptr %83, align 4
  %84 = getelementptr i8, ptr %66, i32 -20
  store ptr %83, ptr %84, align 4
  %85 = getelementptr i8, ptr %66, i32 -16
  store volatile ptr %85, ptr %85, align 4
  %86 = getelementptr i8, ptr %66, i32 -12
  store ptr %85, ptr %86, align 4
  %87 = getelementptr i8, ptr %66, i32 -8
  store i32 0, ptr %87, align 4
  %88 = getelementptr inbounds %struct.inode, ptr %66, i32 0, i32 5
  store ptr null, ptr %88, align 8
  %89 = getelementptr inbounds %struct.inode, ptr %66, i32 0, i32 6
  store ptr null, ptr %89, align 4
  %90 = getelementptr inbounds %struct.inode, ptr %66, i32 0, i32 9
  %91 = load ptr, ptr %90, align 8
  %92 = getelementptr inbounds %struct.address_space, ptr %91, i32 0, i32 10
  %93 = load i32, ptr %92, align 4
  %94 = or i32 %93, 64
  store i32 %94, ptr %92, align 4
  %95 = and i16 %2, -4096
  switch i16 %95, label %96 [
    i16 -32768, label %98
    i16 16384, label %103
    i16 -24576, label %119
  ]

96:                                               ; preds = %68
  %97 = getelementptr inbounds %struct.inode, ptr %66, i32 0, i32 7
  store ptr @shmem_special_inode_operations, ptr %97, align 8
  call void @init_special_inode(ptr noundef nonnull %66, i16 noundef zeroext %2, i32 noundef %3) #16
  br label %119

98:                                               ; preds = %68
  %99 = load ptr, ptr %90, align 8
  %100 = getelementptr inbounds %struct.address_space, ptr %99, i32 0, i32 9
  store ptr @shmem_aops, ptr %100, align 4
  %101 = getelementptr inbounds %struct.inode, ptr %66, i32 0, i32 7
  store ptr @shmem_inode_operations, ptr %101, align 8
  %102 = getelementptr inbounds %struct.inode, ptr %66, i32 0, i32 39
  store ptr @shmem_file_operations, ptr %102, align 8
  br label %119

103:                                              ; preds = %68
  call void @inc_nlink(ptr noundef nonnull %66) #16
  %104 = getelementptr inbounds %struct.inode, ptr %66, i32 0, i32 13
  store i64 40, ptr %104, align 8
  %105 = getelementptr inbounds %struct.inode, ptr %66, i32 0, i32 7
  store ptr @shmem_dir_inode_operations, ptr %105, align 8
  %106 = getelementptr inbounds %struct.inode, ptr %66, i32 0, i32 39
  store ptr @simple_dir_operations, ptr %106, align 8
  br label %119

107:                                              ; preds = %64
  %108 = load ptr, ptr %7, align 4
  %109 = getelementptr inbounds %struct.shmem_sb_info, ptr %108, i32 0, i32 2
  %110 = load i32, ptr %109, align 8
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %119, label %112

112:                                              ; preds = %107
  %113 = getelementptr inbounds %struct.shmem_sb_info, ptr %108, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %113) #16
  %114 = getelementptr inbounds %struct.shmem_sb_info, ptr %108, i32 0, i32 3
  %115 = load i32, ptr %114, align 4
  %116 = add i32 %115, 1
  store i32 %116, ptr %114, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !20
  %117 = load i16, ptr %113, align 4
  %118 = add i16 %117, 1
  store i16 %118, ptr %113, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !34
  br label %119

119:                                              ; preds = %112, %107, %103, %98, %96, %68, %61
  %120 = phi ptr [ null, %61 ], [ %66, %68 ], [ %66, %103 ], [ %66, %98 ], [ %66, %96 ], [ null, %107 ], [ null, %112 ]
  ret ptr %120
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_make_root(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @shmem_put_super(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.shmem_sb_info, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  tail call void @free_percpu(ptr noundef %5) #16
  %6 = getelementptr inbounds %struct.shmem_sb_info, ptr %3, i32 0, i32 1
  tail call void @percpu_counter_destroy(ptr noundef %6) #16
  tail call void @kfree(ptr noundef %3) #16
  store ptr null, ptr %2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @shmem_encode_fh(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = load i32, ptr %2, align 4
  %6 = icmp slt i32 %5, 3
  br i1 %6, label %30, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 27, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %23

11:                                               ; preds = %7
  tail call void @_raw_spin_lock(ptr noundef nonnull @shmem_encode_fh.lock) #16
  %12 = load ptr, ptr %8, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 10
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 44
  %18 = load i32, ptr %17, align 8
  %19 = add i32 %18, %16
  tail call void @__insert_inode_hash(ptr noundef %0, i32 noundef %19) #16
  br label %20

20:                                               ; preds = %14, %11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !20
  %21 = load i16, ptr @shmem_encode_fh.lock, align 4
  %22 = add i16 %21, 1
  store i16 %22, ptr @shmem_encode_fh.lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !34
  br label %23

23:                                               ; preds = %20, %7
  %24 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 44
  %25 = load i32, ptr %24, align 8
  store i32 %25, ptr %1, align 4
  %26 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 10
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr i32, ptr %1, i32 1
  store i32 %27, ptr %28, align 4
  %29 = getelementptr i32, ptr %1, i32 2
  store i32 0, ptr %29, align 4
  br label %30

30:                                               ; preds = %23, %4
  %31 = phi i32 [ 1, %23 ], [ 255, %4 ]
  store i32 3, ptr %2, align 4
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @shmem_fh_to_dentry(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = icmp slt i32 %2, 3
  br i1 %5, label %20, label %6

6:                                                ; preds = %4
  %7 = getelementptr [0 x i32], ptr %1, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = load i32, ptr %1, align 4
  %10 = add i32 %9, %8
  %11 = tail call ptr @ilookup5(ptr noundef %0, i32 noundef %10, ptr noundef nonnull @shmem_match, ptr noundef %1) #16
  %12 = icmp eq ptr %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %6
  %14 = tail call ptr @d_find_alias(ptr noundef nonnull %11) #16
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = tail call ptr @d_find_any_alias(ptr noundef nonnull %11) #16
  br label %18

18:                                               ; preds = %16, %13
  %19 = phi ptr [ %17, %16 ], [ %14, %13 ]
  tail call void @iput(ptr noundef nonnull %11) #16
  br label %20

20:                                               ; preds = %18, %6, %4
  %21 = phi ptr [ null, %4 ], [ %19, %18 ], [ null, %6 ]
  ret ptr %21
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal nonnull ptr @shmem_get_parent(ptr nocapture noundef readnone %0) #4 {
  ret ptr inttoptr (i32 -116 to ptr)
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__insert_inode_hash(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ilookup5(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @shmem_match(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr i32, ptr %1, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = zext i32 %4 to i64
  %6 = shl nuw i64 %5, 32
  %7 = getelementptr i32, ptr %1, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = zext i32 %8 to i64
  %10 = or i64 %6, %9
  %11 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 10
  %12 = load i32, ptr %11, align 4
  %13 = zext i32 %12 to i64
  %14 = icmp eq i64 %10, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load i32, ptr %1, align 4
  %17 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 44
  %18 = load i32, ptr %17, align 8
  %19 = icmp eq i32 %16, %18
  %20 = zext i1 %19 to i32
  br label %21

21:                                               ; preds = %15, %2
  %22 = phi i32 [ 0, %2 ], [ %20, %15 ]
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_find_alias(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_find_any_alias(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal noalias ptr @shmem_alloc_inode(ptr nocapture noundef readnone %0) #0 {
  %2 = load ptr, ptr @shmem_inode_cachep, align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %2, i32 noundef 3264) #16
  %4 = icmp eq ptr %3, null
  %5 = getelementptr inbounds %struct.shmem_inode_info, ptr %3, i32 0, i32 11
  %6 = select i1 %4, ptr null, ptr %5
  ret ptr %6
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal void @shmem_destroy_inode(ptr nocapture noundef %0) #1 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @shmem_free_in_core_inode(ptr noundef %0) #0 {
  %2 = load i16, ptr %0, align 8
  %3 = and i16 %2, -4096
  %4 = icmp eq i16 %3, -24576
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 43
  %7 = load ptr, ptr %6, align 4
  tail call void @kfree(ptr noundef %7) #16
  br label %8

8:                                                ; preds = %5, %1
  %9 = load ptr, ptr @shmem_inode_cachep, align 4
  %10 = getelementptr i8, ptr %0, i32 -56
  tail call void @kmem_cache_free(ptr noundef %9, ptr noundef %10) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_delete_inode(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @shmem_evict_inode(ptr noundef %0) #0 {
  %2 = alloca %struct.timespec64, align 8
  %3 = alloca %struct.wait_bit_queue_entry, align 4
  %4 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 27
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 9
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.address_space, ptr %9, i32 0, i32 9
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, @shmem_aops
  br i1 %12, label %13, label %78

13:                                               ; preds = %1
  %14 = getelementptr i8, ptr %0, i32 -48
  %15 = load i32, ptr %14, align 8
  %16 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 13
  %17 = and i32 %15, 2097152
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %13
  %20 = load i64, ptr %16, align 8
  %21 = add i64 %20, 4095
  %22 = lshr i64 %21, 12
  %23 = trunc i64 %22 to i32
  %24 = sub i32 0, %23
  %25 = sext i32 %24 to i64
  %26 = load i32, ptr @vm_committed_as_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef nonnull @vm_committed_as, i64 noundef %25, i32 noundef %26) #16
  br label %27

27:                                               ; preds = %19, %13
  store i64 0, ptr %16, align 8
  tail call fastcc void @shmem_undo_range(ptr noundef %0, i64 noundef 0, i64 noundef -1, i1 noundef zeroext false) #16
  %28 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 16
  %29 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #16
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %2, ptr noundef %0) #16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %29, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 16, i1 false) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %28, ptr noundef align 8 dereferenceable(16) %29, i32 16, i1 false) #16
  %30 = getelementptr i8, ptr %0, i32 -32
  %31 = load volatile ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, %30
  br i1 %32, label %47, label %33

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.shmem_sb_info, ptr %7, i32 0, i32 13
  call void @_raw_spin_lock(ptr noundef %34) #16
  %35 = load volatile ptr, ptr %30, align 4
  %36 = icmp eq ptr %35, %30
  br i1 %36, label %44, label %37

37:                                               ; preds = %33
  %38 = getelementptr i8, ptr %0, i32 -28
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  store ptr %39, ptr %40, align 4
  store volatile ptr %35, ptr %39, align 4
  store volatile ptr %30, ptr %30, align 4
  store ptr %30, ptr %38, align 4
  %41 = getelementptr inbounds %struct.shmem_sb_info, ptr %7, i32 0, i32 15
  %42 = load i32, ptr %41, align 4
  %43 = add i32 %42, -1
  store i32 %43, ptr %41, align 4
  br label %44

44:                                               ; preds = %37, %33
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !20
  %45 = load i16, ptr %34, align 4
  %46 = add i16 %45, 1
  store i16 %46, ptr %34, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !21
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !22
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !34
  br label %47

47:                                               ; preds = %44, %27
  %48 = getelementptr i8, ptr %0, i32 -24
  %49 = load volatile ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, %48
  br i1 %50, label %78, label %51

51:                                               ; preds = %47
  %52 = getelementptr i8, ptr %0, i32 -4
  %53 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %3, i32 0, i32 1
  %54 = getelementptr i8, ptr %0, i32 -20
  br label %55

55:                                               ; preds = %75, %51
  %56 = load volatile i32, ptr %52, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %68, label %58

58:                                               ; preds = %55
  %59 = call ptr @__var_waitqueue(ptr noundef %52) #16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %3, i8 0, i32 32, i1 false), !annotation !9
  call void @init_wait_var_entry(ptr noundef nonnull %3, ptr noundef %52, i32 noundef 0) #16
  %60 = call i32 @prepare_to_wait_event(ptr noundef %59, ptr noundef %53, i32 noundef 2) #16
  %61 = load volatile i32, ptr %52, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %63, %58
  call void @schedule() #16
  %64 = call i32 @prepare_to_wait_event(ptr noundef %59, ptr noundef %53, i32 noundef 2) #16
  %65 = load volatile i32, ptr %52, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %63

67:                                               ; preds = %63, %58
  call void @finish_wait(ptr noundef %59, ptr noundef %53) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  br label %68

68:                                               ; preds = %67, %55
  call void @mutex_lock(ptr noundef nonnull @shmem_swaplist_mutex) #16
  %69 = load volatile i32, ptr %52, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = load ptr, ptr %54, align 4
  %73 = load ptr, ptr %48, align 4
  %74 = getelementptr inbounds %struct.list_head, ptr %73, i32 0, i32 1
  store ptr %72, ptr %74, align 4
  store volatile ptr %73, ptr %72, align 4
  store volatile ptr %48, ptr %48, align 4
  store ptr %48, ptr %54, align 4
  br label %75

75:                                               ; preds = %71, %68
  call void @mutex_unlock(ptr noundef nonnull @shmem_swaplist_mutex) #16
  %76 = load volatile ptr, ptr %48, align 4
  %77 = icmp eq ptr %76, %48
  br i1 %77, label %78, label %55

78:                                               ; preds = %75, %47, %1
  %79 = getelementptr i8, ptr %0, i32 -16
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, %79
  br i1 %81, label %88, label %82

82:                                               ; preds = %82, %78
  %83 = phi ptr [ %84, %82 ], [ %80, %78 ]
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr inbounds %struct.simple_xattr, ptr %83, i32 0, i32 1
  %86 = load ptr, ptr %85, align 4
  call void @kfree(ptr noundef %86) #16
  call void @kvfree(ptr noundef %83) #16
  %87 = icmp eq ptr %84, %79
  br i1 %87, label %88, label %82

88:                                               ; preds = %82, %78
  %89 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 21
  %90 = load i64, ptr %89, align 8
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %93, label %92, !prof !14

92:                                               ; preds = %88
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1146, i32 noundef 9, ptr noundef null) #16
  br label %93

93:                                               ; preds = %92, %88
  %94 = load ptr, ptr %4, align 4
  %95 = getelementptr inbounds %struct.super_block, ptr %94, i32 0, i32 27
  %96 = load ptr, ptr %95, align 4
  %97 = getelementptr inbounds %struct.shmem_sb_info, ptr %96, i32 0, i32 2
  %98 = load i32, ptr %97, align 8
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %107, label %100

100:                                              ; preds = %93
  %101 = getelementptr inbounds %struct.shmem_sb_info, ptr %96, i32 0, i32 4
  call void @_raw_spin_lock(ptr noundef %101) #16
  %102 = getelementptr inbounds %struct.shmem_sb_info, ptr %96, i32 0, i32 3
  %103 = load i32, ptr %102, align 4
  %104 = add i32 %103, 1
  store i32 %104, ptr %102, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !20
  %105 = load i16, ptr %101, align 4
  %106 = add i16 %105, 1
  store i16 %106, ptr %101, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !21
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !22
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !34
  br label %107

107:                                              ; preds = %100, %93
  call void @clear_inode(ptr noundef %0) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @shmem_statfs(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 27
  %6 = load ptr, ptr %5, align 4
  store i32 16914836, ptr %1, align 8
  %7 = getelementptr inbounds %struct.kstatfs, ptr %1, i32 0, i32 1
  store i32 4096, ptr %7, align 4
  %8 = getelementptr inbounds %struct.kstatfs, ptr %1, i32 0, i32 8
  store i32 255, ptr %8, align 8
  %9 = load i32, ptr %6, align 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %21, label %11

11:                                               ; preds = %2
  %12 = zext i32 %9 to i64
  %13 = getelementptr inbounds %struct.kstatfs, ptr %1, i32 0, i32 2
  store i64 %12, ptr %13, align 8
  %14 = load i32, ptr %6, align 8
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.shmem_sb_info, ptr %6, i32 0, i32 1
  %17 = tail call i64 @__percpu_counter_sum(ptr noundef %16) #16
  %18 = sub i64 %15, %17
  %19 = getelementptr inbounds %struct.kstatfs, ptr %1, i32 0, i32 3
  store i64 %18, ptr %19, align 8
  %20 = getelementptr inbounds %struct.kstatfs, ptr %1, i32 0, i32 4
  store i64 %18, ptr %20, align 8
  br label %21

21:                                               ; preds = %11, %2
  %22 = getelementptr inbounds %struct.shmem_sb_info, ptr %6, i32 0, i32 2
  %23 = load i32, ptr %22, align 8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %21
  %26 = zext i32 %23 to i64
  %27 = getelementptr inbounds %struct.kstatfs, ptr %1, i32 0, i32 5
  store i64 %26, ptr %27, align 8
  %28 = getelementptr inbounds %struct.shmem_sb_info, ptr %6, i32 0, i32 3
  %29 = load i32, ptr %28, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.kstatfs, ptr %1, i32 0, i32 6
  store i64 %30, ptr %31, align 8
  br label %32

32:                                               ; preds = %25, %21
  %33 = getelementptr inbounds %struct.kstatfs, ptr %1, i32 0, i32 7
  %34 = load ptr, ptr %3, align 4
  %35 = getelementptr inbounds %struct.super_block, ptr %34, i32 0, i32 34
  %36 = load i64, ptr %35, align 8, !noalias !51
  %37 = getelementptr %struct.super_block, ptr %34, i32 0, i32 34, i32 0, i32 8
  %38 = load i64, ptr %37, align 8, !noalias !51
  %39 = xor i64 %38, %36
  store i64 %39, ptr %33, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @shmem_show_options(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 9
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 27
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr %6, align 8
  %8 = load volatile i32, ptr @_totalram_pages, align 4
  %9 = lshr i32 %8, 1
  %10 = icmp eq i32 %7, %9
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = shl i32 %7, 2
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.23, i32 noundef %12) #16
  br label %13

13:                                               ; preds = %11, %2
  %14 = getelementptr inbounds %struct.shmem_sb_info, ptr %6, i32 0, i32 2
  %15 = load i32, ptr %14, align 8
  %16 = load volatile i32, ptr @_totalram_pages, align 4
  %17 = load volatile i32, ptr @_totalhigh_pages, align 4
  %18 = sub i32 %16, %17
  %19 = lshr i32 %16, 1
  %20 = tail call i32 @llvm.umin.i32(i32 %18, i32 %19) #16
  %21 = icmp eq i32 %15, %20
  br i1 %21, label %23, label %22

22:                                               ; preds = %13
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.24, i32 noundef %15) #16
  br label %23

23:                                               ; preds = %22, %13
  %24 = getelementptr inbounds %struct.shmem_sb_info, ptr %6, i32 0, i32 5
  %25 = load i16, ptr %24, align 4
  %26 = icmp eq i16 %25, 1023
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = zext i16 %25 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.25, i32 noundef %28) #16
  br label %29

29:                                               ; preds = %27, %23
  %30 = getelementptr inbounds %struct.shmem_sb_info, ptr %6, i32 0, i32 7
  %31 = load i32, ptr %30, align 8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = icmp eq i32 %31, -1
  %35 = load i32, ptr @overflowuid, align 4
  %36 = select i1 %34, i32 %35, i32 %31
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.26, i32 noundef %36) #16
  br label %37

37:                                               ; preds = %33, %29
  %38 = getelementptr inbounds %struct.shmem_sb_info, ptr %6, i32 0, i32 8
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = icmp eq i32 %39, -1
  %43 = load i32, ptr @overflowgid, align 4
  %44 = select i1 %42, i32 %43, i32 %39
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.27, i32 noundef %44) #16
  br label %45

45:                                               ; preds = %41, %37
  %46 = getelementptr inbounds %struct.shmem_sb_info, ptr %6, i32 0, i32 9
  %47 = load i8, ptr %46, align 8, !range !48
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %45
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.28, i32 noundef 64) #16
  br label %50

50:                                               ; preds = %49, %45
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @shmem_unacct_size(i32 noundef %0, i64 noundef %1) unnamed_addr #11 {
  %3 = and i32 %0, 2097152
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %2
  %6 = add i64 %1, 4095
  %7 = lshr i64 %6, 12
  %8 = trunc i64 %7 to i32
  %9 = sub i32 0, %8
  %10 = sext i32 %9 to i64
  %11 = load i32, ptr @vm_committed_as_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef nonnull @vm_committed_as, i64 noundef %10, i32 noundef %11) #16
  br label %12

12:                                               ; preds = %5, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__var_waitqueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_var_entry(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_inode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__percpu_counter_sum(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @shmem_xattr_handler_get(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
  %7 = tail call ptr @xattr_full_name(ptr noundef %0, ptr noundef %3) #16
  %8 = getelementptr i8, ptr %2, i32 -16
  %9 = tail call i32 @simple_xattr_get(ptr noundef %8, ptr noundef %7, ptr noundef %4, i32 noundef %5) #16
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @shmem_xattr_handler_set(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7) #0 {
  %9 = tail call ptr @xattr_full_name(ptr noundef %0, ptr noundef %4) #16
  %10 = getelementptr i8, ptr %3, i32 -16
  %11 = tail call i32 @simple_xattr_set(ptr noundef %10, ptr noundef %9, ptr noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef null) #16
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xattr_full_name(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_xattr_get(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_xattr_set(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @new_inode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_init_owner(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_special_inode(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @inc_nlink(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @shmem_setattr(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.timespec64, align 8
  %5 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i32 @setattr_prepare(ptr noundef nonnull @init_user_ns, ptr noundef %1, ptr noundef %2) #16
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %97

9:                                                ; preds = %3
  %10 = load i16, ptr %6, align 8
  %11 = and i16 %10, -4096
  %12 = icmp eq i16 %11, -32768
  br i1 %12, label %13, label %90

13:                                               ; preds = %9
  %14 = load i32, ptr %2, align 8
  %15 = and i32 %14, 8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %90, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 13
  %19 = load i64, ptr %18, align 8
  %20 = getelementptr inbounds %struct.iattr, ptr %2, i32 0, i32 4
  %21 = load i64, ptr %20, align 8
  %22 = icmp slt i64 %21, %19
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = getelementptr i8, ptr %6, i32 -52
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, 2
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %97

28:                                               ; preds = %23, %17
  %29 = icmp sgt i64 %21, %19
  br i1 %29, label %30, label %35

30:                                               ; preds = %28
  %31 = getelementptr i8, ptr %6, i32 -52
  %32 = load i32, ptr %31, align 4
  %33 = and i32 %32, 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %97

35:                                               ; preds = %30, %28
  %36 = icmp eq i64 %21, %19
  br i1 %36, label %72, label %37

37:                                               ; preds = %35
  %38 = getelementptr i8, ptr %6, i32 -48
  %39 = load i32, ptr %38, align 8
  %40 = and i32 %39, 2097152
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %64

42:                                               ; preds = %37
  %43 = add i64 %21, 4095
  %44 = ashr i64 %43, 12
  %45 = add i64 %19, 4095
  %46 = ashr i64 %45, 12
  %47 = icmp sgt i64 %44, %46
  br i1 %47, label %55, label %48

48:                                               ; preds = %42
  %49 = icmp slt i64 %44, %46
  br i1 %49, label %50, label %64

50:                                               ; preds = %48
  %51 = sub nsw i64 %44, %46
  %52 = shl i64 %51, 32
  %53 = ashr exact i64 %52, 32
  %54 = load i32, ptr @vm_committed_as_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef nonnull @vm_committed_as, i64 noundef %53, i32 noundef %54) #16
  br label %64

55:                                               ; preds = %42
  %56 = tail call ptr @llvm.thread.pointer() #16
  %57 = getelementptr inbounds %struct.task_struct, ptr %56, i32 0, i32 37
  %58 = load ptr, ptr %57, align 4
  %59 = sub nsw i64 %44, %46
  %60 = trunc i64 %59 to i32
  %61 = tail call i32 @cap_vm_enough_memory(ptr noundef %58, i32 noundef %60) #16
  %62 = tail call i32 @__vm_enough_memory(ptr noundef %58, i32 noundef %60, i32 noundef %61) #16
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %97

64:                                               ; preds = %55, %50, %48, %37
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !37
  %65 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 22
  %66 = load i32, ptr %65, align 4
  %67 = add i32 %66, 1
  store i32 %67, ptr %65, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #16, !srcloc !38
  store i64 %21, ptr %18, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #16, !srcloc !39
  %68 = load i32, ptr %65, align 4
  %69 = add i32 %68, 1
  store i32 %69, ptr %65, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !40
  %70 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 16
  %71 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #16
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %4, ptr noundef %6) #16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %71, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %70, ptr noundef align 8 dereferenceable(16) %71, i32 16, i1 false)
  br label %72

72:                                               ; preds = %64, %35
  br i1 %29, label %90, label %73

73:                                               ; preds = %72
  %74 = add i64 %21, -1
  %75 = or i64 %74, 4095
  %76 = add i64 %75, 1
  %77 = icmp sgt i64 %19, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 9
  %80 = load ptr, ptr %79, align 8
  call void @unmap_mapping_range(ptr noundef %80, i64 noundef %76, i64 noundef 0, i32 noundef 1) #16
  br label %81

81:                                               ; preds = %78, %73
  %82 = getelementptr i8, ptr %6, i32 -44
  %83 = load i32, ptr %82, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %81
  call void @shmem_truncate_range(ptr noundef %6, i64 noundef %21, i64 noundef -1)
  br label %86

86:                                               ; preds = %85, %81
  br i1 %77, label %87, label %90

87:                                               ; preds = %86
  %88 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 9
  %89 = load ptr, ptr %88, align 8
  call void @unmap_mapping_range(ptr noundef %89, i64 noundef %76, i64 noundef 0, i32 noundef 1) #16
  br label %90

90:                                               ; preds = %87, %86, %72, %13, %9
  call void @setattr_copy(ptr noundef nonnull @init_user_ns, ptr noundef %6, ptr noundef %2) #16
  %91 = load i32, ptr %2, align 8
  %92 = and i32 %91, 1
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %90
  %95 = load i16, ptr %6, align 8
  %96 = call i32 @posix_acl_chmod(ptr noundef nonnull @init_user_ns, ptr noundef %6, i16 noundef zeroext %95) #16
  br label %97

97:                                               ; preds = %94, %90, %55, %30, %23, %3
  %98 = phi i32 [ %7, %3 ], [ %96, %94 ], [ 0, %90 ], [ -1, %30 ], [ -1, %23 ], [ %62, %55 ]
  ret i32 %98
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @shmem_listxattr(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr i8, ptr %5, i32 -16
  %7 = tail call i32 @simple_xattr_list(ptr noundef %5, ptr noundef %6, ptr noundef %1, i32 noundef %2) #16
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_set_acl(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @setattr_prepare(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unmap_mapping_range(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @setattr_copy(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @posix_acl_chmod(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_xattr_list(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @shmem_getattr(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = getelementptr inbounds %struct.path, ptr %1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dentry, ptr %7, i32 0, i32 5
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr i8, ptr %9, i32 -56
  %11 = getelementptr i8, ptr %9, i32 -44
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr i8, ptr %9, i32 -40
  %14 = load i32, ptr %13, align 8
  %15 = sub i32 %12, %14
  %16 = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 9
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.address_space, ptr %17, i32 0, i32 7
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %15, %19
  br i1 %20, label %59, label %21

21:                                               ; preds = %5
  tail call void @_raw_spin_lock_irq(ptr noundef %10) #16
  %22 = load i32, ptr %11, align 4
  %23 = load i32, ptr %13, align 8
  %24 = load ptr, ptr %16, align 8
  %25 = getelementptr inbounds %struct.address_space, ptr %24, i32 0, i32 7
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, %23
  %28 = sub i32 %22, %27
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %56

30:                                               ; preds = %21
  store i32 %27, ptr %11, align 4
  %31 = shl i32 %28, 3
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 21
  %34 = load i64, ptr %33, align 8
  %35 = sub i64 %34, %32
  store i64 %35, ptr %33, align 8
  %36 = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 8
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.super_block, ptr %37, i32 0, i32 27
  %39 = load ptr, ptr %38, align 4
  %40 = load i32, ptr %39, align 8
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %30
  %43 = getelementptr inbounds %struct.shmem_sb_info, ptr %39, i32 0, i32 1
  %44 = zext i32 %28 to i64
  %45 = sub nsw i64 0, %44
  %46 = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef %43, i64 noundef %45, i32 noundef %46) #16
  br label %47

47:                                               ; preds = %42, %30
  %48 = getelementptr i8, ptr %9, i32 -48
  %49 = load i32, ptr %48, align 8
  %50 = and i32 %49, 2097152
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %47
  %53 = sub nsw i32 0, %28
  %54 = sext i32 %53 to i64
  %55 = load i32, ptr @vm_committed_as_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef nonnull @vm_committed_as, i64 noundef %54, i32 noundef %55) #16
  br label %56

56:                                               ; preds = %52, %47, %21
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !20
  %57 = load i16, ptr %10, align 4
  %58 = add i16 %57, 1
  store i16 %58, ptr %10, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !22
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #16, !srcloc !23
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !24
  br label %59

59:                                               ; preds = %56, %5
  tail call void @generic_fillattr(ptr noundef nonnull @init_user_ns, ptr noundef %9, ptr noundef %2) #16
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_fillattr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @shmem_file_llseek(ptr noundef %0, i64 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 17
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 4
  %7 = add i32 %2, -5
  %8 = icmp ult i32 %7, -2
  br i1 %8, label %9, label %27

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 22
  %11 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 13
  br label %12

12:                                               ; preds = %20, %9
  %13 = load volatile i32, ptr %10, align 4
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %16, %12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !10
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #16, !srcloc !11
  %17 = load volatile i32, ptr %10, align 4
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %16

20:                                               ; preds = %16, %12
  %21 = phi i32 [ %13, %12 ], [ %17, %16 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  %22 = load i64, ptr %11, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !13
  %23 = load volatile i32, ptr %10, align 4
  %24 = icmp eq i32 %23, %21
  br i1 %24, label %25, label %12

25:                                               ; preds = %20
  %26 = tail call i64 @generic_file_llseek_size(ptr noundef %0, i64 noundef %1, i32 noundef %2, i64 noundef 17592186040320, i64 noundef %22) #16
  br label %39

27:                                               ; preds = %3
  %28 = icmp slt i64 %1, 0
  br i1 %28, label %39, label %29

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 24
  tail call void @down_write(ptr noundef %30) #16
  %31 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 13
  %32 = load i64, ptr %31, align 8
  %33 = tail call i64 @mapping_seek_hole_data(ptr noundef %5, i64 noundef %1, i64 noundef %32, i32 noundef %2) #16
  %34 = icmp sgt i64 %33, -1
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = tail call i64 @vfs_setpos(ptr noundef %0, i64 noundef %33, i64 noundef 17592186040320) #16
  br label %37

37:                                               ; preds = %35, %29
  %38 = phi i64 [ %36, %35 ], [ %33, %29 ]
  tail call void @up_write(ptr noundef %30) #16
  br label %39

39:                                               ; preds = %37, %27, %25
  %40 = phi i64 [ %26, %25 ], [ %38, %37 ], [ -6, %27 ]
  ret i64 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @shmem_file_read_iter(ptr nocapture noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.file, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 9
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 1
  %10 = load i8, ptr %1, align 8
  %11 = icmp eq i8 %10, 0
  %12 = select i1 %11, i32 0, i32 2
  %13 = load i64, ptr %9, align 8
  %14 = lshr i64 %13, 12
  %15 = trunc i64 %14 to i32
  %16 = trunc i64 %13 to i32
  %17 = and i32 %16, 4095
  %18 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 22
  %19 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 13
  %20 = getelementptr inbounds %struct.address_space, ptr %8, i32 0, i32 4
  %21 = getelementptr inbounds %struct.iov_iter, ptr %1, i32 0, i32 4
  br label %22

22:                                               ; preds = %159, %2
  %23 = phi i32 [ %15, %2 ], [ %136, %159 ]
  %24 = phi i32 [ %17, %2 ], [ %137, %159 ]
  %25 = phi i32 [ 0, %2 ], [ %133, %159 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  store ptr null, ptr %3, align 4
  br label %26

26:                                               ; preds = %34, %22
  %27 = load volatile i32, ptr %18, align 4
  %28 = and i32 %27, 1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %30, %26
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !10
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #16, !srcloc !11
  %31 = load volatile i32, ptr %18, align 4
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %30

34:                                               ; preds = %30, %26
  %35 = phi i32 [ %27, %26 ], [ %31, %30 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  %36 = load i64, ptr %19, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !13
  %37 = load volatile i32, ptr %18, align 4
  %38 = icmp eq i32 %37, %35
  br i1 %38, label %39, label %26

39:                                               ; preds = %34
  %40 = lshr i64 %36, 12
  %41 = trunc i64 %40 to i32
  %42 = icmp ugt i32 %23, %41
  br i1 %42, label %161, label %43

43:                                               ; preds = %39
  %44 = icmp ne i32 %23, %41
  %45 = trunc i64 %36 to i32
  %46 = and i32 %45, 4095
  %47 = icmp ugt i32 %46, %24
  %48 = select i1 %44, i1 true, i1 %47
  br i1 %48, label %49, label %161

49:                                               ; preds = %43
  %50 = load ptr, ptr %7, align 8
  %51 = getelementptr inbounds %struct.address_space, ptr %50, i32 0, i32 3
  %52 = load i32, ptr %51, align 4
  %53 = call fastcc i32 @shmem_getpage_gfp(ptr noundef %6, i32 noundef %23, ptr noundef nonnull %3, i32 noundef %12, i32 noundef %52, ptr noundef null, ptr noundef null) #16
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %49
  %56 = icmp eq i32 %53, -22
  %57 = select i1 %56, i32 0, i32 %53
  br label %161

58:                                               ; preds = %49
  %59 = load ptr, ptr %3, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %65, label %61

61:                                               ; preds = %58
  br i1 %11, label %64, label %62

62:                                               ; preds = %61
  %63 = tail call zeroext i1 @set_page_dirty(ptr noundef nonnull %59) #16
  br label %64

64:                                               ; preds = %62, %61
  tail call void @unlock_page(ptr noundef nonnull %59) #16
  br label %65

65:                                               ; preds = %64, %58
  br label %66

66:                                               ; preds = %74, %65
  %67 = load volatile i32, ptr %18, align 4
  %68 = and i32 %67, 1
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %70, %66
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !10
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #16, !srcloc !11
  %71 = load volatile i32, ptr %18, align 4
  %72 = and i32 %71, 1
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %70

74:                                               ; preds = %70, %66
  %75 = phi i32 [ %67, %66 ], [ %71, %70 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  %76 = load i64, ptr %19, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !13
  %77 = load volatile i32, ptr %18, align 4
  %78 = icmp eq i32 %77, %75
  br i1 %78, label %79, label %66

79:                                               ; preds = %74
  %80 = lshr i64 %76, 12
  %81 = trunc i64 %80 to i32
  %82 = icmp eq i32 %23, %81
  br i1 %82, label %83, label %105

83:                                               ; preds = %79
  %84 = trunc i64 %76 to i32
  %85 = and i32 %84, 4095
  %86 = icmp ugt i32 %85, %24
  br i1 %86, label %105, label %87

87:                                               ; preds = %83
  br i1 %60, label %161, label %88

88:                                               ; preds = %87
  %89 = getelementptr inbounds %struct.page, ptr %59, i32 0, i32 1
  %90 = load volatile i32, ptr %89, align 4
  %91 = and i32 %90, 1
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %95, label %93, !prof !14

93:                                               ; preds = %88
  %94 = add i32 %90, -1
  br label %97

95:                                               ; preds = %88
  %96 = ptrtoint ptr %59 to i32
  br label %97

97:                                               ; preds = %95, %93
  %98 = phi i32 [ %94, %93 ], [ %96, %95 ]
  %99 = inttoptr i32 %98 to ptr
  %100 = getelementptr inbounds %struct.page, ptr %99, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %100) #16, !srcloc !17
  %101 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %100, ptr %100, i32 1, ptr elementtype(i32) %100) #16, !srcloc !18
  %102 = extractvalue { i32, i32 } %101, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %161

104:                                              ; preds = %97
  tail call void @__put_page(ptr noundef %99) #16
  br label %161

105:                                              ; preds = %83, %79
  %106 = phi i32 [ %85, %83 ], [ 4096, %79 ]
  %107 = sub nsw i32 %106, %24
  br i1 %60, label %115, label %108

108:                                              ; preds = %105
  %109 = load volatile i32, ptr %20, align 4
  %110 = icmp slt i32 %109, 1
  br i1 %110, label %112, label %111

111:                                              ; preds = %108
  tail call void @flush_dcache_page(ptr noundef nonnull %59) #16
  br label %112

112:                                              ; preds = %111, %108
  %113 = icmp eq i32 %24, 0
  br i1 %113, label %114, label %130

114:                                              ; preds = %112
  tail call void @mark_page_accessed(ptr noundef nonnull %59) #16
  br label %130

115:                                              ; preds = %105
  %116 = load ptr, ptr @empty_zero_page, align 4
  store ptr %116, ptr %3, align 4
  %117 = getelementptr inbounds %struct.page, ptr %116, i32 0, i32 1
  %118 = load volatile i32, ptr %117, align 4
  %119 = and i32 %118, 1
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %123, label %121, !prof !14

121:                                              ; preds = %115
  %122 = add i32 %118, -1
  br label %125

123:                                              ; preds = %115
  %124 = ptrtoint ptr %116 to i32
  br label %125

125:                                              ; preds = %123, %121
  %126 = phi i32 [ %122, %121 ], [ %124, %123 ]
  %127 = inttoptr i32 %126 to ptr
  %128 = getelementptr inbounds %struct.page, ptr %127, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %128) #16, !srcloc !17
  %129 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %128, ptr %128, i32 1, ptr elementtype(i32) %128) #16, !srcloc !32
  br label %130

130:                                              ; preds = %125, %114, %112
  %131 = phi ptr [ %59, %112 ], [ %59, %114 ], [ %116, %125 ]
  %132 = tail call i32 @copy_page_to_iter(ptr noundef %131, i32 noundef %24, i32 noundef %107, ptr noundef %1) #16
  %133 = add i32 %132, %25
  %134 = add i32 %132, %24
  %135 = lshr i32 %134, 12
  %136 = add i32 %135, %23
  %137 = and i32 %134, 4095
  %138 = getelementptr inbounds %struct.page, ptr %131, i32 0, i32 1
  %139 = load volatile i32, ptr %138, align 4
  %140 = and i32 %139, 1
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %144, label %142, !prof !14

142:                                              ; preds = %130
  %143 = add i32 %139, -1
  br label %146

144:                                              ; preds = %130
  %145 = ptrtoint ptr %131 to i32
  br label %146

146:                                              ; preds = %144, %142
  %147 = phi i32 [ %143, %142 ], [ %145, %144 ]
  %148 = inttoptr i32 %147 to ptr
  %149 = getelementptr inbounds %struct.page, ptr %148, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %149) #16, !srcloc !17
  %150 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %149, ptr %149, i32 1, ptr elementtype(i32) %149) #16, !srcloc !18
  %151 = extractvalue { i32, i32 } %150, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %146
  tail call void @__put_page(ptr noundef %148) #16
  br label %154

154:                                              ; preds = %153, %146
  %155 = load i32, ptr %21, align 8
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %161, label %157

157:                                              ; preds = %154
  %158 = icmp ult i32 %132, %107
  br i1 %158, label %161, label %159

159:                                              ; preds = %157
  %160 = tail call i32 @__cond_resched() #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  br label %22

161:                                              ; preds = %157, %154, %104, %97, %87, %55, %43, %39
  %162 = phi i32 [ %23, %104 ], [ %23, %97 ], [ %23, %87 ], [ %23, %55 ], [ %23, %39 ], [ %23, %43 ], [ %136, %154 ], [ %136, %157 ]
  %163 = phi i32 [ %24, %104 ], [ %24, %97 ], [ %24, %87 ], [ %24, %55 ], [ %24, %39 ], [ %24, %43 ], [ %137, %154 ], [ %137, %157 ]
  %164 = phi i32 [ 0, %104 ], [ 0, %97 ], [ 0, %87 ], [ %57, %55 ], [ 0, %39 ], [ 0, %43 ], [ 0, %154 ], [ -14, %157 ]
  %165 = phi i32 [ %25, %104 ], [ %25, %97 ], [ %25, %87 ], [ %25, %55 ], [ %25, %39 ], [ %25, %43 ], [ %133, %154 ], [ %133, %157 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  %166 = zext i32 %162 to i64
  %167 = shl nuw nsw i64 %166, 12
  %168 = zext i32 %163 to i64
  %169 = add nuw nsw i64 %167, %168
  store i64 %169, ptr %9, align 8
  %170 = getelementptr inbounds %struct.file, ptr %4, i32 0, i32 7
  %171 = load i32, ptr %170, align 4
  %172 = and i32 %171, 262144
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %161
  %175 = getelementptr inbounds %struct.file, ptr %4, i32 0, i32 1
  tail call void @touch_atime(ptr noundef %175) #16
  br label %176

176:                                              ; preds = %174, %161
  %177 = icmp eq i32 %165, 0
  %178 = select i1 %177, i32 %164, i32 %165
  ret i32 %178
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_write_iter(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @shmem_mmap(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 -52
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 16
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %20, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 8
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 8
  %13 = icmp eq i32 %12, 0
  %14 = and i32 %11, 10
  %15 = icmp eq i32 %14, 10
  %16 = or i1 %15, %13
  br i1 %16, label %19, label %17

17:                                               ; preds = %9
  %18 = and i32 %11, -33
  store i32 %18, ptr %10, align 4
  br label %20

19:                                               ; preds = %9
  br i1 %15, label %29, label %20

20:                                               ; preds = %19, %17, %2
  %21 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 7
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, 262144
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1
  tail call void @touch_atime(ptr noundef %26) #16
  br label %27

27:                                               ; preds = %25, %20
  %28 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 12
  store ptr @shmem_vm_ops, ptr %28, align 4
  br label %29

29:                                               ; preds = %27, %19
  %30 = phi i32 [ 0, %27 ], [ -1, %19 ]
  ret i32 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @noop_fsync(ptr noundef, i64 noundef, i64 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iter_file_splice_write(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_splice_read(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @shmem_fallocate(ptr nocapture noundef readonly %0, i32 noundef %1, i64 noundef %2, i64 noundef %3) #0 {
  %5 = alloca %struct.timespec64, align 8
  %6 = alloca %struct.shmem_falloc, align 4
  %7 = alloca %struct.wait_queue_head, align 4
  %8 = alloca ptr, align 4
  %9 = alloca %struct.timespec64, align 8
  %10 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 8
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 27
  %15 = load ptr, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %6, i8 0, i32 20, i1 false), !annotation !9
  %16 = icmp ult i32 %1, 4
  br i1 %16, label %17, label %199

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 24
  tail call void @down_write(ptr noundef %18) #16
  %19 = and i32 %1, 2
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %65, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 17
  %23 = load ptr, ptr %22, align 8
  %24 = add i64 %2, -1
  %25 = or i64 %24, 4095
  %26 = add i64 %25, 1
  %27 = add i64 %3, %2
  %28 = and i64 %27, -4096
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #16
  %29 = getelementptr inbounds %struct.wait_queue_head, ptr %7, i32 0, i32 1
  store i32 0, ptr %7, align 4
  store ptr %29, ptr %29, align 4
  %30 = getelementptr inbounds %struct.wait_queue_head, ptr %7, i32 0, i32 1, i32 1
  store ptr %29, ptr %30, align 4
  %31 = getelementptr i8, ptr %11, i32 -52
  %32 = load i32, ptr %31, align 4
  %33 = and i32 %32, 24
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %63

35:                                               ; preds = %21
  %36 = add i64 %28, -1
  store ptr %7, ptr %6, align 4
  %37 = lshr exact i64 %26, 12
  %38 = trunc i64 %37 to i32
  %39 = getelementptr inbounds %struct.shmem_falloc, ptr %6, i32 0, i32 1
  store i32 %38, ptr %39, align 4
  %40 = lshr i64 %27, 12
  %41 = trunc i64 %40 to i32
  %42 = getelementptr inbounds %struct.shmem_falloc, ptr %6, i32 0, i32 2
  store i32 %41, ptr %42, align 4
  %43 = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 17
  call void @_raw_spin_lock(ptr noundef %43) #16
  %44 = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 47
  store ptr %6, ptr %44, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !20
  %45 = load i16, ptr %43, align 4
  %46 = add i16 %45, 1
  store i16 %46, ptr %43, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !21
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !22
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !34
  %47 = icmp ugt i64 %36, %26
  br i1 %47, label %48, label %50

48:                                               ; preds = %35
  %49 = sub i64 %28, %26
  call void @unmap_mapping_range(ptr noundef %23, i64 noundef %26, i64 noundef %49, i32 noundef 0) #16
  br label %50

50:                                               ; preds = %48, %35
  %51 = add i64 %27, -1
  call fastcc void @shmem_undo_range(ptr noundef %11, i64 noundef %2, i64 noundef %51, i1 noundef zeroext false) #16
  %52 = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 16
  %53 = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #16
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %5, ptr noundef %11) #16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %53, ptr noundef nonnull align 8 dereferenceable(16) %5, i32 16, i1 false) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %52, ptr noundef align 8 dereferenceable(16) %53, i32 16, i1 false) #16
  call void @_raw_spin_lock(ptr noundef %43) #16
  store ptr null, ptr %44, align 4
  call void @__wake_up(ptr noundef nonnull %7, i32 noundef 3, i32 noundef 0, ptr noundef null) #16
  %54 = load volatile ptr, ptr %29, align 4
  %55 = icmp ne ptr %54, %29
  %56 = load i1, ptr @shmem_fallocate.__already_done, align 1
  %57 = xor i1 %56, true
  %58 = select i1 %55, i1 %57, i1 false
  br i1 %58, label %59, label %60, !prof !28

59:                                               ; preds = %50
  store i1 true, ptr @shmem_fallocate.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2667, i32 noundef 9, ptr noundef null) #16
  br label %60

60:                                               ; preds = %59, %50
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !20
  %61 = load i16, ptr %43, align 4
  %62 = add i16 %61, 1
  store i16 %62, ptr %43, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !21
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !22
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !34
  br label %63

63:                                               ; preds = %60, %21
  %64 = phi i32 [ 0, %60 ], [ -1, %21 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #16
  br label %197

65:                                               ; preds = %17
  %66 = add i64 %3, %2
  %67 = tail call i32 @inode_newsize_ok(ptr noundef %11, i64 noundef %66) #16
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %197

69:                                               ; preds = %65
  %70 = getelementptr i8, ptr %11, i32 -52
  %71 = load i32, ptr %70, align 4
  %72 = and i32 %71, 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 13
  %76 = load i64, ptr %75, align 8
  %77 = icmp sgt i64 %66, %76
  br i1 %77, label %197, label %78

78:                                               ; preds = %74, %69
  %79 = lshr i64 %2, 12
  %80 = trunc i64 %79 to i32
  %81 = add i64 %66, 4095
  %82 = lshr i64 %81, 12
  %83 = trunc i64 %82 to i32
  %84 = load i32, ptr %15, align 8
  %85 = icmp ne i32 %84, 0
  %86 = sub i32 %83, %80
  %87 = icmp ugt i32 %86, %84
  %88 = and i1 %85, %87
  br i1 %88, label %197, label %89

89:                                               ; preds = %78
  store ptr null, ptr %6, align 4
  %90 = getelementptr inbounds %struct.shmem_falloc, ptr %6, i32 0, i32 1
  store i32 %80, ptr %90, align 4
  %91 = getelementptr inbounds %struct.shmem_falloc, ptr %6, i32 0, i32 2
  store i32 %80, ptr %91, align 4
  %92 = getelementptr inbounds %struct.shmem_falloc, ptr %6, i32 0, i32 3
  store i32 0, ptr %92, align 4
  %93 = getelementptr inbounds %struct.shmem_falloc, ptr %6, i32 0, i32 4
  store i32 0, ptr %93, align 4
  %94 = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %94) #16
  %95 = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 47
  store ptr %6, ptr %95, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !20
  %96 = load i16, ptr %94, align 4
  %97 = add i16 %96, 1
  store i16 %97, ptr %94, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !21
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !22
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !34
  %98 = getelementptr i8, ptr %11, i32 -36
  %99 = load i32, ptr %98, align 4
  %100 = icmp ult i32 %99, %83
  br i1 %100, label %101, label %102

101:                                              ; preds = %89
  store i32 %83, ptr %98, align 4
  br label %102

102:                                              ; preds = %101, %89
  %103 = icmp ugt i32 %83, %80
  br i1 %103, label %104, label %178

104:                                              ; preds = %102
  %105 = tail call ptr @llvm.thread.pointer() #16
  %106 = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 9
  br label %107

107:                                              ; preds = %175, %104
  %108 = phi i32 [ %80, %104 ], [ %135, %175 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #16
  store ptr null, ptr %8, align 4, !annotation !9
  %109 = load volatile i32, ptr %105, align 4
  %110 = and i32 %109, 256
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %126, !prof !14

112:                                              ; preds = %107
  %113 = load volatile i32, ptr %105, align 4
  %114 = and i32 %113, 1
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %126

116:                                              ; preds = %112
  %117 = load i32, ptr %93, align 4
  %118 = load i32, ptr %92, align 4
  %119 = icmp ugt i32 %117, %118
  br i1 %119, label %126, label %120

120:                                              ; preds = %116
  %121 = load ptr, ptr %106, align 8
  %122 = getelementptr inbounds %struct.address_space, ptr %121, i32 0, i32 3
  %123 = load i32, ptr %122, align 4
  %124 = call fastcc i32 @shmem_getpage_gfp(ptr noundef %11, i32 noundef %108, ptr noundef nonnull %8, i32 noundef 4, i32 noundef %123, ptr noundef null, ptr noundef null) #16
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %134, label %126

126:                                              ; preds = %120, %116, %112, %107
  %127 = phi i32 [ %124, %120 ], [ -12, %116 ], [ -4, %112 ], [ -4, %107 ]
  store i32 %99, ptr %98, align 4
  %128 = icmp ugt i32 %108, %80
  br i1 %128, label %129, label %174

129:                                              ; preds = %126
  %130 = and i64 %2, 17592186040320
  %131 = zext i32 %108 to i64
  %132 = shl nuw nsw i64 %131, 12
  %133 = add nsw i64 %132, -1
  call fastcc void @shmem_undo_range(ptr noundef %11, i64 noundef %130, i64 noundef %133, i1 noundef zeroext true)
  br label %174

134:                                              ; preds = %120
  %135 = add nuw i32 %108, 1
  %136 = load ptr, ptr %8, align 4
  %137 = getelementptr inbounds %struct.page, ptr %136, i32 0, i32 1
  %138 = load volatile i32, ptr %137, align 4
  %139 = and i32 %138, 1
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %143, label %141, !prof !14

141:                                              ; preds = %134
  %142 = add i32 %138, -1
  br label %145

143:                                              ; preds = %134
  %144 = ptrtoint ptr %136 to i32
  br label %145

145:                                              ; preds = %143, %141
  %146 = phi i32 [ %142, %141 ], [ %144, %143 ]
  %147 = inttoptr i32 %146 to ptr
  %148 = load volatile i32, ptr %147, align 4
  %149 = and i32 %148, 4
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %152, label %151

151:                                              ; preds = %145
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !15
  br label %157

152:                                              ; preds = %145
  %153 = load i32, ptr %91, align 4
  %154 = sub i32 %135, %153
  %155 = load i32, ptr %92, align 4
  %156 = add i32 %154, %155
  store i32 %156, ptr %92, align 4
  br label %157

157:                                              ; preds = %152, %151
  store i32 %135, ptr %91, align 4
  %158 = call zeroext i1 @set_page_dirty(ptr noundef %136) #16
  call void @unlock_page(ptr noundef %136) #16
  %159 = load volatile i32, ptr %137, align 4
  %160 = and i32 %159, 1
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %164, label %162, !prof !14

162:                                              ; preds = %157
  %163 = add i32 %159, -1
  br label %166

164:                                              ; preds = %157
  %165 = ptrtoint ptr %136 to i32
  br label %166

166:                                              ; preds = %164, %162
  %167 = phi i32 [ %163, %162 ], [ %165, %164 ]
  %168 = inttoptr i32 %167 to ptr
  %169 = getelementptr inbounds %struct.page, ptr %168, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !16
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %169) #16, !srcloc !17
  %170 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %169, ptr %169, i32 1, ptr elementtype(i32) %169) #16, !srcloc !18
  %171 = extractvalue { i32, i32 } %170, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %166
  call void @__put_page(ptr noundef %168) #16
  br label %175

174:                                              ; preds = %129, %126
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #16
  br label %193

175:                                              ; preds = %173, %166
  %176 = call i32 @__cond_resched() #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #16
  %177 = icmp eq i32 %135, %83
  br i1 %177, label %178, label %107

178:                                              ; preds = %175, %102
  %179 = and i32 %1, 1
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %191

181:                                              ; preds = %178
  %182 = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 13
  %183 = load i64, ptr %182, align 8
  %184 = icmp sgt i64 %66, %183
  br i1 %184, label %185, label %191

185:                                              ; preds = %181
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !37
  %186 = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 22
  %187 = load i32, ptr %186, align 4
  %188 = add i32 %187, 1
  store i32 %188, ptr %186, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #16, !srcloc !38
  store i64 %66, ptr %182, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #16, !srcloc !39
  %189 = load i32, ptr %186, align 4
  %190 = add i32 %189, 1
  store i32 %190, ptr %186, align 4
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !40
  br label %191

191:                                              ; preds = %185, %181, %178
  %192 = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #16
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %9, ptr noundef %11) #16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %192, ptr noundef nonnull align 8 dereferenceable(16) %9, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #16
  br label %193

193:                                              ; preds = %191, %174
  %194 = phi i32 [ 0, %191 ], [ %127, %174 ]
  call void @_raw_spin_lock(ptr noundef %94) #16
  store ptr null, ptr %95, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !20
  %195 = load i16, ptr %94, align 4
  %196 = add i16 %195, 1
  store i16 %196, ptr %94, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !21
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !22
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !34
  br label %197

197:                                              ; preds = %193, %78, %74, %65, %63
  %198 = phi i32 [ %64, %63 ], [ %67, %65 ], [ %194, %193 ], [ -1, %74 ], [ -28, %78 ]
  call void @up_write(ptr noundef %18) #16
  br label %199

199:                                              ; preds = %197, %4
  %200 = phi i32 [ %198, %197 ], [ -95, %4 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #16
  ret i32 %200
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek_size(ptr noundef, i64 noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @mapping_seek_hole_data(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @vfs_setpos(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @copy_page_to_iter(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @touch_atime(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inode_newsize_ok(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @simple_lookup(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @shmem_create(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3, i1 noundef zeroext %4) #0 {
  %6 = or i16 %3, -32768
  %7 = tail call i32 @shmem_mknod(ptr noundef nonnull @init_user_ns, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %6, i32 noundef 0)
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @shmem_link(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.timespec64, align 8
  %5 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 11
  %8 = load i32, ptr %7, align 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %36, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 8
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.super_block, ptr %12, i32 0, i32 27
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.super_block, ptr %12, i32 0, i32 10
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 4194304
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %36

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct.shmem_sb_info, ptr %14, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %20) #16
  %21 = getelementptr inbounds %struct.shmem_sb_info, ptr %14, i32 0, i32 2
  %22 = load i32, ptr %21, align 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.shmem_sb_info, ptr %14, i32 0, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %24
  %29 = add i32 %26, -1
  store i32 %29, ptr %25, align 4
  br label %30

30:                                               ; preds = %28, %19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !20
  %31 = load i16, ptr %20, align 4
  %32 = add i16 %31, 1
  store i16 %32, ptr %20, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !34
  br label %36

33:                                               ; preds = %24
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !20
  %34 = load i16, ptr %20, align 4
  %35 = add i16 %34, 1
  store i16 %35, ptr %20, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !34
  br label %47

36:                                               ; preds = %30, %10, %3
  %37 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 13
  %38 = load i64, ptr %37, align 8
  %39 = add i64 %38, 20
  store i64 %39, ptr %37, align 8
  %40 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 16
  %41 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 16
  %42 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #16
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %4, ptr noundef %6) #16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %42, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %41, ptr noundef align 8 dereferenceable(16) %42, i32 16, i1 false)
  call void @llvm.memmove.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %40, ptr noundef align 8 dereferenceable(16) %42, i32 16, i1 false)
  call void @inc_nlink(ptr noundef %6) #16
  call void @ihold(ptr noundef %6) #16
  %43 = icmp eq ptr %2, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %36
  %45 = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 7
  call void @lockref_get(ptr noundef %45) #16
  br label %46

46:                                               ; preds = %44, %36
  call void @d_instantiate(ptr noundef %2, ptr noundef %6) #16
  br label %47

47:                                               ; preds = %46, %33
  %48 = phi i32 [ -28, %33 ], [ 0, %46 ]
  ret i32 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @shmem_unlink(ptr nocapture noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.timespec64, align 8
  %4 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 11
  %7 = load i32, ptr %6, align 8
  %8 = icmp ugt i32 %7, 1
  br i1 %8, label %9, label %28

9:                                                ; preds = %2
  %10 = load i16, ptr %5, align 8
  %11 = and i16 %10, -4096
  %12 = icmp eq i16 %11, 16384
  br i1 %12, label %28, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 8
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.super_block, ptr %15, i32 0, i32 27
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.shmem_sb_info, ptr %17, i32 0, i32 2
  %19 = load i32, ptr %18, align 8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.shmem_sb_info, ptr %17, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %22) #16
  %23 = getelementptr inbounds %struct.shmem_sb_info, ptr %17, i32 0, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %24, 1
  store i32 %25, ptr %23, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !20
  %26 = load i16, ptr %22, align 4
  %27 = add i16 %26, 1
  store i16 %27, ptr %22, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !34
  br label %28

28:                                               ; preds = %21, %13, %9, %2
  %29 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 13
  %30 = load i64, ptr %29, align 8
  %31 = add i64 %30, -20
  store i64 %31, ptr %29, align 8
  %32 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 16
  %33 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 16
  %34 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #16
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %3, ptr noundef %5) #16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %34, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %33, ptr noundef align 8 dereferenceable(16) %34, i32 16, i1 false)
  call void @llvm.memmove.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %32, ptr noundef align 8 dereferenceable(16) %34, i32 16, i1 false)
  call void @drop_nlink(ptr noundef %5) #16
  call void @dput(ptr noundef %1) #16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @shmem_symlink(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca %struct.timespec64, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  store ptr null, ptr %5, align 4, !annotation !9
  %7 = tail call i32 @strlen(ptr noundef %3)
  %8 = add i32 %7, 1
  %9 = icmp ugt i32 %8, 4096
  br i1 %9, label %66, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %12 = load ptr, ptr %11, align 4
  %13 = tail call fastcc ptr @shmem_get_inode(ptr noundef %12, ptr noundef %1, i16 noundef zeroext -24065, i32 noundef 0, i32 noundef 2097152)
  %14 = icmp eq ptr %13, null
  br i1 %14, label %66, label %15

15:                                               ; preds = %10
  %16 = sext i32 %7 to i64
  %17 = getelementptr inbounds %struct.inode, ptr %13, i32 0, i32 13
  store i64 %16, ptr %17, align 8
  %18 = icmp ult i32 %8, 129
  br i1 %18, label %19, label %26

19:                                               ; preds = %15
  %20 = tail call ptr @kmemdup(ptr noundef %3, i32 noundef %8, i32 noundef 3264) #16
  %21 = getelementptr inbounds %struct.inode, ptr %13, i32 0, i32 43
  store ptr %20, ptr %21, align 4
  %22 = icmp eq ptr %20, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  tail call void @iput(ptr noundef nonnull %13) #16
  br label %66

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.inode, ptr %13, i32 0, i32 7
  store ptr @shmem_short_symlink_operations, ptr %25, align 8
  br label %57

26:                                               ; preds = %15
  tail call void @inode_nohighmem(ptr noundef nonnull %13) #16
  %27 = getelementptr inbounds %struct.inode, ptr %13, i32 0, i32 9
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %struct.address_space, ptr %28, i32 0, i32 3
  %30 = load i32, ptr %29, align 4
  %31 = call fastcc i32 @shmem_getpage_gfp(ptr noundef nonnull %13, i32 noundef 0, ptr noundef nonnull %5, i32 noundef 3, i32 noundef %30, ptr noundef null, ptr noundef null) #16
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %26
  tail call void @iput(ptr noundef nonnull %13) #16
  br label %66

34:                                               ; preds = %26
  %35 = load ptr, ptr %27, align 8
  %36 = getelementptr inbounds %struct.address_space, ptr %35, i32 0, i32 9
  store ptr @shmem_aops, ptr %36, align 4
  %37 = getelementptr inbounds %struct.inode, ptr %13, i32 0, i32 7
  store ptr @shmem_symlink_inode_operations, ptr %37, align 8
  %38 = load ptr, ptr %5, align 4
  %39 = tail call ptr @page_address(ptr noundef %38) #16
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %39, ptr align 1 %3, i32 %8, i1 false)
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #16, !srcloc !25
  tail call void @_set_bit(i32 noundef 2, ptr noundef %38) #16
  %40 = tail call zeroext i1 @set_page_dirty(ptr noundef %38) #16
  tail call void @unlock_page(ptr noundef %38) #16
  %41 = getelementptr inbounds %struct.page, ptr %38, i32 0, i32 1
  %42 = load volatile i32, ptr %41, align 4
  %43 = and i32 %42, 1
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %47, label %45, !prof !14

45:                                               ; preds = %34
  %46 = add i32 %42, -1
  br label %49

47:                                               ; preds = %34
  %48 = ptrtoint ptr %38 to i32
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i32 [ %46, %45 ], [ %48, %47 ]
  %51 = inttoptr i32 %50 to ptr
  %52 = getelementptr inbounds %struct.page, ptr %51, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %52) #16, !srcloc !17
  %53 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %52, ptr %52, i32 1, ptr elementtype(i32) %52) #16, !srcloc !18
  %54 = extractvalue { i32, i32 } %53, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  tail call void @__put_page(ptr noundef %51) #16
  br label %57

57:                                               ; preds = %56, %49, %24
  %58 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 13
  %59 = load i64, ptr %58, align 8
  %60 = add i64 %59, 20
  store i64 %60, ptr %58, align 8
  %61 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 16
  %62 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #16
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %6, ptr noundef %1) #16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %62, ptr noundef nonnull align 8 dereferenceable(16) %6, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %61, ptr noundef align 8 dereferenceable(16) %62, i32 16, i1 false)
  call void @d_instantiate(ptr noundef %2, ptr noundef nonnull %13) #16
  %63 = icmp eq ptr %2, null
  br i1 %63, label %66, label %64

64:                                               ; preds = %57
  %65 = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 7
  call void @lockref_get(ptr noundef %65) #16
  br label %66

66:                                               ; preds = %64, %57, %33, %23, %10, %4
  %67 = phi i32 [ -12, %23 ], [ %31, %33 ], [ -36, %4 ], [ -28, %10 ], [ 0, %57 ], [ 0, %64 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  ret i32 %67
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @shmem_mkdir(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3) #0 {
  %5 = or i16 %3, 16384
  %6 = tail call i32 @shmem_mknod(ptr noundef nonnull @init_user_ns, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %5, i32 noundef 0)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  tail call void @inc_nlink(ptr noundef %1) #16
  br label %9

9:                                                ; preds = %8, %4
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @shmem_rmdir(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @simple_empty(ptr noundef %1) #16
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %7 = load ptr, ptr %6, align 8
  tail call void @drop_nlink(ptr noundef %7) #16
  tail call void @drop_nlink(ptr noundef %0) #16
  %8 = tail call i32 @shmem_unlink(ptr noundef %0, ptr noundef %1)
  br label %9

9:                                                ; preds = %5, %2
  %10 = phi i32 [ 0, %5 ], [ -39, %2 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @shmem_mknod(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3, i32 noundef %4) #0 {
  %6 = alloca %struct.timespec64, align 8
  %7 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = tail call fastcc ptr @shmem_get_inode(ptr noundef %8, ptr noundef %1, i16 noundef zeroext %3, i32 noundef %4, i32 noundef 2097152)
  %10 = icmp eq ptr %9, null
  br i1 %10, label %24, label %11

11:                                               ; preds = %5
  %12 = tail call i32 @simple_acl_create(ptr noundef %1, ptr noundef nonnull %9) #16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 13
  %16 = load i64, ptr %15, align 8
  %17 = add i64 %16, 20
  store i64 %17, ptr %15, align 8
  %18 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 16
  %19 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #16
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %6, ptr noundef %1) #16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %19, ptr noundef nonnull align 8 dereferenceable(16) %6, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %18, ptr noundef align 8 dereferenceable(16) %19, i32 16, i1 false)
  call void @d_instantiate(ptr noundef %2, ptr noundef nonnull %9) #16
  %20 = icmp eq ptr %2, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 7
  call void @lockref_get(ptr noundef %22) #16
  br label %24

23:                                               ; preds = %11
  tail call void @iput(ptr noundef nonnull %9) #16
  br label %24

24:                                               ; preds = %23, %21, %14, %5
  %25 = phi i32 [ %12, %23 ], [ -28, %5 ], [ 0, %14 ], [ 0, %21 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @shmem_rename2(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
  %7 = alloca %struct.timespec64, align 8
  %8 = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 5
  %9 = load ptr, ptr %8, align 8
  %10 = load i16, ptr %9, align 8
  %11 = and i16 %10, -4096
  %12 = icmp eq i16 %11, 16384
  %13 = icmp ult i32 %5, 8
  br i1 %13, label %14, label %57

14:                                               ; preds = %6
  %15 = and i32 %5, 2
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  %18 = tail call i32 @simple_rename_exchange(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #16
  br label %57

19:                                               ; preds = %14
  %20 = tail call i32 @simple_empty(ptr noundef %4) #16
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %57, label %22

22:                                               ; preds = %19
  %23 = and i32 %5, 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 3
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 4
  %29 = tail call ptr @d_alloc(ptr noundef %27, ptr noundef %28) #16
  %30 = icmp eq ptr %29, null
  br i1 %30, label %57, label %31

31:                                               ; preds = %25
  %32 = tail call i32 @shmem_mknod(ptr noundef nonnull @init_user_ns, ptr noundef %1, ptr noundef nonnull %29, i16 noundef zeroext 8192, i32 noundef 0) #16
  tail call void @dput(ptr noundef nonnull %29) #16
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %57

34:                                               ; preds = %31
  tail call void @d_rehash(ptr noundef nonnull %29) #16
  br label %35

35:                                               ; preds = %34, %22
  %36 = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 5
  %37 = load ptr, ptr %36, align 8
  %38 = icmp eq ptr %37, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = tail call i32 @shmem_unlink(ptr noundef %3, ptr noundef %4)
  br i1 %12, label %41, label %45

41:                                               ; preds = %39
  %42 = load ptr, ptr %36, align 8
  tail call void @drop_nlink(ptr noundef %42) #16
  tail call void @drop_nlink(ptr noundef %1) #16
  br label %45

43:                                               ; preds = %35
  br i1 %12, label %44, label %45

44:                                               ; preds = %43
  tail call void @drop_nlink(ptr noundef %1) #16
  tail call void @inc_nlink(ptr noundef %3) #16
  br label %45

45:                                               ; preds = %44, %43, %41, %39
  %46 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 13
  %47 = load i64, ptr %46, align 8
  %48 = add i64 %47, -20
  store i64 %48, ptr %46, align 8
  %49 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 13
  %50 = load i64, ptr %49, align 8
  %51 = add i64 %50, 20
  store i64 %51, ptr %49, align 8
  %52 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 16
  %53 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 15
  %54 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 16
  %55 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 15
  %56 = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #16
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %7, ptr noundef %1) #16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %56, ptr noundef nonnull align 8 dereferenceable(16) %7, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %55, ptr noundef align 8 dereferenceable(16) %56, i32 16, i1 false)
  call void @llvm.memmove.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %54, ptr noundef align 8 dereferenceable(16) %56, i32 16, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %53, ptr noundef align 8 dereferenceable(16) %54, i32 16, i1 false)
  call void @llvm.memmove.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %52, ptr noundef align 8 dereferenceable(16) %54, i32 16, i1 false)
  br label %57

57:                                               ; preds = %45, %31, %25, %19, %17, %6
  %58 = phi i32 [ %18, %17 ], [ 0, %45 ], [ -22, %6 ], [ -39, %19 ], [ %32, %31 ], [ -12, %25 ]
  ret i32 %58
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @shmem_tmpfile(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3) #0 {
  %5 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = tail call fastcc ptr @shmem_get_inode(ptr noundef %6, ptr noundef %1, i16 noundef zeroext %3, i32 noundef 0, i32 noundef 2097152)
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %4
  %10 = tail call i32 @simple_acl_create(ptr noundef %1, ptr noundef nonnull %7) #16
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  tail call void @d_tmpfile(ptr noundef %2, ptr noundef nonnull %7) #16
  br label %14

13:                                               ; preds = %9
  tail call void @iput(ptr noundef nonnull %7) #16
  br label %14

14:                                               ; preds = %13, %12, %4
  %15 = phi i32 [ %10, %13 ], [ 0, %12 ], [ -28, %4 ]
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ihold(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_instantiate(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockref_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drop_nlink(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_nohighmem(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @simple_get_link(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @shmem_get_link(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  store ptr null, ptr %4, align 4
  %5 = icmp eq ptr %0, null
  %6 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 9
  %7 = load ptr, ptr %6, align 8
  br i1 %5, label %8, label %43

8:                                                ; preds = %3
  %9 = tail call ptr @pagecache_get_page(ptr noundef %7, i32 noundef 0, i32 noundef 0, i32 noundef 0) #16
  %10 = icmp eq ptr %9, null
  br i1 %10, label %58, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.page, ptr %9, i32 0, i32 1
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16, !prof !14

16:                                               ; preds = %11
  %17 = add i32 %13, -1
  br label %20

18:                                               ; preds = %11
  %19 = ptrtoint ptr %9 to i32
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32 [ %17, %16 ], [ %19, %18 ]
  %22 = inttoptr i32 %21 to ptr
  %23 = load volatile i32, ptr %22, align 4
  %24 = and i32 %23, 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !15
  br label %54

27:                                               ; preds = %20
  %28 = load volatile i32, ptr %12, align 4
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31, !prof !14

31:                                               ; preds = %27
  %32 = add i32 %28, -1
  br label %35

33:                                               ; preds = %27
  %34 = ptrtoint ptr %9 to i32
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi i32 [ %32, %31 ], [ %34, %33 ]
  %37 = inttoptr i32 %36 to ptr
  %38 = getelementptr inbounds %struct.page, ptr %37, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %38) #16, !srcloc !17
  %39 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %38, ptr %38, i32 1, ptr elementtype(i32) %38) #16, !srcloc !18
  %40 = extractvalue { i32, i32 } %39, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %58

42:                                               ; preds = %35
  tail call void @__put_page(ptr noundef %37) #16
  br label %58

43:                                               ; preds = %3
  %44 = getelementptr inbounds %struct.address_space, ptr %7, i32 0, i32 3
  %45 = load i32, ptr %44, align 4
  %46 = call fastcc i32 @shmem_getpage_gfp(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4, i32 noundef 0, i32 noundef %45, ptr noundef null, ptr noundef null) #16
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %43
  %49 = inttoptr i32 %46 to ptr
  br label %58

50:                                               ; preds = %43
  %51 = load ptr, ptr %4, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %58, label %53

53:                                               ; preds = %50
  tail call void @unlock_page(ptr noundef nonnull %51) #16
  br label %54

54:                                               ; preds = %53, %26
  %55 = phi ptr [ %9, %26 ], [ %51, %53 ]
  store ptr @shmem_put_link, ptr %2, align 4
  %56 = getelementptr inbounds %struct.delayed_call, ptr %2, i32 0, i32 1
  store ptr %55, ptr %56, align 4
  %57 = tail call ptr @page_address(ptr noundef nonnull %55) #16
  br label %58

58:                                               ; preds = %54, %50, %48, %42, %35, %8
  %59 = phi ptr [ %49, %48 ], [ %57, %54 ], [ inttoptr (i32 -10 to ptr), %8 ], [ inttoptr (i32 -10 to ptr), %35 ], [ inttoptr (i32 -10 to ptr), %42 ], [ inttoptr (i32 -10 to ptr), %50 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  ret ptr %59
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @shmem_put_link(ptr noundef %0) #0 {
  tail call void @mark_page_accessed(ptr noundef %0) #16
  %2 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6, !prof !14

6:                                                ; preds = %1
  %7 = add i32 %3, -1
  br label %10

8:                                                ; preds = %1
  %9 = ptrtoint ptr %0 to i32
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi i32 [ %7, %6 ], [ %9, %8 ]
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.page, ptr %12, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %13) #16, !srcloc !17
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %13, ptr %13, i32 1, ptr elementtype(i32) %13) #16, !srcloc !18
  %15 = extractvalue { i32, i32 } %14, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  tail call void @__put_page(ptr noundef %12) #16
  br label %18

18:                                               ; preds = %17, %10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_empty(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_acl_create(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_rename_exchange(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_alloc(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_rehash(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_tmpfile(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_counter_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @shmem_init_inode(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.shmem_inode_info, ptr %0, i32 0, i32 11
  tail call void @inode_init_once(ptr noundef %2) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_init_once(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_litter_super(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_nlink(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_file_pseudo(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #15

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i32(ptr nocapture writeonly, ptr nocapture readonly, i32, i1 immarg) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind readonly }
attributes #10 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #16 = { nounwind }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind readnone }
attributes #20 = { nounwind allocsize(0) }

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
!10 = !{i64 2151387551}
!11 = !{i64 2151387393}
!12 = !{i64 2151387695}
!13 = !{i64 2149581938}
!14 = !{!"branch_weights", i32 2000, i32 1}
!15 = !{i64 2150270321}
!16 = !{i64 2148536975}
!17 = !{i64 934910, i64 2148424881, i64 2148424907, i64 2148424954, i64 2148424976, i64 2148425004, i64 2148425024}
!18 = !{i64 2148439337, i64 2148439369, i64 2148439398, i64 2148439432, i64 2148439463, i64 2148439486}
!19 = !{i64 2148537178}
!20 = !{i64 2149103514}
!21 = !{i64 2149099338}
!22 = !{i64 2149099413, i64 2149099440, i64 2149099487, i64 2149099509, i64 2149099537, i64 2149099557}
!23 = !{i64 840833}
!24 = !{i64 2149127658}
!25 = !{i64 2150271342}
!26 = !{i64 2149256218}
!27 = !{i64 2149256435}
!28 = !{!"branch_weights", i32 1, i32 2000}
!29 = !{!"branch_weights", i32 4001, i32 4000000}
!30 = !{i64 2148444758, i64 2148444790, i64 2148444819, i64 2148444853, i64 2148444884, i64 2148444907}
!31 = !{i64 2148546098}
!32 = !{i64 2148436296, i64 2148436322, i64 2148436351, i64 2148436385, i64 2148436416, i64 2148436439}
!33 = !{i64 2154378094, i64 2154378570, i64 2154378131, i64 2154378187, i64 2154378221, i64 2154378245, i64 2154378286, i64 2154378307, i64 2154378335, i64 2154378369}
!34 = !{i64 2149126517}
!35 = !{i64 2154361086, i64 2154361561, i64 2154361123, i64 2154361179, i64 2154361213, i64 2154361237, i64 2154361278, i64 2154361299, i64 2154361327, i64 2154361361}
!36 = !{i64 2154380211, i64 2154380687, i64 2154380248, i64 2154380304, i64 2154380338, i64 2154380362, i64 2154380403, i64 2154380424, i64 2154380452, i64 2154380486}
!37 = !{i64 2151389333}
!38 = !{i64 2149582237}
!39 = !{i64 2149582538}
!40 = !{i64 2151396891}
!41 = !{i64 2154443745, i64 2154444221, i64 2154443782, i64 2154443838, i64 2154443872, i64 2154443896, i64 2154443937, i64 2154443958, i64 2154443986, i64 2154444020}
!42 = !{i64 840588, i64 840649}
!43 = !{i64 859288}
!44 = !{i64 843605}
!45 = !{i64 2148438653, i64 2148438679, i64 2148438708, i64 2148438742, i64 2148438773, i64 2148438796}
!46 = !{i64 800149, i64 800176, i64 800198, i64 800226}
!47 = !{i64 800557, i64 800584, i64 800617, i64 800638, i64 800665, i64 800691}
!48 = !{i8 0, i8 2}
!49 = !{i64 2154353899}
!50 = !{i64 2154354249}
!51 = !{!52}
!52 = distinct !{!52, !53, !"uuid_to_fsid: argument 0"}
!53 = distinct !{!53, !"uuid_to_fsid"}
