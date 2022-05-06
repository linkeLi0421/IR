; ModuleID = '/llk/IR/fs/nfs/nfs4state.c_pt.bc'
source_filename = "../fs/nfs/nfs4state.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs4_schedule_lease_recovery:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs4_schedule_lease_recovery\22\09\09\09\09\09"
module asm "__kstrtabns_nfs4_schedule_lease_recovery:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs4_schedule_migration_recovery:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs4_schedule_migration_recovery\22\09\09\09\09\09"
module asm "__kstrtabns_nfs4_schedule_migration_recovery:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs4_schedule_lease_moved_recovery:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs4_schedule_lease_moved_recovery\22\09\09\09\09\09"
module asm "__kstrtabns_nfs4_schedule_lease_moved_recovery:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs4_schedule_stateid_recovery:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs4_schedule_stateid_recovery\22\09\09\09\09\09"
module asm "__kstrtabns_nfs4_schedule_stateid_recovery:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs4_schedule_session_recovery:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs4_schedule_session_recovery\22\09\09\09\09\09"
module asm "__kstrtabns_nfs4_schedule_session_recovery:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.file_lock_operations = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type {}
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.cpumask = type { [1 x i32] }
%struct.nfs_fsinfo = type { ptr, i32, i32, i32, i32, i32, i32, i32, i64, %struct.timespec64, i32, i32, [8 x i32], i32, i32, i32, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.nfs4_setclientid_res = type { i64, %struct.nfs4_verifier }
%struct.nfs4_verifier = type { [8 x i8] }
%struct.nfs_client = type { %struct.refcount_struct, %struct.atomic_t, i32, i32, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32, i32, i32, ptr, %struct.list_head, i64, %struct.nfs4_verifier, i32, %struct.spinlock, i32, i32, %struct.delayed_work, %struct.rpc_wait_queue, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i8, ptr, ptr, ptr, i32, %struct.wait_queue_head, [48 x i8], ptr, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__kernel_sockaddr_storage = type { %union.anon.0 }
%union.anon.0 = type { ptr, [124 x i8] }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rpc_wait_queue = type { %struct.spinlock, [4 x %struct.list_head], i8, i8, i8, i16, %struct.rpc_timer, ptr }
%struct.rpc_timer = type { %struct.list_head, i32, %struct.delayed_work }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type {}
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.23, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.23 = type { %struct.anon.24 }
%struct.anon.24 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.raw_notifier_head = type { ptr }
%struct.netns_core = type { ptr, i32, ptr }
%struct.netns_mib = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netns_packet = type { %struct.mutex, %struct.hlist_head }
%struct.netns_unix = type { i32, ptr }
%struct.netns_nexthop = type { %struct.rb_root, ptr, i32, i32, %struct.blocking_notifier_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.netns_ipv4 = type { %struct.inet_timewait_death_row, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i32, i32, i32, i32, %struct.local_ports, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, ptr, ptr, i32, %struct.atomic_t, i32, i32, i32, i8, i8, i32, i32, i32, %struct.ping_group_range, %struct.atomic_t, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, %struct.siphash_key_t, [40 x i8] }
%struct.inet_timewait_death_row = type { %struct.atomic_t, [60 x i8], ptr, i32 }
%struct.local_ports = type { %struct.seqlock_t, [2 x i32], i8 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.98, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.98 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.nfs_net = type { ptr, ptr, %struct.bl_dev_msg, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, %struct.idr, i16, i16, [3 x i32], ptr, %struct.spinlock, i64, ptr }
%struct.bl_dev_msg = type { i32, i32, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.90 }
%struct.kuid_t = type { i32 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.90 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.nfs_server = type { ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.nfs_fsid, i64, %struct.timespec64, i32, ptr, i32, %struct.nfs_auth_info, i32, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, i32, ptr, %struct.rpc_wait_queue, ptr, %struct.rb_root, %struct.ida, %struct.ida, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, ptr, %struct.atomic_t, %struct.__kernel_sockaddr_storage, i32, i32, i16, i16, %struct.rpc_wait_queue, i32, ptr, i8 }
%struct.nfs_fsid = type { i64, i64 }
%struct.nfs_auth_info = type { i32, [12 x i32] }
%struct.ida = type { %struct.xarray }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nfs4_state_owner = type { ptr, %struct.list_head, i32, %struct.rb_node, ptr, %struct.spinlock, %struct.atomic_t, i32, %struct.list_head, %struct.nfs_seqid_counter, %struct.seqcount_spinlock, %struct.mutex }
%struct.nfs_seqid_counter = type { i64, i32, i32, i32, %struct.spinlock, %struct.list_head, %struct.rpc_wait_queue }
%struct.nfs4_state = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, i32, %struct.spinlock, %struct.seqlock_t, %struct.nfs4_stateid_struct, %struct.nfs4_stateid_struct, i32, i32, i32, i32, %struct.refcount_struct, %struct.wait_queue_head, %struct.callback_head }
%struct.nfs4_stateid_struct = type { %union.anon, i32 }
%union.anon = type { %struct.anon }
%struct.anon = type { i32, [12 x i8] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.148, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.149, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.150, ptr, %struct.address_space, %struct.list_head, %union.anon.151, i32, i32, ptr, ptr }
%union.anon.148 = type { i32 }
%union.anon.149 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.150 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.151 = type { ptr }
%struct.nfs4_lock_state = type { %struct.list_head, ptr, i32, %struct.nfs_seqid_counter, %struct.nfs4_stateid_struct, %struct.refcount_struct, ptr }
%struct.nfs4_minor_version_ops = type { i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_lock = type { ptr, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, ptr, i32, i8, i32, i32, %struct.wait_queue_head, ptr, i64, i64, ptr, i32, i32, ptr, ptr, %union.anon.128 }
%union.anon.128 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, ptr, %struct.list_head }
%struct.nfs_lock_context = type { %struct.refcount_struct, %struct.list_head, ptr, ptr, %struct.atomic_t, %struct.callback_head }
%struct.nfs_open_context = type { %struct.nfs_lock_context, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.callback_head }
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
%struct.nfs_seqid = type { ptr, %struct.list_head, ptr }
%struct.nfs4_state_recovery_ops = type { i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.rpc_clnt = type { %struct.refcount_struct, i32, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.spinlock, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i8, ptr, ptr, %struct.atomic_t, i32, [65 x i8], %struct.rpc_pipe_dir_head, ptr, %struct.rpc_rtt, %struct.rpc_timeout, ptr, ptr, ptr, %union.anon.147, ptr, i32 }
%struct.rpc_pipe_dir_head = type { %struct.list_head, ptr }
%struct.rpc_rtt = type { i32, [5 x i32], [5 x i32], [5 x i32] }
%struct.rpc_timeout = type { i32, i32, i32, i32, i8 }
%union.anon.147 = type { %struct.work_struct }
%struct.rpc_auth = type { i32, i32, i32, i32, i32, ptr, i32, %struct.refcount_struct, ptr }
%struct.nfs4_session = type { %struct.nfs4_sessionid, i32, i32, i32, i32, %struct.nfs4_channel_attrs, %struct.nfs4_slot_table, %struct.nfs4_channel_attrs, %struct.nfs4_slot_table, ptr }
%struct.nfs4_sessionid = type { [16 x i8] }
%struct.nfs4_channel_attrs = type { i32, i32, i32, i32, i32 }
%struct.nfs4_slot_table = type { ptr, ptr, [32 x i32], %struct.spinlock, %struct.rpc_wait_queue, %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, i32, i32, %struct.completion, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.nfs4_state_maintenance_ops = type { ptr, ptr, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.126, %struct.list_head, %struct.list_head, %union.anon.127 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.8, ptr }
%union.anon.8 = type { i64 }
%struct.lockref = type { %union.anon.10 }
%union.anon.10 = type { i64 }
%union.anon.126 = type { %struct.list_head }
%union.anon.127 = type { %struct.hlist_node }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.file = type { %union.anon.7, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.7 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.nfs4_copy_state = type { %struct.list_head, %struct.list_head, %struct.nfs4_stateid_struct, %struct.completion, i64, %struct.nfs_writeverf, i32, i32, ptr, ptr }
%struct.nfs_writeverf = type { %struct.nfs_write_verifier, i32 }
%struct.nfs_write_verifier = type { [8 x i8] }
%struct.nfs4_fs_locations = type { %struct.nfs_fattr, ptr, %struct.nfs4_pathname, i32, [10 x %struct.nfs4_fs_location] }
%struct.nfs_fattr = type { i32, i16, i32, %struct.kuid_t, %struct.kgid_t, i32, i64, %union.anon.130, %struct.nfs_fsid, i64, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64, i64, %struct.timespec64, %struct.timespec64, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.130 = type { %struct.anon.132 }
%struct.anon.132 = type { i64 }
%struct.nfs4_pathname = type { i32, [512 x %struct.nfs4_string] }
%struct.nfs4_string = type { i32, ptr }
%struct.nfs4_fs_location = type { i32, [10 x %struct.nfs4_string], %struct.nfs4_pathname }

@zero_stateid = dso_local local_unnamed_addr constant { { [16 x i8] }, i32 } { { [16 x i8] } zeroinitializer, i32 1 }, align 4
@invalid_stateid = dso_local local_unnamed_addr constant { { <{ i8, i8, i8, i8, [12 x i8] }> }, i32 } { { <{ i8, i8, i8, i8, [12 x i8] }> } { <{ i8, i8, i8, i8, [12 x i8] }> <{ i8 -1, i8 -1, i8 -1, i8 -1, [12 x i8] zeroinitializer }> }, i32 0 }, align 4
@current_stateid = dso_local local_unnamed_addr constant { { <{ i8, i8, i8, i8, [12 x i8] }> }, i32 } { { <{ i8, i8, i8, i8, [12 x i8] }> } { <{ i8, i8, i8, i8, [12 x i8] }> <{ i8 0, i8 0, i8 0, i8 1, [12 x i8] zeroinitializer }> }, i32 1 }, align 4
@nfs_net_id = external dso_local local_unnamed_addr global i32, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@nfs4_fl_lock_ops = internal constant %struct.file_lock_operations { ptr @nfs4_fl_copy_lock, ptr @nfs4_fl_release_lock }, align 4
@.str = private unnamed_addr constant [11 x i8] c"%s-manager\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"\013%s: kthread_run: %ld\0A\00", align 1
@__func__.nfs4_schedule_state_manager = private unnamed_addr constant [28 x i8] c"nfs4_schedule_state_manager\00", align 1
@__kstrtab_nfs4_schedule_lease_recovery = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs4_schedule_lease_recovery = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs4_schedule_lease_recovery = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs4_schedule_lease_recovery to i32), ptr @__kstrtab_nfs4_schedule_lease_recovery, ptr @__kstrtabns_nfs4_schedule_lease_recovery }, section "___ksymtab_gpl+nfs4_schedule_lease_recovery", align 4
@.str.3 = private unnamed_addr constant [56 x i8] c"\013NFS: volatile file handles not supported (server %s)\0A\00", align 1
@__kstrtab_nfs4_schedule_migration_recovery = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs4_schedule_migration_recovery = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs4_schedule_migration_recovery = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs4_schedule_migration_recovery to i32), ptr @__kstrtab_nfs4_schedule_migration_recovery, ptr @__kstrtabns_nfs4_schedule_migration_recovery }, section "___ksymtab_gpl+nfs4_schedule_migration_recovery", align 4
@__kstrtab_nfs4_schedule_lease_moved_recovery = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs4_schedule_lease_moved_recovery = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs4_schedule_lease_moved_recovery = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs4_schedule_lease_moved_recovery to i32), ptr @__kstrtab_nfs4_schedule_lease_moved_recovery, ptr @__kstrtabns_nfs4_schedule_lease_moved_recovery }, section "___ksymtab_gpl+nfs4_schedule_lease_moved_recovery", align 4
@__kstrtab_nfs4_schedule_stateid_recovery = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs4_schedule_stateid_recovery = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs4_schedule_stateid_recovery = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs4_schedule_stateid_recovery to i32), ptr @__kstrtab_nfs4_schedule_stateid_recovery, ptr @__kstrtabns_nfs4_schedule_stateid_recovery }, section "___ksymtab_gpl+nfs4_schedule_stateid_recovery", align 4
@nfs_clid_init_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @nfs_clid_init_mutex, i64 12), ptr getelementptr (i8, ptr @nfs_clid_init_mutex, i64 12) } }, align 4
@.str.4 = private unnamed_addr constant [54 x i8] c"\014NFS: %s unhandled error %d. Exiting with error EIO\0A\00", align 1
@__func__.nfs4_discover_server_trunking = private unnamed_addr constant [30 x i8] c"nfs4_discover_server_trunking\00", align 1
@__kstrtab_nfs4_schedule_session_recovery = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs4_schedule_session_recovery = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs4_schedule_session_recovery = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs4_schedule_session_recovery to i32), ptr @__kstrtab_nfs4_schedule_session_recovery, ptr @__kstrtabns_nfs4_schedule_session_recovery }, section "___ksymtab_gpl+nfs4_schedule_session_recovery", align 4
@nfs4_alloc_state_owner.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"&sp->so_delegreturn_mutex\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"Seqid_waitqueue\00", align 1
@nfs4_alloc_open_state.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"&state->waitq\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@nfs_increment_seqid._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.nfs_increment_seqid = private unnamed_addr constant [20 x i8] c"nfs_increment_seqid\00", align 1
@.str.8 = private unnamed_addr constant [82 x i8] c"\014NFS: v4 server returned a bad sequence-id error on an unconfirmed sequence %p!\0A\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"purge state\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"lease expired\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"reset session\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"bind conn to session\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"check lease\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"migration\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"lease moved\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"reclaim reboot\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"reclaim nograce\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c": \00", align 1
@nfs4_state_manager._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.nfs4_state_manager = private unnamed_addr constant [19 x i8] c"nfs4_state_manager\00", align 1
@.str.21 = private unnamed_addr constant [66 x i8] c"\014NFS: state manager%s%s failed on NFSv4 server %s with error %d\0A\00", align 1
@__tracepoint_nfs4_state_mgr = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@.str.23 = private unnamed_addr constant [49 x i8] c"\013NFS: Server %s reports our clientid is in use\0A\00", align 1
@.str.24 = private unnamed_addr constant [46 x i8] c"\013NFS: migration recovery failed (server %s)\0A\00", align 1
@.str.25 = private unnamed_addr constant [31 x i8] c"\013NFS: %s: unhandled error %d\0A\00", align 1
@__func__.nfs4_reclaim_open_state = private unnamed_addr constant [24 x i8] c"nfs4_reclaim_open_state\00", align 1
@.str.26 = private unnamed_addr constant [63 x i8] c"\014NFSv4: state recovery failed for open file %pd2, error = %d\0A\00", align 1
@__nfs4_reclaim_open_state._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.__nfs4_reclaim_open_state = private unnamed_addr constant [26 x i8] c"__nfs4_reclaim_open_state\00", align 1
@.str.27 = private unnamed_addr constant [33 x i8] c"\014NFS: %s: Lock reclaim failed!\0A\00", align 1
@__func__.nfs4_reclaim_locks = private unnamed_addr constant [19 x i8] c"nfs4_reclaim_locks\00", align 1
@__tracepoint_nfs4_state_lock_reclaim = external dso_local global %struct.tracepoint, align 4
@__tracepoint_nfs4_state_mgr_failed = external dso_local global %struct.tracepoint, align 4
@llvm.compiler.used = appending global [5 x ptr] [ptr @__ksymtab_nfs4_schedule_lease_moved_recovery, ptr @__ksymtab_nfs4_schedule_lease_recovery, ptr @__ksymtab_nfs4_schedule_migration_recovery, ptr @__ksymtab_nfs4_schedule_session_recovery, ptr @__ksymtab_nfs4_schedule_stateid_recovery], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs4_init_clientid(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.nfs_fsinfo, align 8
  %4 = alloca %struct.nfs4_setclientid_res, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #16
  %5 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 20
  %6 = load i64, ptr %5, align 8
  store i64 %6, ptr %4, align 8
  %7 = getelementptr inbounds %struct.nfs4_setclientid_res, ptr %4, i32 0, i32 1
  %8 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 21
  %9 = load i64, ptr %8, align 8
  store i64 %9, ptr %7, align 8
  %10 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 44
  %11 = load ptr, ptr %10, align 8
  %12 = load i32, ptr @nfs_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !8
  %13 = getelementptr inbounds %struct.net, ptr %11, i32 0, i32 37
  %14 = load volatile ptr, ptr %13, align 64
  %15 = getelementptr [0 x ptr], ptr %14, i32 0, i32 %12
  %16 = load ptr, ptr %15, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !9
  %17 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 22
  %18 = load volatile i32, ptr %17, align 4
  %19 = and i32 %18, 128
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.nfs_net, ptr %16, i32 0, i32 8
  %23 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 5
  %24 = load i16, ptr %23, align 4
  %25 = icmp eq i16 %24, 10
  %26 = getelementptr inbounds %struct.nfs_net, ptr %16, i32 0, i32 9
  %27 = select i1 %25, ptr %26, ptr %22
  %28 = load i16, ptr %27, align 2
  %29 = call i32 @nfs4_proc_setclientid(ptr noundef %0, i32 noundef 1073741824, i16 noundef zeroext %28, ptr noundef %1, ptr noundef nonnull %4) #16
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %51

31:                                               ; preds = %21
  %32 = load i64, ptr %4, align 8
  store i64 %32, ptr %5, align 8
  %33 = load i64, ptr %7, align 8
  store i64 %33, ptr %8, align 8
  call void @_set_bit(i32 noundef 7, ptr noundef %17) #16
  br label %34

34:                                               ; preds = %31, %2
  %35 = call i32 @nfs4_proc_setclientid_confirm(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %1) #16
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %51

37:                                               ; preds = %34
  call void @_clear_bit(i32 noundef 7, ptr noundef %17) #16
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %3) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(112) %3, i8 0, i32 112, i1 false) #16, !annotation !10
  %38 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 3
  %39 = load volatile i32, ptr %38, align 4
  %40 = and i32 %39, 32
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %37
  %43 = call i32 @nfs4_proc_get_lease_time(ptr noundef %0, ptr noundef nonnull %3) #16
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.nfs_fsinfo, ptr %3, i32 0, i32 10
  %47 = load i32, ptr %46, align 8
  %48 = mul i32 %47, 100
  call void @nfs4_set_lease_period(ptr noundef %0, i32 noundef %48) #16
  br label %49

49:                                               ; preds = %45, %37
  call void @nfs4_schedule_state_renewal(ptr noundef %0) #16
  br label %50

50:                                               ; preds = %49, %42
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %3) #16
  br label %51

51:                                               ; preds = %50, %34, %21
  %52 = phi i32 [ %35, %34 ], [ 0, %50 ], [ %29, %21 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #16
  ret i32 %52
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_proc_setclientid(ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_proc_setclientid_confirm(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs40_discover_server_trunking(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.nfs4_setclientid_res, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #16
  %5 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 20
  %6 = load i64, ptr %5, align 8
  store i64 %6, ptr %4, align 8
  %7 = getelementptr inbounds %struct.nfs4_setclientid_res, ptr %4, i32 0, i32 1
  %8 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 21
  %9 = load i64, ptr %8, align 8
  store i64 %9, ptr %7, align 8
  %10 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 44
  %11 = load ptr, ptr %10, align 8
  %12 = load i32, ptr @nfs_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !8
  %13 = getelementptr inbounds %struct.net, ptr %11, i32 0, i32 37
  %14 = load volatile ptr, ptr %13, align 64
  %15 = getelementptr [0 x ptr], ptr %14, i32 0, i32 %12
  %16 = load ptr, ptr %15, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !9
  %17 = getelementptr inbounds %struct.nfs_net, ptr %16, i32 0, i32 8
  %18 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 5
  %19 = load i16, ptr %18, align 4
  %20 = icmp eq i16 %19, 10
  %21 = getelementptr inbounds %struct.nfs_net, ptr %16, i32 0, i32 9
  %22 = select i1 %20, ptr %21, ptr %17
  %23 = load i16, ptr %22, align 2
  %24 = call i32 @nfs4_proc_setclientid(ptr noundef %0, i32 noundef 1073741824, i16 noundef zeroext %23, ptr noundef %2, ptr noundef nonnull %4) #16
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %3
  %27 = load i64, ptr %4, align 8
  store i64 %27, ptr %5, align 8
  %28 = load i64, ptr %7, align 8
  store i64 %28, ptr %8, align 8
  %29 = call i32 @nfs40_walk_client_list(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load ptr, ptr %1, align 4
  call void @nfs4_schedule_state_renewal(ptr noundef %32) #16
  %33 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 22
  %34 = load i32, ptr %33, align 8
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  call void @nfs4_schedule_state_manager(ptr noundef %0)
  br label %37

37:                                               ; preds = %36, %31, %26, %3
  %38 = phi i32 [ %24, %3 ], [ 0, %36 ], [ 0, %31 ], [ %29, %26 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #16
  ret i32 %38
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs40_walk_client_list(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs4_schedule_state_renewal(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs4_schedule_state_manager(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [58 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 58, ptr nonnull %2) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(58) %2, i8 0, i32 58, i1 false), !annotation !10
  %3 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 22
  tail call void @_set_bit(i32 noundef 14, ptr noundef %3) #16
  %4 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %3) #16
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %30

6:                                                ; preds = %1
  tail call void @__module_get(ptr noundef null) #16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #16, !srcloc !11
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 1, ptr elementtype(i32) %0) #16, !srcloc !12
  %8 = extractvalue { i32, i32, i32 } %7, 0
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10, !prof !13

10:                                               ; preds = %6
  %11 = add i32 %8, 1
  %12 = or i32 %11, %8
  %13 = icmp sgt i32 %12, -1
  br i1 %13, label %16, label %14, !prof !14

14:                                               ; preds = %10, %6
  %15 = phi i32 [ 2, %6 ], [ 1, %10 ]
  tail call void @refcount_warn_saturate(ptr noundef %0, i32 noundef %15) #16
  br label %16

16:                                               ; preds = %14, %10
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !8
  %17 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 11
  %18 = load ptr, ptr %17, align 8
  %19 = tail call ptr @rpc_peeraddr2str(ptr noundef %18, i32 noundef 0) #16
  %20 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 58, ptr noundef nonnull @.str, ptr noundef %19)
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !9
  %21 = call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @nfs4_run_state_manager, ptr noundef %0, i32 noundef -1, ptr noundef nonnull @.str.1, ptr noundef nonnull %2) #16
  %22 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  br i1 %22, label %25, label %23

23:                                               ; preds = %16
  %24 = call i32 @wake_up_process(ptr noundef %21) #16
  br label %30

25:                                               ; preds = %16
  %26 = ptrtoint ptr %21 to i32
  %27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.nfs4_schedule_state_manager, i32 noundef %26) #17
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !15
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %3) #16, !srcloc !11
  %28 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %3, ptr %3, i32 1, ptr elementtype(i32) %3) #16, !srcloc !16
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !17
  call void @wake_up_bit(ptr noundef %3, i32 noundef 0) #16
  %29 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 27
  call void @rpc_wake_up(ptr noundef %29) #16
  call void @nfs_put_client(ptr noundef %0) #16
  call void @module_put(ptr noundef null) #16
  br label %30

30:                                               ; preds = %25, %23, %1
  call void @llvm.lifetime.end.p0(i64 58, ptr nonnull %2) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nfs4_get_machine_cred(ptr nocapture readnone %0) local_unnamed_addr #0 {
  %2 = tail call ptr @rpc_machine_cred() #16
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.cred, ptr %2, i32 0, i32 24
  store i32 0, ptr %5, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %2) #16, !srcloc !11
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %2, ptr nonnull %2, i32 1, ptr nonnull elementtype(i32) %2) #16, !srcloc !18
  br label %7

7:                                                ; preds = %4, %1
  ret ptr %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rpc_machine_cred() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nfs4_get_renew_cred(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @rpc_machine_cred() #16
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.cred, ptr %2, i32 0, i32 24
  store i32 0, ptr %5, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %2) #16, !srcloc !11
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %2, ptr nonnull %2, i32 1, ptr nonnull elementtype(i32) %2) #16, !srcloc !18
  br label %39

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 23
  tail call void @_raw_spin_lock(ptr noundef %8) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !8
  %9 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 10
  %10 = load volatile ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %9
  br i1 %11, label %35, label %12

12:                                               ; preds = %32, %7
  %13 = phi ptr [ %33, %32 ], [ %10, %7 ]
  %14 = getelementptr i8, ptr %13, i32 400
  %15 = tail call ptr @rb_first(ptr noundef %14) #16
  %16 = icmp eq ptr %15, null
  br i1 %16, label %32, label %17

17:                                               ; preds = %29, %12
  %18 = phi ptr [ %30, %29 ], [ %15, %12 ]
  %19 = getelementptr i8, ptr %18, i32 28
  %20 = load volatile ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, %19
  br i1 %21, label %29, label %22

22:                                               ; preds = %17
  %23 = getelementptr i8, ptr %18, i32 12
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.cred, ptr %24, i32 0, i32 24
  store i32 0, ptr %27, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %24) #16, !srcloc !11
  %28 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %24, ptr nonnull %24, i32 1, ptr nonnull elementtype(i32) %24) #16, !srcloc !18
  br label %35

29:                                               ; preds = %17
  %30 = tail call ptr @rb_next(ptr noundef nonnull %18) #16
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %17

32:                                               ; preds = %29, %22, %12
  %33 = load volatile ptr, ptr %13, align 4
  %34 = icmp eq ptr %33, %9
  br i1 %34, label %35, label %12

35:                                               ; preds = %32, %26, %7
  %36 = phi ptr [ %24, %26 ], [ null, %7 ], [ null, %32 ]
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  %37 = load i16, ptr %8, align 4
  %38 = add i16 %37, 1
  store i16 %38, ptr %8, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !20
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !21
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  br label %39

39:                                               ; preds = %35, %4
  %40 = phi ptr [ %2, %4 ], [ %36, %35 ]
  ret ptr %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs41_init_clientid(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 22
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 128
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = tail call i32 @nfs4_proc_exchange_id(ptr noundef %0, ptr noundef %1) #16
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %7
  tail call void @_set_bit(i32 noundef 7, ptr noundef %3) #16
  br label %11

11:                                               ; preds = %10, %2
  %12 = tail call i32 @nfs4_proc_create_session(ptr noundef %0, ptr noundef %1) #16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  tail call fastcc void @nfs41_finish_session_reset(ptr noundef %0)
  tail call void @nfs_mark_client_ready(ptr noundef %0, i32 noundef 0) #16
  br label %15

15:                                               ; preds = %14, %11, %7
  %16 = phi i32 [ %12, %11 ], [ 0, %14 ], [ %8, %7 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_proc_exchange_id(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_proc_create_session(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nfs41_finish_session_reset(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.nfs_fsinfo, align 8
  %3 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 22
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %3) #16
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %3) #16
  tail call void @_clear_bit(i32 noundef 10, ptr noundef %3) #16
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %2) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(112) %2, i8 0, i32 112, i1 false) #16, !annotation !10
  %4 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 3
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 32
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  tail call void @nfs4_schedule_state_renewal(ptr noundef %0) #16
  br label %16

9:                                                ; preds = %1
  %10 = call i32 @nfs4_proc_get_lease_time(ptr noundef %0, ptr noundef nonnull %2) #16
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.nfs_fsinfo, ptr %2, i32 0, i32 10
  %14 = load i32, ptr %13, align 8
  %15 = mul i32 %14, 100
  call void @nfs4_set_lease_period(ptr noundef %0, i32 noundef %15) #16
  call void @nfs4_schedule_state_renewal(ptr noundef %0) #16
  br label %16

16:                                               ; preds = %12, %9, %8
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %2) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_mark_client_ready(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs41_discover_server_trunking(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @nfs4_proc_exchange_id(ptr noundef %0, ptr noundef %2) #16
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %27

6:                                                ; preds = %3
  %7 = tail call i32 @nfs41_walk_client_list(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %27, label %9

9:                                                ; preds = %6
  %10 = load ptr, ptr %1, align 4
  %11 = icmp eq ptr %10, %0
  br i1 %11, label %12, label %27

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 35
  %14 = load i32, ptr %13, align 8
  %15 = icmp sgt i32 %14, -1
  br i1 %15, label %23, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 4
  %18 = load volatile i32, ptr %17, align 4
  %19 = and i32 %18, 32
  %20 = icmp eq i32 %19, 0
  %21 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 22
  %22 = select i1 %20, i32 9, i32 7
  tail call void @_set_bit(i32 noundef %22, ptr noundef %21) #16
  br label %23

23:                                               ; preds = %16, %12
  tail call void @nfs4_schedule_state_manager(ptr noundef %0)
  %24 = tail call i32 @nfs_wait_client_init_complete(ptr noundef %0) #16
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  tail call void @nfs_put_client(ptr noundef %0) #16
  br label %27

27:                                               ; preds = %26, %23, %9, %6, %3
  %28 = phi i32 [ %4, %3 ], [ %7, %6 ], [ 0, %9 ], [ %24, %26 ], [ %24, %23 ]
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs41_walk_client_list(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_wait_client_init_complete(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_put_client(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nfs4_get_clid_cred(ptr nocapture readnone %0) local_unnamed_addr #0 {
  %2 = tail call ptr @rpc_machine_cred() #16
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.cred, ptr %2, i32 0, i32 24
  store i32 0, ptr %5, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %2) #16, !srcloc !11
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %2, ptr nonnull %2, i32 1, ptr nonnull elementtype(i32) %2) #16, !srcloc !18
  br label %7

7:                                                ; preds = %4, %1
  ret ptr %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nfs4_get_state_owner(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.list_head, align 8
  %5 = load ptr, ptr %0, align 8
  %6 = getelementptr inbounds %struct.nfs_client, ptr %5, i32 0, i32 23
  tail call void @_raw_spin_lock(ptr noundef %6) #16
  %7 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 47
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %38, label %10

10:                                               ; preds = %34, %3
  %11 = phi ptr [ %36, %34 ], [ %8, %3 ]
  %12 = getelementptr i8, ptr %11, i32 12
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 @cred_fscmp(ptr noundef %1, ptr noundef %13) #16
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.rb_node, ptr %11, i32 0, i32 2
  br label %34

18:                                               ; preds = %10
  %19 = icmp eq i32 %14, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.rb_node, ptr %11, i32 0, i32 1
  br label %34

22:                                               ; preds = %18
  %23 = getelementptr i8, ptr %11, i32 -16
  %24 = getelementptr i8, ptr %11, i32 -12
  %25 = load volatile ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, %24
  br i1 %26, label %31, label %27

27:                                               ; preds = %22
  %28 = getelementptr i8, ptr %11, i32 -8
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  store ptr %29, ptr %30, align 4
  store volatile ptr %25, ptr %29, align 4
  store volatile ptr %24, ptr %24, align 4
  store ptr %24, ptr %28, align 4
  br label %31

31:                                               ; preds = %27, %22
  %32 = getelementptr i8, ptr %11, i32 20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %32) #16, !srcloc !11
  %33 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %32, ptr %32, i32 1, ptr elementtype(i32) %32) #16, !srcloc !18
  br label %38

34:                                               ; preds = %20, %16
  %35 = phi ptr [ %17, %16 ], [ %21, %20 ]
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %10

38:                                               ; preds = %34, %31, %3
  %39 = phi ptr [ %23, %31 ], [ null, %3 ], [ null, %34 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  %40 = load i16, ptr %6, align 4
  %41 = add i16 %40, 1
  store i16 %41, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !20
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !21
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  %42 = icmp eq ptr %39, null
  br i1 %42, label %43, label %144

43:                                               ; preds = %38
  %44 = or i32 %2, 256
  %45 = and i32 %2, 17
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %51, label %47, !prof !14

47:                                               ; preds = %43
  %48 = and i32 %2, 1
  %49 = icmp eq i32 %48, 0
  %50 = select i1 %49, i32 1, i32 2
  br label %51

51:                                               ; preds = %47, %43
  %52 = phi i32 [ 0, %43 ], [ %50, %47 ]
  %53 = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %52, i32 8
  %54 = load ptr, ptr %53, align 4
  %55 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %54, i32 noundef %44, i32 noundef 216) #18
  %56 = icmp eq ptr %55, null
  br i1 %56, label %144, label %57

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 48
  %59 = tail call i32 @ida_alloc_range(ptr noundef %58, i32 noundef 0, i32 noundef -1, i32 noundef %2) #16
  %60 = getelementptr inbounds %struct.nfs4_state_owner, ptr %55, i32 0, i32 9, i32 1
  store i32 %59, ptr %60, align 8
  %61 = icmp slt i32 %59, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  tail call void @kfree(ptr noundef nonnull %55) #16
  br label %144

63:                                               ; preds = %57
  %64 = getelementptr inbounds %struct.nfs4_state_owner, ptr %55, i32 0, i32 9
  store ptr %0, ptr %55, align 8
  %65 = icmp eq ptr %1, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.cred, ptr %1, i32 0, i32 24
  store i32 0, ptr %67, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %1) #16, !srcloc !11
  %68 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %1, ptr nonnull %1, i32 1, ptr nonnull elementtype(i32) %1) #16, !srcloc !18
  br label %69

69:                                               ; preds = %66, %63
  %70 = getelementptr inbounds %struct.nfs4_state_owner, ptr %55, i32 0, i32 4
  store ptr %1, ptr %70, align 4
  %71 = getelementptr inbounds %struct.nfs4_state_owner, ptr %55, i32 0, i32 5
  store i32 0, ptr %71, align 8
  %72 = getelementptr inbounds %struct.nfs4_state_owner, ptr %55, i32 0, i32 8
  store volatile ptr %72, ptr %72, align 4
  %73 = getelementptr inbounds %struct.nfs4_state_owner, ptr %55, i32 0, i32 8, i32 1
  store ptr %72, ptr %73, align 8
  %74 = tail call i64 @ktime_get() #16
  store i64 %74, ptr %64, align 8
  %75 = getelementptr inbounds %struct.nfs4_state_owner, ptr %55, i32 0, i32 9, i32 2
  store i32 0, ptr %75, align 4
  %76 = getelementptr inbounds %struct.nfs4_state_owner, ptr %55, i32 0, i32 9, i32 3
  store i32 0, ptr %76, align 8
  %77 = getelementptr inbounds %struct.nfs4_state_owner, ptr %55, i32 0, i32 9, i32 4
  store i32 0, ptr %77, align 4
  %78 = getelementptr inbounds %struct.nfs4_state_owner, ptr %55, i32 0, i32 9, i32 5
  store volatile ptr %78, ptr %78, align 8
  %79 = getelementptr inbounds %struct.nfs4_state_owner, ptr %55, i32 0, i32 9, i32 5, i32 1
  store ptr %78, ptr %79, align 4
  %80 = getelementptr inbounds %struct.nfs4_state_owner, ptr %55, i32 0, i32 9, i32 6
  tail call void @rpc_init_wait_queue(ptr noundef %80, ptr noundef nonnull @.str.6) #16
  %81 = getelementptr inbounds %struct.nfs4_state_owner, ptr %55, i32 0, i32 6
  store volatile i32 1, ptr %81, align 4
  %82 = getelementptr inbounds %struct.nfs4_state_owner, ptr %55, i32 0, i32 1
  store volatile ptr %82, ptr %82, align 4
  %83 = getelementptr inbounds %struct.nfs4_state_owner, ptr %55, i32 0, i32 1, i32 1
  store ptr %82, ptr %83, align 8
  %84 = getelementptr inbounds %struct.nfs4_state_owner, ptr %55, i32 0, i32 10
  store i32 0, ptr %84, align 8
  %85 = getelementptr inbounds %struct.nfs4_state_owner, ptr %55, i32 0, i32 11
  tail call void @__mutex_init(ptr noundef %85, ptr noundef nonnull @.str.5, ptr noundef nonnull @nfs4_alloc_state_owner.__key) #16
  tail call void @_raw_spin_lock(ptr noundef %6) #16
  %86 = load ptr, ptr %55, align 8
  %87 = getelementptr inbounds %struct.nfs_server, ptr %86, i32 0, i32 47
  %88 = load ptr, ptr %87, align 4
  %89 = icmp eq ptr %88, null
  br i1 %89, label %121, label %90

90:                                               ; preds = %115, %69
  %91 = phi ptr [ %117, %115 ], [ %88, %69 ]
  %92 = load ptr, ptr %70, align 4
  %93 = getelementptr i8, ptr %91, i32 12
  %94 = load ptr, ptr %93, align 4
  %95 = tail call i32 @cred_fscmp(ptr noundef %92, ptr noundef %94) #16
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %90
  %98 = getelementptr inbounds %struct.rb_node, ptr %91, i32 0, i32 2
  br label %115

99:                                               ; preds = %90
  %100 = icmp eq i32 %95, 0
  br i1 %100, label %103, label %101

101:                                              ; preds = %99
  %102 = getelementptr inbounds %struct.rb_node, ptr %91, i32 0, i32 1
  br label %115

103:                                              ; preds = %99
  %104 = getelementptr i8, ptr %91, i32 -16
  %105 = getelementptr i8, ptr %91, i32 -12
  %106 = load volatile ptr, ptr %105, align 4
  %107 = icmp eq ptr %106, %105
  br i1 %107, label %112, label %108

108:                                              ; preds = %103
  %109 = getelementptr i8, ptr %91, i32 -8
  %110 = load ptr, ptr %109, align 4
  %111 = getelementptr inbounds %struct.list_head, ptr %106, i32 0, i32 1
  store ptr %110, ptr %111, align 4
  store volatile ptr %106, ptr %110, align 4
  store volatile ptr %105, ptr %105, align 4
  store ptr %105, ptr %109, align 4
  br label %112

112:                                              ; preds = %108, %103
  %113 = getelementptr i8, ptr %91, i32 20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %113) #16, !srcloc !11
  %114 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %113, ptr %113, i32 1, ptr elementtype(i32) %113) #16, !srcloc !18
  br label %127

115:                                              ; preds = %101, %97
  %116 = phi ptr [ %98, %97 ], [ %102, %101 ]
  %117 = load ptr, ptr %116, align 4
  %118 = icmp eq ptr %117, null
  br i1 %118, label %119, label %90

119:                                              ; preds = %115
  %120 = ptrtoint ptr %91 to i32
  br label %121

121:                                              ; preds = %119, %69
  %122 = phi ptr [ %116, %119 ], [ %87, %69 ]
  %123 = phi i32 [ %120, %119 ], [ 0, %69 ]
  %124 = getelementptr inbounds %struct.nfs4_state_owner, ptr %55, i32 0, i32 3
  store i32 %123, ptr %124, align 8
  %125 = getelementptr inbounds %struct.nfs4_state_owner, ptr %55, i32 0, i32 3, i32 1
  store ptr null, ptr %125, align 4
  %126 = getelementptr inbounds %struct.nfs4_state_owner, ptr %55, i32 0, i32 3, i32 2
  store ptr null, ptr %126, align 8
  store ptr %124, ptr %122, align 4
  tail call void @rb_insert_color(ptr noundef %124, ptr noundef %87) #16
  br label %127

127:                                              ; preds = %121, %112
  %128 = phi ptr [ %104, %112 ], [ %55, %121 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  %129 = load i16, ptr %6, align 4
  %130 = add i16 %129, 1
  store i16 %130, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !20
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !21
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  %131 = icmp eq ptr %128, %55
  br i1 %131, label %144, label %132

132:                                              ; preds = %127
  tail call void @rpc_destroy_wait_queue(ptr noundef %80) #16
  %133 = load ptr, ptr %70, align 4
  %134 = icmp eq ptr %133, null
  br i1 %134, label %140, label %135

135:                                              ; preds = %132
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !23
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %133) #16, !srcloc !11
  %136 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %133, ptr nonnull %133, i32 1, ptr nonnull elementtype(i32) %133) #16, !srcloc !24
  %137 = extractvalue { i32, i32 } %136, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !25
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %135
  tail call void @__put_cred(ptr noundef nonnull %133) #16
  br label %140

140:                                              ; preds = %139, %135, %132
  %141 = load ptr, ptr %55, align 8
  %142 = getelementptr inbounds %struct.nfs_server, ptr %141, i32 0, i32 48
  %143 = load i32, ptr %60, align 8
  tail call void @ida_free(ptr noundef %142, i32 noundef %143) #16
  tail call void @kfree(ptr noundef %55) #16
  br label %144

144:                                              ; preds = %140, %127, %62, %51, %38
  %145 = phi ptr [ %39, %38 ], [ %128, %140 ], [ %55, %127 ], [ null, %62 ], [ null, %51 ]
  %146 = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  store ptr %4, ptr %4, align 8
  %147 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  store ptr %4, ptr %147, align 4
  %148 = getelementptr inbounds %struct.nfs_client, ptr %146, i32 0, i32 23
  call void @_raw_spin_lock(ptr noundef %148) #16
  %149 = load volatile i32, ptr @jiffies, align 64
  %150 = getelementptr inbounds %struct.nfs_client, ptr %146, i32 0, i32 24
  %151 = load i32, ptr %150, align 8
  %152 = sub i32 %151, %149
  %153 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 50
  %154 = load ptr, ptr %153, align 8
  %155 = icmp eq ptr %154, %153
  br i1 %155, label %182, label %156

156:                                              ; preds = %180, %144
  %157 = phi ptr [ %159, %180 ], [ %154, %144 ]
  %158 = getelementptr i8, ptr %157, i32 -4
  %159 = load ptr, ptr %157, align 4
  %160 = getelementptr i8, ptr %157, i32 8
  %161 = load i32, ptr %160, align 4
  %162 = add i32 %152, %161
  %163 = icmp sgt i32 %162, -1
  %164 = sub i32 %149, %161
  %165 = icmp sgt i32 %164, -1
  %166 = select i1 %163, i1 %165, i1 false
  br i1 %166, label %182, label %167

167:                                              ; preds = %156
  %168 = getelementptr inbounds %struct.list_head, ptr %157, i32 0, i32 1
  %169 = load ptr, ptr %168, align 4
  %170 = getelementptr inbounds %struct.list_head, ptr %159, i32 0, i32 1
  store ptr %169, ptr %170, align 4
  store volatile ptr %159, ptr %169, align 4
  %171 = load ptr, ptr %4, align 8
  %172 = getelementptr inbounds %struct.list_head, ptr %171, i32 0, i32 1
  store ptr %157, ptr %172, align 4
  store ptr %171, ptr %157, align 4
  store ptr %4, ptr %168, align 4
  store volatile ptr %157, ptr %4, align 8
  %173 = getelementptr i8, ptr %157, i32 12
  %174 = load i32, ptr %173, align 8
  %175 = ptrtoint ptr %173 to i32
  %176 = icmp eq i32 %174, %175
  br i1 %176, label %180, label %177

177:                                              ; preds = %167
  %178 = load ptr, ptr %158, align 8
  %179 = getelementptr inbounds %struct.nfs_server, ptr %178, i32 0, i32 47
  call void @rb_erase(ptr noundef %173, ptr noundef %179) #16
  br label %180

180:                                              ; preds = %177, %167
  %181 = icmp eq ptr %159, %153
  br i1 %181, label %182, label %156

182:                                              ; preds = %180, %156, %144
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  %183 = load i16, ptr %148, align 4
  %184 = add i16 %183, 1
  store i16 %184, ptr %148, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !20
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !21
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  %185 = load ptr, ptr %4, align 8
  %186 = icmp eq ptr %185, %4
  br i1 %186, label %209, label %187

187:                                              ; preds = %203, %182
  %188 = phi ptr [ %190, %203 ], [ %185, %182 ]
  %189 = getelementptr i8, ptr %188, i32 -4
  %190 = load ptr, ptr %188, align 4
  %191 = getelementptr inbounds %struct.list_head, ptr %188, i32 0, i32 1
  %192 = load ptr, ptr %191, align 4
  %193 = getelementptr inbounds %struct.list_head, ptr %190, i32 0, i32 1
  store ptr %192, ptr %193, align 4
  store volatile ptr %190, ptr %192, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %188, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %191, align 4
  %194 = getelementptr i8, ptr %188, i32 84
  call void @rpc_destroy_wait_queue(ptr noundef %194) #16
  %195 = getelementptr i8, ptr %188, i32 24
  %196 = load ptr, ptr %195, align 4
  %197 = icmp eq ptr %196, null
  br i1 %197, label %203, label %198

198:                                              ; preds = %187
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !23
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %196) #16, !srcloc !11
  %199 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %196, ptr nonnull %196, i32 1, ptr nonnull elementtype(i32) %196) #16, !srcloc !24
  %200 = extractvalue { i32, i32 } %199, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !25
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %198
  call void @__put_cred(ptr noundef nonnull %196) #16
  br label %203

203:                                              ; preds = %202, %198, %187
  %204 = load ptr, ptr %189, align 8
  %205 = getelementptr inbounds %struct.nfs_server, ptr %204, i32 0, i32 48
  %206 = getelementptr i8, ptr %188, i32 60
  %207 = load i32, ptr %206, align 8
  call void @ida_free(ptr noundef %205, i32 noundef %207) #16
  call void @kfree(ptr noundef %189) #16
  %208 = icmp eq ptr %190, %4
  br i1 %208, label %209, label %187

209:                                              ; preds = %203, %182
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  ret ptr %145
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs4_put_state_owner(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.nfs4_state_owner, ptr %0, i32 0, i32 6
  %5 = getelementptr inbounds %struct.nfs_client, ptr %3, i32 0, i32 23
  %6 = tail call i32 @_atomic_dec_and_lock(ptr noundef %4, ptr noundef %5) #16
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %18, label %8

8:                                                ; preds = %1
  %9 = load volatile i32, ptr @jiffies, align 64
  %10 = getelementptr inbounds %struct.nfs4_state_owner, ptr %0, i32 0, i32 2
  store i32 %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.nfs4_state_owner, ptr %0, i32 0, i32 1
  %12 = getelementptr inbounds %struct.nfs_server, ptr %2, i32 0, i32 50
  %13 = getelementptr inbounds %struct.nfs_server, ptr %2, i32 0, i32 50, i32 1
  %14 = load ptr, ptr %13, align 4
  store ptr %11, ptr %13, align 4
  store ptr %12, ptr %11, align 4
  %15 = getelementptr inbounds %struct.nfs4_state_owner, ptr %0, i32 0, i32 1, i32 1
  store ptr %14, ptr %15, align 4
  store volatile ptr %11, ptr %14, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  %16 = load i16, ptr %5, align 4
  %17 = add i16 %16, 1
  store i16 %17, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !20
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !21
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  br label %18

18:                                               ; preds = %8, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_atomic_dec_and_lock(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs4_purge_state_owners(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.nfs_client, ptr %3, i32 0, i32 23
  tail call void @_raw_spin_lock(ptr noundef %4) #16
  %5 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 50
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %26, label %8

8:                                                ; preds = %24, %2
  %9 = phi ptr [ %10, %24 ], [ %6, %2 ]
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  store ptr %12, ptr %13, align 4
  store volatile ptr %10, ptr %12, align 4
  %14 = load ptr, ptr %1, align 4
  %15 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  store ptr %9, ptr %15, align 4
  store ptr %14, ptr %9, align 4
  store ptr %1, ptr %11, align 4
  store volatile ptr %9, ptr %1, align 4
  %16 = getelementptr i8, ptr %9, i32 12
  %17 = load i32, ptr %16, align 8
  %18 = ptrtoint ptr %16 to i32
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %8
  %21 = getelementptr i8, ptr %9, i32 -4
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.nfs_server, ptr %22, i32 0, i32 47
  tail call void @rb_erase(ptr noundef %16, ptr noundef %23) #16
  br label %24

24:                                               ; preds = %20, %8
  %25 = icmp eq ptr %10, %5
  br i1 %25, label %26, label %8

26:                                               ; preds = %24, %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  %27 = load i16, ptr %4, align 4
  %28 = add i16 %27, 1
  store i16 %28, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !20
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !21
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs4_free_state_owners(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = icmp eq ptr %2, %0
  br i1 %3, label %26, label %4

4:                                                ; preds = %20, %1
  %5 = phi ptr [ %7, %20 ], [ %2, %1 ]
  %6 = getelementptr i8, ptr %5, i32 -4
  %7 = load ptr, ptr %5, align 4
  %8 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %9, ptr %10, align 4
  store volatile ptr %7, ptr %9, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %5, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %8, align 4
  %11 = getelementptr i8, ptr %5, i32 84
  tail call void @rpc_destroy_wait_queue(ptr noundef %11) #16
  %12 = getelementptr i8, ptr %5, i32 24
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !23
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %13) #16, !srcloc !11
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %13, ptr nonnull %13, i32 1, ptr nonnull elementtype(i32) %13) #16, !srcloc !24
  %17 = extractvalue { i32, i32 } %16, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !25
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  tail call void @__put_cred(ptr noundef nonnull %13) #16
  br label %20

20:                                               ; preds = %19, %15, %4
  %21 = load ptr, ptr %6, align 8
  %22 = getelementptr inbounds %struct.nfs_server, ptr %21, i32 0, i32 48
  %23 = getelementptr i8, ptr %5, i32 60
  %24 = load i32, ptr %23, align 8
  tail call void @ida_free(ptr noundef %22, i32 noundef %24) #16
  tail call void @kfree(ptr noundef %6) #16
  %25 = icmp eq ptr %7, %0
  br i1 %25, label %26, label %4

26:                                               ; preds = %20, %1
  ret void
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs4_state_set_mode_locked(ptr noundef %0, i32 noundef %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.nfs4_state, ptr %0, i32 0, i32 13
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, %1
  br i1 %5, label %30, label %6

6:                                                ; preds = %2
  %7 = and i32 %1, 2
  %8 = and i32 %4, 2
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %29, label %10

10:                                               ; preds = %6
  %11 = icmp eq i32 %7, 0
  %12 = getelementptr inbounds %struct.nfs4_state, ptr %0, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.nfs4_state_owner, ptr %13, i32 0, i32 8
  %15 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = load ptr, ptr %0, align 4
  %18 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  store ptr %16, ptr %18, align 4
  store volatile ptr %17, ptr %16, align 4
  br i1 %11, label %22, label %19

19:                                               ; preds = %10
  %20 = load ptr, ptr %14, align 4
  %21 = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  br label %25

22:                                               ; preds = %10
  %23 = getelementptr inbounds %struct.nfs4_state_owner, ptr %13, i32 0, i32 8, i32 1
  %24 = load ptr, ptr %23, align 4
  br label %25

25:                                               ; preds = %22, %19
  %26 = phi ptr [ %21, %19 ], [ %23, %22 ]
  %27 = phi ptr [ %20, %19 ], [ %14, %22 ]
  %28 = phi ptr [ %14, %19 ], [ %24, %22 ]
  store ptr %0, ptr %26, align 4
  store ptr %27, ptr %0, align 4
  store ptr %28, ptr %15, align 4
  store volatile ptr %0, ptr %28, align 4
  br label %29

29:                                               ; preds = %25, %6
  store i32 %1, ptr %3, align 4
  br label %30

30:                                               ; preds = %29, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nfs4_get_open_state(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !8
  %3 = getelementptr i8, ptr %0, i32 -60
  %4 = load volatile ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %3
  br i1 %5, label %43, label %6

6:                                                ; preds = %40, %2
  %7 = phi ptr [ %41, %40 ], [ %4, %2 ]
  %8 = getelementptr i8, ptr %7, i32 16
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %1
  br i1 %10, label %11, label %40

11:                                               ; preds = %6
  %12 = getelementptr i8, ptr %7, i32 24
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %13, 512
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %40

16:                                               ; preds = %11
  %17 = getelementptr i8, ptr %7, i32 96
  %18 = load volatile i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %32, label %20

20:                                               ; preds = %30, %16
  %21 = phi i32 [ %28, %30 ], [ %18, %16 ]
  %22 = add i32 %21, 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %17) #16, !srcloc !11
  br label %23

23:                                               ; preds = %23, %20
  %24 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %17, ptr %17, i32 %21, i32 %22, ptr elementtype(i32) %17) #16, !srcloc !26
  %25 = extractvalue { i32, i32 } %24, 0
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %23

27:                                               ; preds = %23
  %28 = extractvalue { i32, i32 } %24, 1
  %29 = icmp eq i32 %28, %21
  br i1 %29, label %32, label %30, !prof !14

30:                                               ; preds = %27
  %31 = icmp eq i32 %28, 0
  br i1 %31, label %32, label %20

32:                                               ; preds = %30, %27, %16
  %33 = phi i32 [ 0, %16 ], [ %21, %27 ], [ 0, %30 ]
  %34 = add i32 %33, 1
  %35 = or i32 %34, %33
  %36 = icmp sgt i32 %35, -1
  br i1 %36, label %38, label %37, !prof !14

37:                                               ; preds = %32
  tail call void @refcount_warn_saturate(ptr noundef %17, i32 noundef 0) #16
  br label %38

38:                                               ; preds = %37, %32
  %39 = icmp eq i32 %33, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %38, %11, %6
  %41 = load volatile ptr, ptr %7, align 4
  %42 = icmp eq ptr %41, %3
  br i1 %42, label %43, label %6

43:                                               ; preds = %40, %2
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !9
  br label %47

44:                                               ; preds = %38
  %45 = getelementptr i8, ptr %7, i32 -8
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !9
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %132

47:                                               ; preds = %44, %43
  %48 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %49 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %48, i32 noundef 3392, i32 noundef 128) #18
  %50 = icmp eq ptr %49, null
  br i1 %50, label %59, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.nfs4_state, ptr %49, i32 0, i32 14
  store volatile i32 1, ptr %52, align 8
  %53 = getelementptr inbounds %struct.nfs4_state, ptr %49, i32 0, i32 2
  store volatile ptr %53, ptr %53, align 8
  %54 = getelementptr inbounds %struct.nfs4_state, ptr %49, i32 0, i32 2, i32 1
  store ptr %53, ptr %54, align 4
  %55 = getelementptr inbounds %struct.nfs4_state, ptr %49, i32 0, i32 6
  store i32 0, ptr %55, align 4
  %56 = getelementptr inbounds %struct.nfs4_state, ptr %49, i32 0, i32 7
  %57 = getelementptr inbounds %struct.nfs4_state, ptr %49, i32 0, i32 7, i32 1
  store i32 0, ptr %57, align 4
  store i32 0, ptr %56, align 8
  %58 = getelementptr inbounds %struct.nfs4_state, ptr %49, i32 0, i32 15
  tail call void @__init_waitqueue_head(ptr noundef %58, ptr noundef nonnull @.str.7, ptr noundef nonnull @nfs4_alloc_open_state.__key) #16
  br label %59

59:                                               ; preds = %51, %47
  %60 = getelementptr inbounds %struct.nfs4_state_owner, ptr %1, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %60) #16
  %61 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %61) #16
  %62 = load volatile ptr, ptr %3, align 4
  %63 = icmp eq ptr %62, %3
  br i1 %63, label %103, label %64

64:                                               ; preds = %98, %59
  %65 = phi ptr [ %99, %98 ], [ %62, %59 ]
  %66 = getelementptr i8, ptr %65, i32 16
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, %1
  br i1 %68, label %69, label %98

69:                                               ; preds = %64
  %70 = getelementptr i8, ptr %65, i32 24
  %71 = load volatile i32, ptr %70, align 4
  %72 = and i32 %71, 512
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %98

74:                                               ; preds = %69
  %75 = getelementptr i8, ptr %65, i32 96
  %76 = load volatile i32, ptr %75, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %90, label %78

78:                                               ; preds = %88, %74
  %79 = phi i32 [ %86, %88 ], [ %76, %74 ]
  %80 = add i32 %79, 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %75) #16, !srcloc !11
  br label %81

81:                                               ; preds = %81, %78
  %82 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %75, ptr %75, i32 %79, i32 %80, ptr elementtype(i32) %75) #16, !srcloc !26
  %83 = extractvalue { i32, i32 } %82, 0
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %81

85:                                               ; preds = %81
  %86 = extractvalue { i32, i32 } %82, 1
  %87 = icmp eq i32 %86, %79
  br i1 %87, label %90, label %88, !prof !14

88:                                               ; preds = %85
  %89 = icmp eq i32 %86, 0
  br i1 %89, label %90, label %78

90:                                               ; preds = %88, %85, %74
  %91 = phi i32 [ 0, %74 ], [ %79, %85 ], [ 0, %88 ]
  %92 = add i32 %91, 1
  %93 = or i32 %92, %91
  %94 = icmp sgt i32 %93, -1
  br i1 %94, label %96, label %95, !prof !14

95:                                               ; preds = %90
  tail call void @refcount_warn_saturate(ptr noundef %75, i32 noundef 0) #16
  br label %96

96:                                               ; preds = %95, %90
  %97 = icmp eq i32 %91, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %96, %69, %64
  %99 = load volatile ptr, ptr %65, align 4
  %100 = icmp eq ptr %99, %3
  br i1 %100, label %103, label %64

101:                                              ; preds = %96
  %102 = getelementptr i8, ptr %65, i32 -8
  br label %103

103:                                              ; preds = %101, %98, %59
  %104 = phi ptr [ %102, %101 ], [ null, %59 ], [ null, %98 ]
  %105 = icmp eq ptr %104, null
  %106 = icmp ne ptr %49, null
  %107 = select i1 %105, i1 %106, i1 false
  br i1 %107, label %108, label %125

108:                                              ; preds = %103
  %109 = getelementptr inbounds %struct.nfs4_state, ptr %49, i32 0, i32 3
  store ptr %1, ptr %109, align 8
  %110 = getelementptr inbounds %struct.nfs4_state_owner, ptr %1, i32 0, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %110) #16, !srcloc !11
  %111 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %110, ptr %110, i32 1, ptr elementtype(i32) %110) #16, !srcloc !18
  tail call void @ihold(ptr noundef %0) #16
  %112 = getelementptr inbounds %struct.nfs4_state, ptr %49, i32 0, i32 4
  store ptr %0, ptr %112, align 4
  %113 = getelementptr inbounds %struct.nfs4_state, ptr %49, i32 0, i32 1
  %114 = load ptr, ptr %3, align 4
  store ptr %114, ptr %113, align 8
  %115 = getelementptr inbounds %struct.nfs4_state, ptr %49, i32 0, i32 1, i32 1
  store ptr %3, ptr %115, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !27
  store volatile ptr %113, ptr %3, align 4
  %116 = getelementptr inbounds %struct.list_head, ptr %114, i32 0, i32 1
  store ptr %113, ptr %116, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  %117 = load i16, ptr %61, align 4
  %118 = add i16 %117, 1
  store i16 %118, ptr %61, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !20
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !21
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  %119 = getelementptr inbounds %struct.nfs4_state_owner, ptr %1, i32 0, i32 8
  %120 = getelementptr inbounds %struct.nfs4_state_owner, ptr %1, i32 0, i32 8, i32 1
  %121 = load ptr, ptr %120, align 4
  store ptr %49, ptr %120, align 4
  store ptr %119, ptr %49, align 8
  %122 = getelementptr inbounds %struct.list_head, ptr %49, i32 0, i32 1
  store ptr %121, ptr %122, align 4
  store volatile ptr %49, ptr %121, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  %123 = load i16, ptr %60, align 4
  %124 = add i16 %123, 1
  store i16 %124, ptr %60, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !20
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !21
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  br label %132

125:                                              ; preds = %103
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  %126 = load i16, ptr %61, align 4
  %127 = add i16 %126, 1
  store i16 %127, ptr %61, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !20
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !21
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  %128 = load i16, ptr %60, align 4
  %129 = add i16 %128, 1
  store i16 %129, ptr %60, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !20
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !21
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  br i1 %106, label %130, label %132

130:                                              ; preds = %125
  %131 = getelementptr inbounds %struct.nfs4_state, ptr %49, i32 0, i32 16
  tail call void @kvfree_call_rcu(ptr noundef %131, ptr noundef nonnull inttoptr (i32 120 to ptr)) #16
  br label %132

132:                                              ; preds = %130, %125, %108, %44
  %133 = phi ptr [ %45, %44 ], [ %49, %108 ], [ %104, %130 ], [ %104, %125 ]
  ret ptr %133
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ihold(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs4_put_open_state(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nfs4_state, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nfs4_state, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nfs4_state, ptr %0, i32 0, i32 14
  %7 = getelementptr inbounds %struct.nfs4_state_owner, ptr %5, i32 0, i32 5
  %8 = tail call zeroext i1 @refcount_dec_and_lock(ptr noundef %6, ptr noundef %7) #16
  br i1 %8, label %9, label %44

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %10) #16
  %11 = getelementptr inbounds %struct.nfs4_state, ptr %0, i32 0, i32 1
  %12 = getelementptr inbounds %struct.nfs4_state, ptr %0, i32 0, i32 1, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %11, align 4
  %15 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  store ptr %13, ptr %15, align 4
  store volatile ptr %14, ptr %13, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %12, align 4
  %16 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = load ptr, ptr %0, align 4
  %19 = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  store ptr %17, ptr %19, align 4
  store volatile ptr %18, ptr %17, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %0, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %16, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  %20 = load i16, ptr %10, align 4
  %21 = add i16 %20, 1
  store i16 %21, ptr %10, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !20
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !21
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  %22 = load i16, ptr %7, align 4
  %23 = add i16 %22, 1
  store i16 %23, ptr %7, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !20
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !21
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  tail call void @nfs4_inode_return_delegation_on_close(ptr noundef %3) #16
  tail call void @iput(ptr noundef %3) #16
  %24 = icmp eq ptr %0, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %9
  %26 = getelementptr inbounds %struct.nfs4_state, ptr %0, i32 0, i32 16
  tail call void @kvfree_call_rcu(ptr noundef %26, ptr noundef nonnull inttoptr (i32 120 to ptr)) #16
  br label %27

27:                                               ; preds = %25, %9
  %28 = load ptr, ptr %5, align 8
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds %struct.nfs4_state_owner, ptr %5, i32 0, i32 6
  %31 = getelementptr inbounds %struct.nfs_client, ptr %29, i32 0, i32 23
  %32 = tail call i32 @_atomic_dec_and_lock(ptr noundef %30, ptr noundef %31) #16
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %44, label %34

34:                                               ; preds = %27
  %35 = load volatile i32, ptr @jiffies, align 64
  %36 = getelementptr inbounds %struct.nfs4_state_owner, ptr %5, i32 0, i32 2
  store i32 %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.nfs4_state_owner, ptr %5, i32 0, i32 1
  %38 = getelementptr inbounds %struct.nfs_server, ptr %28, i32 0, i32 50
  %39 = getelementptr inbounds %struct.nfs_server, ptr %28, i32 0, i32 50, i32 1
  %40 = load ptr, ptr %39, align 4
  store ptr %37, ptr %39, align 4
  store ptr %38, ptr %37, align 4
  %41 = getelementptr inbounds %struct.nfs4_state_owner, ptr %5, i32 0, i32 1, i32 1
  store ptr %40, ptr %41, align 4
  store volatile ptr %37, ptr %40, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  %42 = load i16, ptr %31, align 4
  %43 = add i16 %42, 1
  store i16 %43, ptr %31, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !20
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !21
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  br label %44

44:                                               ; preds = %34, %27, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @refcount_dec_and_lock(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs4_inode_return_delegation_on_close(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs4_close_state(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call fastcc void @__nfs4_close(ptr noundef %0, i32 noundef %1, i32 noundef 3136, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__nfs4_close(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.nfs4_state, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nfs4_state_owner, ptr %6, i32 0, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #16, !srcloc !11
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 1, ptr elementtype(i32) %7) #16, !srcloc !18
  %9 = getelementptr inbounds %struct.nfs4_state_owner, ptr %6, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %9) #16
  %10 = and i32 %1, 3
  switch i32 %10, label %21 [
    i32 1, label %11
    i32 2, label %13
    i32 3, label %15
  ]

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.nfs4_state, ptr %0, i32 0, i32 10
  br label %17

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.nfs4_state, ptr %0, i32 0, i32 11
  br label %17

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.nfs4_state, ptr %0, i32 0, i32 12
  br label %17

17:                                               ; preds = %15, %13, %11
  %18 = phi ptr [ %16, %15 ], [ %14, %13 ], [ %12, %11 ]
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, -1
  store i32 %20, ptr %18, align 4
  br label %21

21:                                               ; preds = %17, %4
  %22 = getelementptr inbounds %struct.nfs4_state, ptr %0, i32 0, i32 12
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %56

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.nfs4_state, ptr %0, i32 0, i32 10
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.nfs4_state, ptr %0, i32 0, i32 5
  %31 = load volatile i32, ptr %30, align 4
  %32 = lshr i32 %31, 3
  %33 = load volatile i32, ptr %30, align 4
  %34 = lshr i32 %33, 5
  %35 = or i32 %34, %32
  %36 = and i32 %35, 1
  br label %37

37:                                               ; preds = %29, %25
  %38 = phi i32 [ %36, %29 ], [ 0, %25 ]
  %39 = phi i32 [ 2, %29 ], [ 3, %25 ]
  %40 = getelementptr inbounds %struct.nfs4_state, ptr %0, i32 0, i32 11
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %37
  %44 = and i32 %39, 1
  %45 = getelementptr inbounds %struct.nfs4_state, ptr %0, i32 0, i32 5
  %46 = load volatile i32, ptr %45, align 4
  %47 = lshr i32 %46, 4
  %48 = and i32 %47, 1
  %49 = or i32 %48, %38
  %50 = load volatile i32, ptr %45, align 4
  %51 = lshr i32 %50, 5
  %52 = and i32 %51, 1
  %53 = or i32 %49, %52
  %54 = icmp eq i32 %44, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %43
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %45) #16
  br label %56

56:                                               ; preds = %55, %43, %37, %21
  %57 = phi i32 [ %53, %55 ], [ %53, %43 ], [ 0, %21 ], [ %38, %37 ]
  %58 = phi i32 [ 0, %55 ], [ 1, %43 ], [ 3, %21 ], [ %39, %37 ]
  %59 = getelementptr inbounds %struct.nfs4_state, ptr %0, i32 0, i32 13
  %60 = load i32, ptr %59, align 4
  %61 = icmp eq i32 %60, %58
  br i1 %61, label %85, label %62

62:                                               ; preds = %56
  %63 = and i32 %58, 2
  %64 = and i32 %60, 2
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %84, label %66

66:                                               ; preds = %62
  %67 = icmp eq i32 %63, 0
  %68 = load ptr, ptr %5, align 4
  %69 = getelementptr inbounds %struct.nfs4_state_owner, ptr %68, i32 0, i32 8
  %70 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %71 = load ptr, ptr %70, align 4
  %72 = load ptr, ptr %0, align 4
  %73 = getelementptr inbounds %struct.list_head, ptr %72, i32 0, i32 1
  store ptr %71, ptr %73, align 4
  store volatile ptr %72, ptr %71, align 4
  br i1 %67, label %77, label %74

74:                                               ; preds = %66
  %75 = load ptr, ptr %69, align 4
  %76 = getelementptr inbounds %struct.list_head, ptr %75, i32 0, i32 1
  br label %80

77:                                               ; preds = %66
  %78 = getelementptr inbounds %struct.nfs4_state_owner, ptr %68, i32 0, i32 8, i32 1
  %79 = load ptr, ptr %78, align 4
  br label %80

80:                                               ; preds = %77, %74
  %81 = phi ptr [ %76, %74 ], [ %78, %77 ]
  %82 = phi ptr [ %75, %74 ], [ %69, %77 ]
  %83 = phi ptr [ %69, %74 ], [ %79, %77 ]
  store ptr %0, ptr %81, align 4
  store ptr %82, ptr %0, align 4
  store ptr %83, ptr %70, align 4
  store volatile ptr %0, ptr %83, align 4
  br label %84

84:                                               ; preds = %80, %62
  store i32 %58, ptr %59, align 4
  br label %85

85:                                               ; preds = %84, %56
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  %86 = load i16, ptr %9, align 4
  %87 = add i16 %86, 1
  store i16 %87, ptr %9, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !20
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !21
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  %88 = icmp eq i32 %57, 0
  br i1 %88, label %89, label %105

89:                                               ; preds = %85
  tail call void @nfs4_put_open_state(ptr noundef %0)
  %90 = load ptr, ptr %6, align 8
  %91 = load ptr, ptr %90, align 8
  %92 = getelementptr inbounds %struct.nfs_client, ptr %91, i32 0, i32 23
  %93 = tail call i32 @_atomic_dec_and_lock(ptr noundef %7, ptr noundef %92) #16
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %107, label %95

95:                                               ; preds = %89
  %96 = load volatile i32, ptr @jiffies, align 64
  %97 = getelementptr inbounds %struct.nfs4_state_owner, ptr %6, i32 0, i32 2
  store i32 %96, ptr %97, align 4
  %98 = getelementptr inbounds %struct.nfs4_state_owner, ptr %6, i32 0, i32 1
  %99 = getelementptr inbounds %struct.nfs_server, ptr %90, i32 0, i32 50
  %100 = getelementptr inbounds %struct.nfs_server, ptr %90, i32 0, i32 50, i32 1
  %101 = load ptr, ptr %100, align 4
  store ptr %98, ptr %100, align 4
  store ptr %99, ptr %98, align 4
  %102 = getelementptr inbounds %struct.nfs4_state_owner, ptr %6, i32 0, i32 1, i32 1
  store ptr %101, ptr %102, align 4
  store volatile ptr %98, ptr %101, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  %103 = load i16, ptr %92, align 4
  %104 = add i16 %103, 1
  store i16 %104, ptr %92, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !20
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !21
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  br label %107

105:                                              ; preds = %85
  %106 = tail call i32 @nfs4_do_close(ptr noundef %0, i32 noundef %2, i32 noundef %3) #16
  br label %107

107:                                              ; preds = %105, %95, %89
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs4_close_sync(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call fastcc void @__nfs4_close(ptr noundef %0, i32 noundef %1, i32 noundef 3264, i32 noundef 1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs4_free_lock_state(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 49
  %4 = getelementptr inbounds %struct.nfs4_lock_state, ptr %1, i32 0, i32 3, i32 1
  %5 = load i32, ptr %4, align 8
  tail call void @ida_free(ptr noundef %3, i32 noundef %5) #16
  %6 = getelementptr inbounds %struct.nfs4_lock_state, ptr %1, i32 0, i32 3, i32 6
  tail call void @rpc_destroy_wait_queue(ptr noundef %6) #16
  tail call void @kfree(ptr noundef %1) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs4_put_lock_state(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %40, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.nfs4_lock_state, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.nfs4_lock_state, ptr %0, i32 0, i32 5
  %7 = getelementptr inbounds %struct.nfs4_state, ptr %5, i32 0, i32 6
  %8 = tail call zeroext i1 @refcount_dec_and_lock(ptr noundef %6, ptr noundef %7) #16
  br i1 %8, label %9, label %40

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %0, align 4
  %13 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  store ptr %11, ptr %13, align 4
  store volatile ptr %12, ptr %11, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %0, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %10, align 4
  %14 = getelementptr inbounds %struct.nfs4_state, ptr %5, i32 0, i32 2
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %14
  br i1 %16, label %17, label %19

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.nfs4_state, ptr %5, i32 0, i32 5
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %18) #16
  br label %19

19:                                               ; preds = %17, %9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  %20 = load i16, ptr %7, align 4
  %21 = add i16 %20, 1
  store i16 %21, ptr %7, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !20
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !21
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  %22 = getelementptr inbounds %struct.nfs4_state, ptr %5, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.nfs4_lock_state, ptr %0, i32 0, i32 2
  %26 = load volatile i32, ptr %25, align 4
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %19
  %30 = load ptr, ptr %24, align 8
  %31 = getelementptr inbounds %struct.nfs_client, ptr %30, i32 0, i32 31
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr inbounds %struct.nfs4_minor_version_ops, ptr %32, i32 0, i32 6
  %34 = load ptr, ptr %33, align 4
  tail call void %34(ptr noundef %24, ptr noundef nonnull %0) #16
  br label %40

35:                                               ; preds = %19
  %36 = getelementptr inbounds %struct.nfs_server, ptr %24, i32 0, i32 49
  %37 = getelementptr inbounds %struct.nfs4_lock_state, ptr %0, i32 0, i32 3, i32 1
  %38 = load i32, ptr %37, align 8
  tail call void @ida_free(ptr noundef %36, i32 noundef %38) #16
  %39 = getelementptr inbounds %struct.nfs4_lock_state, ptr %0, i32 0, i32 3, i32 6
  tail call void @rpc_destroy_wait_queue(ptr noundef %39) #16
  tail call void @kfree(ptr noundef nonnull %0) #16
  br label %40

40:                                               ; preds = %35, %29, %3, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs4_set_lock_state(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.file_lock, ptr %1, i32 0, i32 17
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %89

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.file_lock, ptr %1, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nfs4_state, ptr %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.nfs4_state, ptr %0, i32 0, i32 2
  %11 = getelementptr inbounds %struct.nfs4_state, ptr %0, i32 0, i32 3
  br label %12

12:                                               ; preds = %72, %6
  %13 = phi ptr [ null, %6 ], [ %53, %72 ]
  tail call void @_raw_spin_lock(ptr noundef %9) #16
  %14 = load ptr, ptr %10, align 4
  %15 = icmp eq ptr %14, %10
  br i1 %15, label %41, label %16

16:                                               ; preds = %22, %12
  %17 = phi ptr [ %25, %22 ], [ %14, %12 ]
  %18 = phi ptr [ %24, %22 ], [ null, %12 ]
  %19 = getelementptr inbounds %struct.nfs4_lock_state, ptr %17, i32 0, i32 6
  %20 = load ptr, ptr %19, align 8
  %21 = icmp eq ptr %20, %8
  br i1 %21, label %27, label %22

22:                                               ; preds = %16
  %23 = icmp eq ptr %20, null
  %24 = select i1 %23, ptr %17, ptr %18
  %25 = load ptr, ptr %17, align 4
  %26 = icmp eq ptr %25, %10
  br i1 %26, label %27, label %16

27:                                               ; preds = %22, %16
  %28 = phi ptr [ %24, %22 ], [ %17, %16 ]
  %29 = icmp eq ptr %28, null
  br i1 %29, label %41, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.nfs4_lock_state, ptr %28, i32 0, i32 5
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %31) #16, !srcloc !11
  %32 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %31, ptr %31, i32 1, ptr elementtype(i32) %31) #16, !srcloc !12
  %33 = extractvalue { i32, i32, i32 } %32, 0
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %39, label %35, !prof !13

35:                                               ; preds = %30
  %36 = add i32 %33, 1
  %37 = or i32 %36, %33
  %38 = icmp sgt i32 %37, -1
  br i1 %38, label %74, label %39, !prof !14

39:                                               ; preds = %35, %30
  %40 = phi i32 [ 2, %30 ], [ 1, %35 ]
  tail call void @refcount_warn_saturate(ptr noundef %31, i32 noundef %40) #16
  br label %74

41:                                               ; preds = %27, %12
  %42 = icmp eq ptr %13, null
  br i1 %42, label %47, label %43

43:                                               ; preds = %41
  %44 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  store ptr %13, ptr %44, align 4
  store ptr %14, ptr %13, align 8
  %45 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  store ptr %10, ptr %45, align 4
  store volatile ptr %13, ptr %10, align 4
  %46 = getelementptr inbounds %struct.nfs4_state, ptr %0, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 0, ptr noundef %46) #16
  br label %74

47:                                               ; preds = %41
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  %48 = load i16, ptr %9, align 4
  %49 = add i16 %48, 1
  store i16 %49, ptr %9, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !20
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !21
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  %50 = load ptr, ptr %11, align 4
  %51 = load ptr, ptr %50, align 8
  %52 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %53 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %52, i32 noundef 3392, i32 noundef 184) #18
  %54 = icmp eq ptr %53, null
  br i1 %54, label %89, label %55

55:                                               ; preds = %47
  %56 = getelementptr inbounds %struct.nfs4_lock_state, ptr %53, i32 0, i32 3
  %57 = tail call i64 @ktime_get() #16
  store i64 %57, ptr %56, align 8
  %58 = getelementptr inbounds %struct.nfs4_lock_state, ptr %53, i32 0, i32 3, i32 2
  store i32 0, ptr %58, align 4
  %59 = getelementptr inbounds %struct.nfs4_lock_state, ptr %53, i32 0, i32 3, i32 3
  store i32 0, ptr %59, align 8
  %60 = getelementptr inbounds %struct.nfs4_lock_state, ptr %53, i32 0, i32 3, i32 4
  store i32 0, ptr %60, align 4
  %61 = getelementptr inbounds %struct.nfs4_lock_state, ptr %53, i32 0, i32 3, i32 5
  store volatile ptr %61, ptr %61, align 8
  %62 = getelementptr inbounds %struct.nfs4_lock_state, ptr %53, i32 0, i32 3, i32 5, i32 1
  store ptr %61, ptr %62, align 4
  %63 = getelementptr inbounds %struct.nfs4_lock_state, ptr %53, i32 0, i32 3, i32 6
  tail call void @rpc_init_wait_queue(ptr noundef %63, ptr noundef nonnull @.str.6) #16
  %64 = getelementptr inbounds %struct.nfs4_lock_state, ptr %53, i32 0, i32 5
  store volatile i32 1, ptr %64, align 4
  %65 = getelementptr inbounds %struct.nfs4_lock_state, ptr %53, i32 0, i32 1
  store ptr %0, ptr %65, align 8
  %66 = getelementptr inbounds %struct.nfs4_lock_state, ptr %53, i32 0, i32 6
  store ptr %8, ptr %66, align 8
  %67 = getelementptr inbounds %struct.nfs_server, ptr %51, i32 0, i32 49
  %68 = tail call i32 @ida_alloc_range(ptr noundef %67, i32 noundef 0, i32 noundef -1, i32 noundef 3136) #16
  %69 = getelementptr inbounds %struct.nfs4_lock_state, ptr %53, i32 0, i32 3, i32 1
  store i32 %68, ptr %69, align 8
  %70 = icmp slt i32 %68, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %55
  tail call void @kfree(ptr noundef nonnull %53) #16
  br label %89

72:                                               ; preds = %55
  store volatile ptr %53, ptr %53, align 8
  %73 = getelementptr inbounds %struct.list_head, ptr %53, i32 0, i32 1
  store ptr %53, ptr %73, align 4
  br label %12

74:                                               ; preds = %43, %39, %35
  %75 = phi ptr [ %13, %43 ], [ %28, %39 ], [ %28, %35 ]
  %76 = phi ptr [ null, %43 ], [ %13, %39 ], [ %13, %35 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  %77 = load i16, ptr %9, align 4
  %78 = add i16 %77, 1
  store i16 %78, ptr %9, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !20
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !21
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  %79 = icmp eq ptr %76, null
  br i1 %79, label %87, label %80

80:                                               ; preds = %74
  %81 = load ptr, ptr %11, align 4
  %82 = load ptr, ptr %81, align 8
  %83 = getelementptr inbounds %struct.nfs_server, ptr %82, i32 0, i32 49
  %84 = getelementptr inbounds %struct.nfs4_lock_state, ptr %76, i32 0, i32 3, i32 1
  %85 = load i32, ptr %84, align 8
  tail call void @ida_free(ptr noundef %83, i32 noundef %85) #16
  %86 = getelementptr inbounds %struct.nfs4_lock_state, ptr %76, i32 0, i32 3, i32 6
  tail call void @rpc_destroy_wait_queue(ptr noundef %86) #16
  tail call void @kfree(ptr noundef nonnull %76) #16
  br label %87

87:                                               ; preds = %80, %74
  %88 = getelementptr inbounds %struct.file_lock, ptr %1, i32 0, i32 19
  store ptr %75, ptr %88, align 4
  store ptr @nfs4_fl_lock_ops, ptr %3, align 4
  br label %89

89:                                               ; preds = %87, %71, %47, %2
  %90 = phi i32 [ 0, %87 ], [ 0, %2 ], [ -12, %71 ], [ -12, %47 ]
  ret i32 %90
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @nfs4_copy_open_stateid(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nfs4_state, ptr %1, i32 0, i32 7
  %4 = getelementptr inbounds %struct.nfs4_state, ptr %1, i32 0, i32 5
  %5 = getelementptr inbounds %struct.nfs4_state, ptr %1, i32 0, i32 9
  %6 = getelementptr inbounds %struct.nfs4_stateid_struct, ptr %0, i32 0, i32 1
  br label %7

7:                                                ; preds = %15, %2
  %8 = load volatile i32, ptr %3, align 4
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %11, %7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !28
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #16, !srcloc !29
  %12 = load volatile i32, ptr %3, align 4
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %11

15:                                               ; preds = %11, %7
  %16 = phi i32 [ %8, %7 ], [ %12, %11 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !30
  %17 = load volatile i32, ptr %4, align 4
  %18 = and i32 %17, 4
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %19, ptr @zero_stateid, ptr %5
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %0, ptr noundef align 4 dereferenceable(16) %20, i32 16, i1 false) #16
  %21 = getelementptr inbounds %struct.nfs4_stateid_struct, ptr %20, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  store i32 %22, ptr %6, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !31
  %23 = load volatile i32, ptr %3, align 4
  %24 = icmp eq i32 %23, %16
  br i1 %24, label %25, label %7

25:                                               ; preds = %15
  %26 = xor i1 %19, true
  ret i1 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs4_select_rw_stateid(ptr noundef %0, i32 noundef %1, ptr noundef readonly %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.nfs4_state, ptr %0, i32 0, i32 5
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 512
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %123

10:                                               ; preds = %5
  %11 = icmp eq ptr %4, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %10
  store ptr null, ptr %4, align 4
  br label %13

13:                                               ; preds = %12, %10
  %14 = icmp eq ptr %2, null
  br i1 %14, label %82, label %15

15:                                               ; preds = %13
  %16 = load volatile i32, ptr %6, align 4
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %82, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.nfs_lock_context, ptr %2, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.nfs_lock_context, ptr %2, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.nfs_open_context, ptr %23, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.nfs4_state, ptr %0, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %26) #16
  %27 = getelementptr inbounds %struct.nfs4_state, ptr %0, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, %27
  br i1 %29, label %69, label %30

30:                                               ; preds = %36, %19
  %31 = phi ptr [ %39, %36 ], [ %28, %19 ]
  %32 = phi ptr [ %38, %36 ], [ null, %19 ]
  %33 = getelementptr inbounds %struct.nfs4_lock_state, ptr %31, i32 0, i32 6
  %34 = load ptr, ptr %33, align 8
  %35 = icmp eq ptr %34, %21
  br i1 %35, label %41, label %36

36:                                               ; preds = %30
  %37 = icmp eq ptr %34, %25
  %38 = select i1 %37, ptr %31, ptr %32
  %39 = load ptr, ptr %31, align 4
  %40 = icmp eq ptr %39, %27
  br i1 %40, label %41, label %30

41:                                               ; preds = %36, %30
  %42 = phi ptr [ %38, %36 ], [ %31, %30 ]
  %43 = icmp eq ptr %42, null
  br i1 %43, label %69, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.nfs4_lock_state, ptr %42, i32 0, i32 5
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %45) #16, !srcloc !11
  %46 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %45, ptr %45, i32 1, ptr elementtype(i32) %45) #16, !srcloc !12
  %47 = extractvalue { i32, i32, i32 } %46, 0
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %53, label %49, !prof !13

49:                                               ; preds = %44
  %50 = add i32 %47, 1
  %51 = or i32 %50, %47
  %52 = icmp sgt i32 %51, -1
  br i1 %52, label %55, label %53, !prof !14

53:                                               ; preds = %49, %44
  %54 = phi i32 [ 2, %44 ], [ 1, %49 ]
  tail call void @refcount_warn_saturate(ptr noundef %45, i32 noundef %54) #16
  br label %55

55:                                               ; preds = %53, %49
  %56 = getelementptr inbounds %struct.nfs4_lock_state, ptr %42, i32 0, i32 2
  %57 = load volatile i32, ptr %56, align 4
  %58 = and i32 %57, 2
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %55
  %61 = load volatile i32, ptr %56, align 4
  %62 = and i32 %61, 1
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.nfs4_lock_state, ptr %42, i32 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %3, ptr noundef align 4 dereferenceable(16) %65, i32 16, i1 false) #16
  %66 = getelementptr inbounds %struct.nfs4_lock_state, ptr %42, i32 0, i32 4, i32 1
  %67 = load i32, ptr %66, align 4
  %68 = getelementptr inbounds %struct.nfs4_stateid_struct, ptr %3, i32 0, i32 1
  store i32 %67, ptr %68, align 4
  br label %69

69:                                               ; preds = %64, %60, %55, %41, %19
  %70 = phi ptr [ %42, %64 ], [ %42, %60 ], [ %42, %55 ], [ null, %41 ], [ null, %19 ]
  %71 = phi i1 [ false, %64 ], [ false, %60 ], [ true, %55 ], [ false, %41 ], [ false, %19 ]
  %72 = phi i1 [ true, %64 ], [ false, %60 ], [ true, %55 ], [ false, %41 ], [ false, %19 ]
  %73 = phi i32 [ 0, %64 ], [ -2, %60 ], [ -5, %55 ], [ -2, %41 ], [ -2, %19 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  %74 = load i16, ptr %26, align 4
  %75 = add i16 %74, 1
  store i16 %75, ptr %26, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !20
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !21
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  tail call void @nfs4_put_lock_state(ptr noundef %70) #16
  br i1 %71, label %110, label %76

76:                                               ; preds = %69
  %77 = getelementptr inbounds %struct.nfs4_state, ptr %0, i32 0, i32 4
  %78 = load ptr, ptr %77, align 4
  %79 = tail call zeroext i1 @nfs4_copy_delegation_stateid(ptr noundef %78, i32 noundef %1, ptr noundef %3, ptr noundef %4) #16
  %80 = or i1 %72, %79
  %81 = select i1 %79, i32 0, i32 %73
  br i1 %80, label %110, label %86

82:                                               ; preds = %15, %13
  %83 = getelementptr inbounds %struct.nfs4_state, ptr %0, i32 0, i32 4
  %84 = load ptr, ptr %83, align 4
  %85 = tail call zeroext i1 @nfs4_copy_delegation_stateid(ptr noundef %84, i32 noundef %1, ptr noundef %3, ptr noundef %4) #16
  br i1 %85, label %110, label %86

86:                                               ; preds = %82, %76
  %87 = getelementptr inbounds %struct.nfs4_state, ptr %0, i32 0, i32 7
  %88 = getelementptr inbounds %struct.nfs4_state, ptr %0, i32 0, i32 9
  %89 = getelementptr inbounds %struct.nfs4_stateid_struct, ptr %3, i32 0, i32 1
  br label %90

90:                                               ; preds = %98, %86
  %91 = load volatile i32, ptr %87, align 4
  %92 = and i32 %91, 1
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %94, %90
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !28
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #16, !srcloc !29
  %95 = load volatile i32, ptr %87, align 4
  %96 = and i32 %95, 1
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %94

98:                                               ; preds = %94, %90
  %99 = phi i32 [ %91, %90 ], [ %95, %94 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !30
  %100 = load volatile i32, ptr %6, align 4
  %101 = and i32 %100, 4
  %102 = icmp eq i32 %101, 0
  %103 = select i1 %102, ptr @zero_stateid, ptr %88
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %3, ptr noundef align 4 dereferenceable(16) %103, i32 16, i1 false) #16
  %104 = getelementptr inbounds %struct.nfs4_stateid_struct, ptr %103, i32 0, i32 1
  %105 = load i32, ptr %104, align 4
  store i32 %105, ptr %89, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !31
  %106 = load volatile i32, ptr %87, align 4
  %107 = icmp eq i32 %106, %99
  br i1 %107, label %108, label %90

108:                                              ; preds = %98
  %109 = select i1 %102, i32 -11, i32 0
  br label %110

110:                                              ; preds = %108, %82, %76, %69
  %111 = phi i32 [ -5, %69 ], [ %109, %108 ], [ %81, %76 ], [ 0, %82 ]
  %112 = getelementptr inbounds %struct.nfs4_state, ptr %0, i32 0, i32 4
  %113 = load ptr, ptr %112, align 4
  %114 = getelementptr inbounds %struct.inode, ptr %113, i32 0, i32 8
  %115 = load ptr, ptr %114, align 4
  %116 = getelementptr inbounds %struct.super_block, ptr %115, i32 0, i32 27
  %117 = load ptr, ptr %116, align 4
  %118 = getelementptr inbounds %struct.nfs_server, ptr %117, i32 0, i32 10
  %119 = load i32, ptr %118, align 8
  %120 = and i32 %119, 65536
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %123, label %122

122:                                              ; preds = %110
  store i32 0, ptr %3, align 4
  br label %123

123:                                              ; preds = %122, %110, %5
  %124 = phi i32 [ -5, %5 ], [ %111, %122 ], [ %111, %110 ]
  ret i32 %124
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfs4_copy_delegation_stateid(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nfs_alloc_seqid(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = and i32 %1, 17
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5, !prof !14

5:                                                ; preds = %2
  %6 = and i32 %1, 1
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %7, i32 1, i32 2
  br label %9

9:                                                ; preds = %5, %2
  %10 = phi i32 [ 0, %2 ], [ %8, %5 ]
  %11 = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %10, i32 6
  %12 = load ptr, ptr %11, align 4
  %13 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef %1, i32 noundef 16) #18
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %9
  store ptr %0, ptr %13, align 8
  %16 = getelementptr inbounds %struct.nfs_seqid, ptr %13, i32 0, i32 1
  store volatile ptr %16, ptr %16, align 4
  %17 = getelementptr inbounds %struct.nfs_seqid, ptr %13, i32 0, i32 1, i32 1
  store ptr %16, ptr %17, align 8
  %18 = getelementptr inbounds %struct.nfs_seqid, ptr %13, i32 0, i32 2
  store ptr null, ptr %18, align 4
  br label %19

19:                                               ; preds = %15, %9
  %20 = phi ptr [ %13, %15 ], [ inttoptr (i32 -12 to ptr), %9 ]
  ret ptr %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs_release_seqid(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %24, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.nfs_seqid, ptr %0, i32 0, i32 1
  %5 = load volatile ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %24, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 4
  %9 = getelementptr inbounds %struct.nfs_seqid_counter, ptr %8, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %9) #16
  %10 = getelementptr inbounds %struct.nfs_seqid, ptr %0, i32 0, i32 1, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %4, align 4
  %13 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  store ptr %11, ptr %13, align 4
  store volatile ptr %12, ptr %11, align 4
  store volatile ptr %4, ptr %4, align 4
  store ptr %4, ptr %10, align 4
  %14 = getelementptr inbounds %struct.nfs_seqid_counter, ptr %8, i32 0, i32 5
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %14
  br i1 %16, label %21, label %17

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.nfs_seqid_counter, ptr %8, i32 0, i32 6
  %19 = getelementptr i8, ptr %15, i32 8
  %20 = load ptr, ptr %19, align 4
  tail call void @rpc_wake_up_queued_task(ptr noundef %18, ptr noundef %20) #16
  br label %21

21:                                               ; preds = %17, %7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  %22 = load i16, ptr %9, align 4
  %23 = add i16 %22, 1
  store i16 %23, ptr %9, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !20
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !21
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  br label %24

24:                                               ; preds = %21, %3, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_wake_up_queued_task(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs_free_seqid(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %24, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.nfs_seqid, ptr %0, i32 0, i32 1
  %5 = load volatile ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %24, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 4
  %9 = getelementptr inbounds %struct.nfs_seqid_counter, ptr %8, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %9) #16
  %10 = getelementptr inbounds %struct.nfs_seqid, ptr %0, i32 0, i32 1, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %4, align 4
  %13 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  store ptr %11, ptr %13, align 4
  store volatile ptr %12, ptr %11, align 4
  store volatile ptr %4, ptr %4, align 4
  store ptr %4, ptr %10, align 4
  %14 = getelementptr inbounds %struct.nfs_seqid_counter, ptr %8, i32 0, i32 5
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %14
  br i1 %16, label %21, label %17

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.nfs_seqid_counter, ptr %8, i32 0, i32 6
  %19 = getelementptr i8, ptr %15, i32 8
  %20 = load ptr, ptr %19, align 4
  tail call void @rpc_wake_up_queued_task(ptr noundef %18, ptr noundef %20) #16
  br label %21

21:                                               ; preds = %17, %7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  %22 = load i16, ptr %9, align 4
  %23 = add i16 %22, 1
  store i16 %23, ptr %9, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !20
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !21
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  br label %24

24:                                               ; preds = %21, %3, %1
  tail call void @kfree(ptr noundef %0) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs_increment_open_seqid(i32 noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %34, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %1, align 4
  %6 = getelementptr i8, ptr %5, i32 -56
  %7 = icmp eq i32 %0, -10026
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = tail call i64 @ktime_get() #16
  store i64 %9, ptr %5, align 8
  br label %10

10:                                               ; preds = %8, %4
  %11 = load ptr, ptr %6, align 8
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.nfs_client, ptr %12, i32 0, i32 36
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %34

16:                                               ; preds = %10
  switch i32 %0, label %29 [
    i32 -10019, label %34
    i32 -10026, label %17
    i32 -10022, label %34
    i32 -10023, label %34
    i32 -10025, label %34
    i32 -10036, label %34
    i32 -10018, label %34
    i32 -10020, label %34
  ]

17:                                               ; preds = %16
  %18 = load ptr, ptr %1, align 4
  %19 = getelementptr inbounds %struct.nfs_seqid_counter, ptr %18, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %17
  %24 = tail call i32 @___ratelimit(ptr noundef nonnull @nfs_increment_seqid._rs, ptr noundef nonnull @__func__.nfs_increment_seqid) #16
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr %1, align 4
  %28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %27) #17
  br label %34

29:                                               ; preds = %16
  %30 = load ptr, ptr %1, align 4
  %31 = getelementptr inbounds %struct.nfs_seqid_counter, ptr %30, i32 0, i32 3
  %32 = load i32, ptr %31, align 8
  %33 = add i32 %32, 1
  store i32 %33, ptr %31, align 8
  br label %34

34:                                               ; preds = %29, %26, %23, %17, %16, %16, %16, %16, %16, %16, %16, %10, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs_increment_lock_seqid(i32 noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %22, label %4

4:                                                ; preds = %2
  switch i32 %0, label %17 [
    i32 -10019, label %22
    i32 -10026, label %5
    i32 -10022, label %22
    i32 -10023, label %22
    i32 -10025, label %22
    i32 -10036, label %22
    i32 -10018, label %22
    i32 -10020, label %22
  ]

5:                                                ; preds = %4
  %6 = load ptr, ptr %1, align 4
  %7 = getelementptr inbounds %struct.nfs_seqid_counter, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %5
  %12 = tail call i32 @___ratelimit(ptr noundef nonnull @nfs_increment_seqid._rs, ptr noundef nonnull @__func__.nfs_increment_seqid) #16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %11
  %15 = load ptr, ptr %1, align 4
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %15) #17
  br label %22

17:                                               ; preds = %4
  %18 = load ptr, ptr %1, align 4
  %19 = getelementptr inbounds %struct.nfs_seqid_counter, ptr %18, i32 0, i32 3
  %20 = load i32, ptr %19, align 8
  %21 = add i32 %20, 1
  store i32 %21, ptr %19, align 8
  br label %22

22:                                               ; preds = %17, %14, %11, %5, %4, %4, %4, %4, %4, %4, %4, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs_wait_on_sequence(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %27, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr inbounds %struct.nfs_seqid_counter, ptr %5, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %6) #16
  %7 = getelementptr inbounds %struct.nfs_seqid, ptr %0, i32 0, i32 2
  store ptr %1, ptr %7, align 4
  %8 = getelementptr inbounds %struct.nfs_seqid, ptr %0, i32 0, i32 1
  %9 = load volatile ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %8
  br i1 %10, label %11, label %16

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.nfs_seqid_counter, ptr %5, i32 0, i32 5
  %13 = getelementptr inbounds %struct.nfs_seqid_counter, ptr %5, i32 0, i32 5, i32 1
  %14 = load ptr, ptr %13, align 4
  store ptr %8, ptr %13, align 4
  store ptr %12, ptr %8, align 4
  %15 = getelementptr inbounds %struct.nfs_seqid, ptr %0, i32 0, i32 1, i32 1
  store ptr %14, ptr %15, align 4
  store volatile ptr %8, ptr %14, align 4
  br label %16

16:                                               ; preds = %11, %4
  %17 = getelementptr inbounds %struct.nfs_seqid_counter, ptr %5, i32 0, i32 5
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr i8, ptr %18, i32 -4
  %20 = icmp eq ptr %19, %0
  br i1 %20, label %23, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.nfs_seqid_counter, ptr %5, i32 0, i32 6
  tail call void @rpc_sleep_on(ptr noundef %22, ptr noundef %1, ptr noundef null) #16
  br label %23

23:                                               ; preds = %21, %16
  %24 = phi i32 [ 0, %16 ], [ -11, %21 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  %25 = load i16, ptr %6, align 4
  %26 = add i16 %25, 1
  store i16 %26, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !20
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !21
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  br label %27

27:                                               ; preds = %23, %2
  %28 = phi i32 [ 0, %2 ], [ %24, %23 ]
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_sleep_on(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__module_get(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rpc_peeraddr2str(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs4_run_state_manager(ptr noundef %0) #7 {
  tail call fastcc void @allow_signal()
  tail call fastcc void @nfs4_state_manager(ptr noundef %0)
  tail call void @nfs_put_client(ptr noundef %0) #16
  tail call void @__module_put_and_kthread_exit(ptr noundef null, i32 noundef 0) #19
  unreachable
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs4_schedule_lease_recovery(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 22
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  tail call void @_set_bit(i32 noundef 1, ptr noundef %4) #16
  br label %9

9:                                                ; preds = %8, %3
  tail call void @nfs4_schedule_state_manager(ptr noundef nonnull %0)
  br label %10

10:                                               ; preds = %9, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs4_schedule_migration_recovery(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 43
  %4 = load i32, ptr %3, align 8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.nfs_client, ptr %2, i32 0, i32 7
  %8 = load ptr, ptr %7, align 8
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %8) #17
  br label %17

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 55
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %12, 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  tail call void @_set_bit(i32 noundef 1, ptr noundef %11) #16
  %16 = getelementptr inbounds %struct.nfs_client, ptr %2, i32 0, i32 22
  tail call void @_set_bit(i32 noundef 11, ptr noundef %16) #16
  tail call void @nfs4_schedule_state_manager(ptr noundef %2)
  br label %17

17:                                               ; preds = %15, %10, %6
  %18 = phi i32 [ -5, %6 ], [ 0, %15 ], [ -5, %10 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs4_schedule_lease_moved_recovery(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 22
  tail call void @_set_bit(i32 noundef 12, ptr noundef %2) #16
  tail call void @nfs4_schedule_state_manager(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs4_wait_clnt_recover(ptr noundef %0) local_unnamed_addr #0 {
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #16, !srcloc !11
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 1, ptr elementtype(i32) %0) #16, !srcloc !12
  %3 = extractvalue { i32, i32, i32 } %2, 0
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5, !prof !13

5:                                                ; preds = %1
  %6 = add i32 %3, 1
  %7 = or i32 %6, %3
  %8 = icmp sgt i32 %7, -1
  br i1 %8, label %11, label %9, !prof !14

9:                                                ; preds = %5, %1
  %10 = phi i32 [ 2, %1 ], [ 1, %5 ]
  tail call void @refcount_warn_saturate(ptr noundef %0, i32 noundef %10) #16
  br label %11

11:                                               ; preds = %9, %5
  %12 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 22
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  %17 = tail call i32 @out_of_line_wait_on_bit(ptr noundef %12, i32 noundef 0, ptr noundef nonnull @nfs_wait_bit_killable, i32 noundef 258) #16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %16, %11
  %20 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 2
  %21 = load i32, ptr %20, align 8
  %22 = tail call i32 @llvm.smin.i32(i32 %21, i32 0)
  br label %23

23:                                               ; preds = %19, %16
  %24 = phi i32 [ %17, %16 ], [ %22, %19 ]
  tail call void @nfs_put_client(ptr noundef %0) #16
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_wait_bit_killable(ptr noundef, i32 noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs4_client_recover_expired_lease(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 22
  %3 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 2
  br label %4

4:                                                ; preds = %34, %1
  %5 = phi i32 [ 10, %1 ], [ %35, %34 ]
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #16, !srcloc !11
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 1, ptr elementtype(i32) %0) #16, !srcloc !12
  %7 = extractvalue { i32, i32, i32 } %6, 0
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9, !prof !13

9:                                                ; preds = %4
  %10 = add i32 %7, 1
  %11 = or i32 %10, %7
  %12 = icmp sgt i32 %11, -1
  br i1 %12, label %15, label %13, !prof !14

13:                                               ; preds = %9, %4
  %14 = phi i32 [ 2, %4 ], [ 1, %9 ]
  tail call void @refcount_warn_saturate(ptr noundef %0, i32 noundef %14) #16
  br label %15

15:                                               ; preds = %13, %9
  %16 = load volatile i32, ptr %2, align 4
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = tail call i32 @out_of_line_wait_on_bit(ptr noundef %2, i32 noundef 0, ptr noundef nonnull @nfs_wait_bit_killable, i32 noundef 258) #16
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  tail call void @nfs_put_client(ptr noundef %0) #16
  br label %37

23:                                               ; preds = %19, %15
  %24 = load i32, ptr %3, align 8
  tail call void @nfs_put_client(ptr noundef %0) #16
  %25 = icmp sgt i32 %24, -1
  br i1 %25, label %26, label %37

26:                                               ; preds = %23
  %27 = load volatile i32, ptr %2, align 4
  %28 = and i32 %27, 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load volatile i32, ptr %2, align 4
  %32 = and i32 %31, 2
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %30, %26
  tail call void @nfs4_schedule_state_manager(ptr noundef %0)
  %35 = add nsw i32 %5, -1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %4

37:                                               ; preds = %34, %30, %23, %22
  %38 = phi i32 [ %20, %22 ], [ -5, %34 ], [ 0, %30 ], [ %24, %23 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs4_schedule_path_down_recovery(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 22
  tail call void @_set_bit(i32 noundef 2, ptr noundef %2) #16
  tail call void @nfs_expire_all_delegations(ptr noundef %0) #16
  tail call void @nfs4_schedule_state_manager(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs4_state_mark_reclaim_nograce(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nfs4_state, ptr %1, i32 0, i32 5
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 512
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  tail call void @_set_bit(i32 noundef 7, ptr noundef %3) #16
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %3) #16
  %8 = getelementptr inbounds %struct.nfs4_state, ptr %1, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nfs4_state_owner, ptr %9, i32 0, i32 7
  tail call void @_set_bit(i32 noundef 1, ptr noundef %10) #16
  %11 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 22
  tail call void @_set_bit(i32 noundef 4, ptr noundef %11) #16
  br label %12

12:                                               ; preds = %7, %2
  %13 = phi i32 [ 1, %7 ], [ 0, %2 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs4_schedule_stateid_recovery(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.nfs4_state, ptr %1, i32 0, i32 5
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 512
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %2
  tail call void @_set_bit(i32 noundef 7, ptr noundef %4) #16
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %4) #16
  %9 = getelementptr inbounds %struct.nfs4_state, ptr %1, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.nfs4_state_owner, ptr %10, i32 0, i32 7
  tail call void @_set_bit(i32 noundef 1, ptr noundef %11) #16
  %12 = getelementptr inbounds %struct.nfs_client, ptr %3, i32 0, i32 22
  tail call void @_set_bit(i32 noundef 4, ptr noundef %12) #16
  %13 = getelementptr inbounds %struct.nfs4_state, ptr %1, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.nfs4_state, ptr %1, i32 0, i32 8
  tail call void @nfs_inode_find_delegation_state_and_recover(ptr noundef %14, ptr noundef %15) #16
  tail call void @nfs4_schedule_state_manager(ptr noundef %3)
  br label %16

16:                                               ; preds = %8, %2
  %17 = phi i32 [ 0, %8 ], [ -9, %2 ]
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_inode_find_delegation_state_and_recover(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs_inode_find_state_and_recover(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 27
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 8
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !8
  %8 = getelementptr i8, ptr %0, i32 -72
  %9 = load volatile ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %8
  br i1 %10, label %114, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 1
  %13 = getelementptr inbounds %struct.nfs_client, ptr %7, i32 0, i32 22
  br label %14

14:                                               ; preds = %108, %11
  %15 = phi ptr [ %9, %11 ], [ %110, %108 ]
  %16 = phi i1 [ false, %11 ], [ %109, %108 ]
  %17 = getelementptr i8, ptr %15, i32 -16
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %108, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.nfs4_state, ptr %18, i32 0, i32 8
  %22 = getelementptr inbounds %struct.nfs4_state, ptr %18, i32 0, i32 8, i32 0, i32 0, i32 1
  %23 = tail call i32 @bcmp(ptr noundef dereferenceable(12) %22, ptr noundef dereferenceable(12) %12, i32 12) #16
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %20
  %26 = load i32, ptr %1, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %25
  %29 = load i32, ptr %21, align 4
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #16
  %31 = tail call i32 @llvm.bswap.i32(i32 %26) #16
  %32 = sub i32 %30, %31
  %33 = icmp slt i32 %32, 1
  br i1 %33, label %34, label %39

34:                                               ; preds = %28, %25
  %35 = getelementptr inbounds %struct.nfs4_state, ptr %18, i32 0, i32 5
  %36 = load volatile i32, ptr %35, align 4
  %37 = and i32 %36, 512
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %103, label %39

39:                                               ; preds = %34, %28, %20
  %40 = getelementptr inbounds %struct.nfs4_state, ptr %18, i32 0, i32 5
  %41 = load volatile i32, ptr %40, align 4
  %42 = and i32 %41, 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %62, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.nfs4_state, ptr %18, i32 0, i32 9
  %46 = getelementptr inbounds %struct.nfs4_state, ptr %18, i32 0, i32 9, i32 0, i32 0, i32 1
  %47 = tail call i32 @bcmp(ptr noundef dereferenceable(12) %46, ptr noundef dereferenceable(12) %12, i32 12) #16
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %44
  %50 = load i32, ptr %1, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %49
  %53 = load i32, ptr %45, align 4
  %54 = tail call i32 @llvm.bswap.i32(i32 %53) #16
  %55 = tail call i32 @llvm.bswap.i32(i32 %50) #16
  %56 = sub i32 %54, %55
  %57 = icmp slt i32 %56, 1
  br i1 %57, label %58, label %62

58:                                               ; preds = %52, %49
  %59 = load volatile i32, ptr %40, align 4
  %60 = and i32 %59, 512
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %103, label %62

62:                                               ; preds = %58, %52, %44, %39
  %63 = load volatile i32, ptr %40, align 4
  %64 = and i32 %63, 1
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %108, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.nfs4_state, ptr %18, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %67) #16
  %68 = getelementptr inbounds %struct.nfs4_state, ptr %18, i32 0, i32 2
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, %68
  br i1 %70, label %94, label %71

71:                                               ; preds = %91, %66
  %72 = phi ptr [ %92, %91 ], [ %69, %66 ]
  %73 = getelementptr inbounds %struct.nfs4_lock_state, ptr %72, i32 0, i32 2
  %74 = load volatile i32, ptr %73, align 4
  %75 = and i32 %74, 1
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %91, label %77

77:                                               ; preds = %71
  %78 = getelementptr inbounds %struct.nfs4_lock_state, ptr %72, i32 0, i32 4
  %79 = getelementptr inbounds %struct.nfs4_lock_state, ptr %72, i32 0, i32 4, i32 0, i32 0, i32 1
  %80 = tail call i32 @bcmp(ptr noundef dereferenceable(12) %79, ptr noundef dereferenceable(12) %12, i32 12) #16
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %77
  %83 = load i32, ptr %1, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %94, label %85

85:                                               ; preds = %82
  %86 = load i32, ptr %78, align 4
  %87 = tail call i32 @llvm.bswap.i32(i32 %86) #16
  %88 = tail call i32 @llvm.bswap.i32(i32 %83) #16
  %89 = sub i32 %87, %88
  %90 = icmp slt i32 %89, 1
  br i1 %90, label %94, label %91

91:                                               ; preds = %85, %77, %71
  %92 = load ptr, ptr %72, align 4
  %93 = icmp eq ptr %92, %68
  br i1 %93, label %94, label %71

94:                                               ; preds = %91, %85, %82, %66
  %95 = phi ptr [ null, %66 ], [ %72, %82 ], [ null, %91 ], [ %72, %85 ]
  %96 = icmp eq ptr %95, null
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  %97 = load i16, ptr %67, align 4
  %98 = add i16 %97, 1
  store i16 %98, ptr %67, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !20
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !21
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  br i1 %96, label %108, label %99

99:                                               ; preds = %94
  %100 = load volatile i32, ptr %40, align 4
  %101 = and i32 %100, 512
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %99, %58, %34
  %104 = phi ptr [ %35, %34 ], [ %40, %58 ], [ %40, %99 ]
  tail call void @_set_bit(i32 noundef 7, ptr noundef %104) #16
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %104) #16
  %105 = getelementptr inbounds %struct.nfs4_state, ptr %18, i32 0, i32 3
  %106 = load ptr, ptr %105, align 4
  %107 = getelementptr inbounds %struct.nfs4_state_owner, ptr %106, i32 0, i32 7
  tail call void @_set_bit(i32 noundef 1, ptr noundef %107) #16
  tail call void @_set_bit(i32 noundef 4, ptr noundef %13) #16
  br label %108

108:                                              ; preds = %103, %99, %94, %62, %14
  %109 = phi i1 [ %16, %14 ], [ %16, %94 ], [ %16, %99 ], [ %16, %62 ], [ true, %103 ]
  %110 = load volatile ptr, ptr %15, align 4
  %111 = icmp eq ptr %110, %8
  br i1 %111, label %112, label %14

112:                                              ; preds = %108
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !9
  tail call void @nfs_inode_find_delegation_state_and_recover(ptr noundef %0, ptr noundef %1) #16
  br i1 %109, label %113, label %115

113:                                              ; preds = %112
  tail call void @nfs4_schedule_state_manager(ptr noundef %7)
  br label %115

114:                                              ; preds = %2
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !9
  tail call void @nfs_inode_find_delegation_state_and_recover(ptr noundef %0, ptr noundef %1) #16
  br label %115

115:                                              ; preds = %114, %113, %112
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs4_discover_server_trunking(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 31
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.nfs4_minor_version_ops, ptr %4, i32 0, i32 11
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 11
  %8 = load ptr, ptr %7, align 8
  tail call void @mutex_lock(ptr noundef nonnull @nfs_clid_init_mutex) #16
  %9 = tail call ptr @rpc_machine_cred() #16
  %10 = icmp eq ptr %9, null
  br i1 %10, label %80, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.nfs4_state_recovery_ops, ptr %6, i32 0, i32 6
  %13 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 18
  br label %14

14:                                               ; preds = %67, %11
  %15 = phi ptr [ %9, %11 ], [ %73, %67 ]
  %16 = phi ptr [ %8, %11 ], [ %72, %67 ]
  %17 = phi i32 [ 0, %11 ], [ %62, %67 ]
  %18 = getelementptr inbounds %struct.rpc_clnt, ptr %16, i32 0, i32 14
  br label %19

19:                                               ; preds = %43, %14
  %20 = phi ptr [ %15, %14 ], [ %46, %43 ]
  %21 = phi i32 [ %17, %14 ], [ 1, %43 ]
  br label %22

22:                                               ; preds = %38, %19
  %23 = phi ptr [ %20, %19 ], [ %39, %38 ]
  %24 = getelementptr inbounds %struct.cred, ptr %23, i32 0, i32 24
  store i32 0, ptr %24, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %23) #16, !srcloc !11
  %25 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %23, ptr nonnull %23, i32 1, ptr nonnull elementtype(i32) %23) #16, !srcloc !18
  %26 = load ptr, ptr %12, align 4
  %27 = tail call i32 %26(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %23) #16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !23
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %23) #16, !srcloc !11
  %28 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %23, ptr nonnull %23, i32 1, ptr nonnull elementtype(i32) %23) #16, !srcloc !24
  %29 = extractvalue { i32, i32 } %28, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !25
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  tail call void @__put_cred(ptr noundef nonnull %23) #16
  br label %32

32:                                               ; preds = %31, %22
  switch i32 %27, label %75 [
    i32 0, label %77
    i32 -4, label %77
    i32 -512, label %77
    i32 -110, label %33
    i32 -10008, label %37
    i32 -11, label %37
    i32 -10022, label %38
    i32 -13, label %41
    i32 -10017, label %55
    i32 -10016, label %55
    i32 -10021, label %79
    i32 -127, label %80
    i32 -10027, label %80
  ]

33:                                               ; preds = %32
  %34 = load i8, ptr %18, align 4
  %35 = and i8 %34, 1
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %77

37:                                               ; preds = %33, %32, %32
  tail call void @msleep(i32 noundef 1000) #16
  br label %38

38:                                               ; preds = %37, %32
  %39 = tail call ptr @rpc_machine_cred() #16
  %40 = icmp eq ptr %39, null
  br i1 %40, label %77, label %22

41:                                               ; preds = %32
  %42 = icmp eq i32 %21, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %41
  store ptr null, ptr %13, align 4
  %44 = load ptr, ptr %7, align 8
  %45 = getelementptr inbounds %struct.rpc_clnt, ptr %44, i32 0, i32 25
  store ptr null, ptr %45, align 4
  %46 = tail call ptr @rpc_machine_cred() #16
  %47 = icmp eq ptr %46, null
  br i1 %47, label %80, label %19

48:                                               ; preds = %41
  %49 = add i32 %21, 1
  %50 = getelementptr inbounds %struct.rpc_clnt, ptr %16, i32 0, i32 11
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.rpc_auth, ptr %51, i32 0, i32 6
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %80, label %61

55:                                               ; preds = %32, %32
  %56 = getelementptr inbounds %struct.rpc_clnt, ptr %16, i32 0, i32 11
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.rpc_auth, ptr %57, i32 0, i32 6
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %59, 1
  br i1 %60, label %80, label %61

61:                                               ; preds = %55, %48
  %62 = phi i32 [ %21, %55 ], [ %49, %48 ]
  %63 = tail call ptr @rpc_clone_client_set_auth(ptr noundef %16, i32 noundef 1) #16
  %64 = icmp ugt ptr %63, inttoptr (i32 -4096 to ptr)
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = ptrtoint ptr %63 to i32
  br label %80

67:                                               ; preds = %61
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !32
  %68 = ptrtoint ptr %63 to i32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #16, !srcloc !11
  %69 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %68, ptr %7) #16, !srcloc !33
  %70 = extractvalue { i32, i32 } %69, 0
  %71 = inttoptr i32 %70 to ptr
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !34
  tail call void @rpc_shutdown_client(ptr noundef %71) #16
  %72 = load ptr, ptr %7, align 8
  %73 = tail call ptr @rpc_machine_cred() #16
  %74 = icmp eq ptr %73, null
  br i1 %74, label %80, label %14

75:                                               ; preds = %32
  %76 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.nfs4_discover_server_trunking, i32 noundef %27) #17
  br label %80

77:                                               ; preds = %38, %33, %32, %32, %32
  %78 = phi i32 [ -110, %33 ], [ %27, %32 ], [ %27, %32 ], [ %27, %32 ], [ -2, %38 ]
  br label %80

79:                                               ; preds = %32
  br label %80

80:                                               ; preds = %79, %77, %75, %67, %65, %55, %48, %43, %32, %32, %2
  %81 = phi i32 [ -5, %75 ], [ %66, %65 ], [ -2, %2 ], [ %78, %77 ], [ -93, %79 ], [ -127, %32 ], [ -127, %32 ], [ -2, %43 ], [ -2, %67 ], [ -13, %48 ], [ -1, %55 ]
  tail call void @mutex_unlock(ptr noundef nonnull @nfs_clid_init_mutex) #16
  ret i32 %81
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rpc_clone_client_set_auth(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_shutdown_client(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs4_schedule_session_recovery(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nfs4_session, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq i32 %1, -10055
  %6 = getelementptr inbounds %struct.nfs_client, ptr %4, i32 0, i32 22
  %7 = select i1 %5, i32 10, i32 6
  tail call void @_set_bit(i32 noundef %7, ptr noundef %6) #16
  tail call void @nfs4_schedule_state_manager(ptr noundef %4)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs41_notify_server(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 22
  tail call void @_set_bit(i32 noundef 1, ptr noundef %2) #16
  tail call void @nfs4_schedule_state_manager(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs41_handle_sequence_flag_errors(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %48, label %5

5:                                                ; preds = %3
  br i1 %2, label %35, label %6

6:                                                ; preds = %5
  %7 = and i32 %1, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 22
  %11 = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %10) #16
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  tail call void @nfs_delegation_mark_reclaim(ptr noundef %0) #16
  tail call fastcc void @nfs4_state_mark_reclaim_helper(ptr noundef %0, ptr noundef nonnull @nfs4_state_mark_reclaim_reboot) #16
  tail call void @nfs4_schedule_state_manager(ptr noundef %0) #16
  br label %14

14:                                               ; preds = %13, %9, %6
  %15 = and i32 %1, 8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 22
  %19 = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %18) #16
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  tail call void @_set_bit(i32 noundef 9, ptr noundef %18) #16
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %18) #16
  tail call void @nfs_mark_test_expired_all_delegations(ptr noundef %0) #16
  tail call fastcc void @nfs4_state_mark_reclaim_helper(ptr noundef %0, ptr noundef nonnull @nfs4_state_mark_reclaim_nograce) #16
  tail call void @nfs4_schedule_state_manager(ptr noundef %0) #16
  br label %22

22:                                               ; preds = %21, %17, %14
  %23 = and i32 %1, 48
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  tail call void @nfs_mark_test_expired_all_delegations(ptr noundef %0) #16
  tail call fastcc void @nfs4_state_mark_reclaim_helper(ptr noundef %0, ptr noundef nonnull @nfs4_state_mark_reclaim_nograce) #16
  tail call void @nfs4_schedule_state_manager(ptr noundef %0) #16
  br label %26

26:                                               ; preds = %25, %22
  %27 = and i32 %1, 128
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 22
  tail call void @_set_bit(i32 noundef 12, ptr noundef %30) #16
  tail call void @nfs4_schedule_state_manager(ptr noundef %0) #16
  br label %31

31:                                               ; preds = %29, %26
  %32 = and i32 %1, 64
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %31
  tail call void @pnfs_destroy_all_layouts(ptr noundef %0) #16
  tail call void @nfs_test_expired_all_delegations(ptr noundef %0) #16
  br label %35

35:                                               ; preds = %34, %31, %5
  %36 = and i32 %1, 1024
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 22
  tail call void @_set_bit(i32 noundef 6, ptr noundef %39) #16
  br label %47

40:                                               ; preds = %35
  %41 = and i32 %1, 513
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 22
  %45 = tail call i32 @_test_and_set_bit(i32 noundef 10, ptr noundef %44) #16
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43, %38
  tail call void @nfs4_schedule_state_manager(ptr noundef %0) #16
  br label %48

48:                                               ; preds = %47, %43, %40, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_proc_get_lease_time(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs4_set_lease_period(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cred_fscmp(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_init_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_do_close(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_destroy_wait_queue(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs4_fl_copy_lock(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.file_lock, ptr %1, i32 0, i32 19
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 19
  store ptr %4, ptr %5, align 4
  %6 = getelementptr inbounds %struct.nfs4_lock_state, ptr %4, i32 0, i32 5
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #16, !srcloc !11
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 1, ptr elementtype(i32) %6) #16, !srcloc !12
  %8 = extractvalue { i32, i32, i32 } %7, 0
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10, !prof !13

10:                                               ; preds = %2
  %11 = add i32 %8, 1
  %12 = or i32 %11, %8
  %13 = icmp sgt i32 %12, -1
  br i1 %13, label %16, label %14, !prof !14

14:                                               ; preds = %10, %2
  %15 = phi i32 [ 2, %2 ], [ 1, %10 ]
  tail call void @refcount_warn_saturate(ptr noundef %6, i32 noundef %15) #16
  br label %16

16:                                               ; preds = %14, %10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs4_fl_release_lock(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 19
  %3 = load ptr, ptr %2, align 4
  tail call void @nfs4_put_lock_state(ptr noundef %3)
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_wake_up(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_bit(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @out_of_line_wait_on_bit(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_expire_all_delegations(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_cred(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_delegation_mark_reclaim(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nfs4_state_mark_reclaim_helper(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !8
  %3 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 10
  %4 = load volatile ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %3
  br i1 %5, label %53, label %6

6:                                                ; preds = %48, %2
  %7 = phi ptr [ %51, %48 ], [ %4, %2 ]
  %8 = getelementptr i8, ptr %7, i32 -4
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.nfs_client, ptr %9, i32 0, i32 23
  tail call void @_raw_spin_lock(ptr noundef %10) #16
  %11 = getelementptr i8, ptr %7, i32 400
  %12 = tail call ptr @rb_first(ptr noundef %11) #16
  %13 = icmp eq ptr %12, null
  br i1 %13, label %48, label %14

14:                                               ; preds = %43, %6
  %15 = phi ptr [ %46, %43 ], [ %12, %6 ]
  %16 = getelementptr i8, ptr %15, i32 52
  store i32 0, ptr %16, align 4
  %17 = getelementptr i8, ptr %15, i32 16
  tail call void @_raw_spin_lock(ptr noundef %17) #16
  %18 = getelementptr i8, ptr %15, i32 28
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, %18
  br i1 %20, label %43, label %21

21:                                               ; preds = %40, %14
  %22 = phi ptr [ %41, %40 ], [ %19, %14 ]
  %23 = tail call i32 %1(ptr noundef %9, ptr noundef %22) #16, !callees !35
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %40, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.nfs4_state, ptr %22, i32 0, i32 5
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %26) #16
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %26) #16
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %26) #16
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %26) #16
  %27 = getelementptr inbounds %struct.nfs4_state, ptr %22, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %27) #16
  %28 = getelementptr inbounds %struct.nfs4_state, ptr %22, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, %28
  br i1 %30, label %37, label %31

31:                                               ; preds = %31, %25
  %32 = phi ptr [ %35, %31 ], [ %29, %25 ]
  %33 = getelementptr inbounds %struct.nfs4_lock_state, ptr %32, i32 0, i32 3, i32 2
  store i32 0, ptr %33, align 4
  %34 = getelementptr inbounds %struct.nfs4_lock_state, ptr %32, i32 0, i32 2
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %34) #16
  %35 = load ptr, ptr %32, align 4
  %36 = icmp eq ptr %35, %28
  br i1 %36, label %37, label %31

37:                                               ; preds = %31, %25
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  %38 = load i16, ptr %27, align 4
  %39 = add i16 %38, 1
  store i16 %39, ptr %27, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !20
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !21
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  br label %40

40:                                               ; preds = %37, %21
  %41 = load ptr, ptr %22, align 4
  %42 = icmp eq ptr %41, %18
  br i1 %42, label %43, label %21

43:                                               ; preds = %40, %14
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  %44 = load i16, ptr %17, align 4
  %45 = add i16 %44, 1
  store i16 %45, ptr %17, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !20
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !21
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  %46 = tail call ptr @rb_next(ptr noundef nonnull %15) #16
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %14

48:                                               ; preds = %43, %6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  %49 = load i16, ptr %10, align 4
  %50 = add i16 %49, 1
  store i16 %50, ptr %10, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !20
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !21
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  %51 = load volatile ptr, ptr %7, align 4
  %52 = icmp eq ptr %51, %3
  br i1 %52, label %53, label %6

53:                                               ; preds = %48, %2
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs4_state_mark_reclaim_reboot(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nfs4_state, ptr %1, i32 0, i32 5
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 512
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %17

7:                                                ; preds = %2
  tail call void @_set_bit(i32 noundef 6, ptr noundef %3) #16
  %8 = load volatile i32, ptr %3, align 4
  %9 = and i32 %8, 128
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %3) #16
  br label %17

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.nfs4_state, ptr %1, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.nfs4_state_owner, ptr %14, i32 0, i32 7
  tail call void @_set_bit(i32 noundef 0, ptr noundef %15) #16
  %16 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 22
  tail call void @_set_bit(i32 noundef 3, ptr noundef %16) #16
  br label %17

17:                                               ; preds = %12, %11, %2
  %18 = phi i32 [ 0, %11 ], [ 1, %12 ], [ 0, %2 ]
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_mark_test_expired_all_delegations(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnfs_destroy_all_layouts(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_test_expired_all_delegations(ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @allow_signal() unnamed_addr #12 {
  tail call void @kernel_sigaction(i32 noundef 9, ptr noundef nonnull inttoptr (i32 2 to ptr)) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nfs4_state_manager(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 22
  %3 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 36
  %4 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 31
  %5 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 32
  %6 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 10
  %7 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 27
  br label %8

8:                                                ; preds = %312, %1
  %9 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_state_mgr, i32 0, i32 1), align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %8
  %12 = tail call ptr @llvm.thread.pointer() #16
  %13 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %14 = load i32, ptr %13, align 8
  %15 = lshr i32 %14, 5
  %16 = getelementptr i32, ptr @__cpu_online_mask, i32 %15
  %17 = load volatile i32, ptr %16, align 4
  %18 = and i32 %14, 31
  %19 = shl nuw i32 1, %18
  %20 = and i32 %19, %17
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %11
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !36
  %23 = tail call i32 @__traceiter_nfs4_state_mgr(ptr noundef null, ptr noundef %0) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !37
  br label %24

24:                                               ; preds = %22, %11, %8
  tail call void @_clear_bit(i32 noundef 14, ptr noundef %2) #16
  %25 = load volatile i32, ptr %2, align 4
  %26 = and i32 %25, 512
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %24
  %29 = tail call fastcc i32 @nfs4_establish_lease(ptr noundef %0) #16
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %28
  tail call void @_clear_bit(i32 noundef 9, ptr noundef %2) #16
  tail call void @_set_bit(i32 noundef 2, ptr noundef %2) #16
  tail call void @nfs_mark_test_expired_all_delegations(ptr noundef %0) #16
  tail call fastcc void @nfs4_state_mark_reclaim_helper(ptr noundef %0, ptr noundef nonnull @nfs4_state_mark_reclaim_nograce) #16
  br label %304

32:                                               ; preds = %28
  %33 = tail call fastcc i32 @nfs4_handle_reclaim_lease_error(ptr noundef %0, i32 noundef %29) #16
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %316, label %304

35:                                               ; preds = %24
  %36 = load volatile i32, ptr %2, align 4
  %37 = and i32 %36, 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %55, label %39

39:                                               ; preds = %35
  %40 = tail call fastcc i32 @nfs4_establish_lease(ptr noundef %0) #16
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %52, label %42

42:                                               ; preds = %39
  %43 = tail call i32 @_test_and_clear_bit(i32 noundef 8, ptr noundef %2) #16
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %42
  tail call void @nfs_mark_test_expired_all_delegations(ptr noundef %0) #16
  tail call fastcc void @nfs4_state_mark_reclaim_helper(ptr noundef %0, ptr noundef nonnull @nfs4_state_mark_reclaim_nograce) #16
  br label %46

46:                                               ; preds = %45, %42
  %47 = load volatile i32, ptr %2, align 4
  %48 = and i32 %47, 16
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  tail call void @_set_bit(i32 noundef 3, ptr noundef %2) #16
  br label %51

51:                                               ; preds = %50, %46
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %2) #16
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %2) #16
  br label %304

52:                                               ; preds = %39
  %53 = tail call fastcc i32 @nfs4_handle_reclaim_lease_error(ptr noundef %0, i32 noundef %40) #16
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %316, label %304

55:                                               ; preds = %35
  %56 = tail call i32 @_test_and_clear_bit(i32 noundef 6, ptr noundef %2) #16
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %101, label %58

58:                                               ; preds = %55
  %59 = load ptr, ptr %3, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %95, label %61

61:                                               ; preds = %58
  %62 = tail call fastcc i32 @nfs4_begin_drain_session(ptr noundef %0) #16
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %90

64:                                               ; preds = %61
  %65 = tail call ptr @rpc_machine_cred() #16
  %66 = icmp eq ptr %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.cred, ptr %65, i32 0, i32 24
  store i32 0, ptr %68, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %65) #16, !srcloc !11
  %69 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %65, ptr nonnull %65, i32 1, ptr nonnull elementtype(i32) %65) #16, !srcloc !18
  br label %70

70:                                               ; preds = %67, %64
  %71 = load ptr, ptr %3, align 4
  %72 = tail call i32 @nfs4_proc_destroy_session(ptr noundef %71, ptr noundef %65) #16
  switch i32 %72, label %74 [
    i32 0, label %76
    i32 -10052, label %76
    i32 -10078, label %76
    i32 -10057, label %73
    i32 -10008, label %73
  ]

73:                                               ; preds = %70, %70
  tail call void @_set_bit(i32 noundef 6, ptr noundef %2) #16
  tail call void @msleep(i32 noundef 1000) #16
  br label %83

74:                                               ; preds = %70
  %75 = tail call fastcc i32 @nfs4_recovery_handle_error(ptr noundef %0, i32 noundef %72) #16
  br label %83

76:                                               ; preds = %70, %70, %70
  %77 = load ptr, ptr %3, align 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(16) %77, i8 0, i32 16, i1 false) #16
  %78 = tail call i32 @nfs4_proc_create_session(ptr noundef %0, ptr noundef %65) #16
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %76
  %81 = tail call fastcc i32 @nfs4_handle_reclaim_lease_error(ptr noundef %0, i32 noundef %78) #16
  br label %83

82:                                               ; preds = %76
  tail call fastcc void @nfs41_finish_session_reset(ptr noundef %0) #16
  br label %83

83:                                               ; preds = %82, %80, %74, %73
  %84 = phi i32 [ %75, %74 ], [ 0, %73 ], [ %81, %80 ], [ 0, %82 ]
  br i1 %66, label %90, label %85

85:                                               ; preds = %83
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !23
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %65) #16, !srcloc !11
  %86 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %65, ptr nonnull %65, i32 1, ptr nonnull elementtype(i32) %65) #16, !srcloc !24
  %87 = extractvalue { i32, i32 } %86, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !25
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %85
  tail call void @__put_cred(ptr noundef nonnull %65) #16
  br label %90

90:                                               ; preds = %89, %85, %83, %61
  %91 = phi i32 [ %62, %61 ], [ %84, %83 ], [ %84, %85 ], [ %84, %89 ]
  %92 = load volatile i32, ptr %2, align 4
  %93 = and i32 %92, 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %99, label %304

95:                                               ; preds = %58
  %96 = load volatile i32, ptr %2, align 4
  %97 = and i32 %96, 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %101, label %304

99:                                               ; preds = %90
  %100 = icmp slt i32 %91, 0
  br i1 %100, label %316, label %101

101:                                              ; preds = %99, %95, %55
  %102 = tail call i32 @_test_and_clear_bit(i32 noundef 10, ptr noundef %2) #16
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %131, label %104

104:                                              ; preds = %101
  %105 = load ptr, ptr %3, align 4
  %106 = icmp eq ptr %105, null
  br i1 %106, label %304, label %107

107:                                              ; preds = %104
  %108 = tail call fastcc i32 @nfs4_begin_drain_session(ptr noundef %0) #16
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %128

110:                                              ; preds = %107
  %111 = tail call ptr @rpc_machine_cred() #16
  %112 = icmp eq ptr %111, null
  br i1 %112, label %113, label %115

113:                                              ; preds = %110
  %114 = tail call i32 @nfs4_proc_bind_conn_to_session(ptr noundef %0, ptr noundef null) #16
  br label %123

115:                                              ; preds = %110
  %116 = getelementptr inbounds %struct.cred, ptr %111, i32 0, i32 24
  store i32 0, ptr %116, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %111) #16, !srcloc !11
  %117 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %111, ptr nonnull %111, i32 1, ptr nonnull elementtype(i32) %111) #16, !srcloc !18
  %118 = tail call i32 @nfs4_proc_bind_conn_to_session(ptr noundef %0, ptr noundef nonnull %111) #16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !23
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %111) #16, !srcloc !11
  %119 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %111, ptr nonnull %111, i32 1, ptr nonnull elementtype(i32) %111) #16, !srcloc !24
  %120 = extractvalue { i32, i32 } %119, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !25
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %115
  tail call void @__put_cred(ptr noundef nonnull %111) #16
  br label %123

123:                                              ; preds = %122, %115, %113
  %124 = phi i32 [ %114, %113 ], [ %118, %115 ], [ %118, %122 ]
  tail call void @_clear_bit(i32 noundef 10, ptr noundef %2) #16
  switch i32 %124, label %126 [
    i32 0, label %304
    i32 -10008, label %125
  ]

125:                                              ; preds = %123
  tail call void @msleep(i32 noundef 1000) #16
  tail call void @_set_bit(i32 noundef 10, ptr noundef %2) #16
  br label %304

126:                                              ; preds = %123
  %127 = tail call fastcc i32 @nfs4_recovery_handle_error(ptr noundef %0, i32 noundef %124) #16
  br label %128

128:                                              ; preds = %126, %107
  %129 = phi i32 [ %127, %126 ], [ %108, %107 ]
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %316, label %304

131:                                              ; preds = %101
  %132 = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %2) #16
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %168, label %134

134:                                              ; preds = %131
  %135 = load ptr, ptr %4, align 8
  %136 = getelementptr inbounds %struct.nfs4_minor_version_ops, ptr %135, i32 0, i32 13
  %137 = load ptr, ptr %136, align 4
  %138 = load volatile i32, ptr %2, align 4
  %139 = and i32 %138, 4
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %304

141:                                              ; preds = %134
  %142 = getelementptr inbounds %struct.nfs4_state_maintenance_ops, ptr %137, i32 0, i32 1
  %143 = load ptr, ptr %142, align 4
  %144 = tail call ptr %143(ptr noundef %0) #16
  %145 = icmp eq ptr %144, null
  br i1 %145, label %146, label %152

146:                                              ; preds = %141
  %147 = tail call ptr @rpc_machine_cred() #16
  %148 = icmp eq ptr %147, null
  br i1 %148, label %164, label %149

149:                                              ; preds = %146
  %150 = getelementptr inbounds %struct.cred, ptr %147, i32 0, i32 24
  store i32 0, ptr %150, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %147) #16, !srcloc !11
  %151 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %147, ptr nonnull %147, i32 1, ptr nonnull elementtype(i32) %147) #16, !srcloc !18
  br label %152

152:                                              ; preds = %149, %141
  %153 = phi ptr [ %147, %149 ], [ %144, %141 ]
  %154 = getelementptr inbounds %struct.nfs4_state_maintenance_ops, ptr %137, i32 0, i32 2
  %155 = load ptr, ptr %154, align 4
  %156 = tail call i32 %155(ptr noundef %0, ptr noundef nonnull %153) #16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !23
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %153) #16, !srcloc !11
  %157 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %153, ptr nonnull %153, i32 1, ptr nonnull elementtype(i32) %153) #16, !srcloc !24
  %158 = extractvalue { i32, i32 } %157, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !25
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %152
  tail call void @__put_cred(ptr noundef nonnull %153) #16
  br label %161

161:                                              ; preds = %160, %152
  %162 = icmp eq i32 %156, -110
  br i1 %162, label %163, label %164

163:                                              ; preds = %161
  tail call void @_set_bit(i32 noundef 1, ptr noundef %2) #16
  br label %304

164:                                              ; preds = %161, %146
  %165 = phi i32 [ %156, %161 ], [ -126, %146 ]
  %166 = tail call fastcc i32 @nfs4_recovery_handle_error(ptr noundef %0, i32 noundef %165) #16
  %167 = icmp slt i32 %166, 0
  br i1 %167, label %316, label %304

168:                                              ; preds = %131
  %169 = tail call i32 @_test_and_clear_bit(i32 noundef 11, ptr noundef %2) #16
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %212, label %171

171:                                              ; preds = %168
  %172 = load ptr, ptr %4, align 8
  %173 = getelementptr inbounds %struct.nfs4_minor_version_ops, ptr %172, i32 0, i32 13
  %174 = load ptr, ptr %173, align 4
  %175 = getelementptr inbounds %struct.nfs4_state_maintenance_ops, ptr %174, i32 0, i32 1
  %176 = load ptr, ptr %175, align 4
  %177 = tail call ptr %176(ptr noundef %0) #16
  %178 = icmp eq ptr %177, null
  br i1 %178, label %316, label %179

179:                                              ; preds = %171
  %180 = load i32, ptr %5, align 4
  %181 = add i32 %180, 1
  store i32 %181, ptr %5, align 4
  br label %182

182:                                              ; preds = %195, %179
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !8
  %183 = load volatile ptr, ptr %6, align 4
  %184 = icmp eq ptr %183, %6
  br i1 %184, label %207, label %185

185:                                              ; preds = %204, %182
  %186 = phi ptr [ %205, %204 ], [ %183, %182 ]
  %187 = getelementptr i8, ptr %186, i32 460
  %188 = load i32, ptr %187, align 8
  %189 = load i32, ptr %5, align 4
  %190 = icmp eq i32 %188, %189
  br i1 %190, label %204, label %191

191:                                              ; preds = %185
  store i32 %189, ptr %187, align 8
  %192 = getelementptr i8, ptr %186, i32 464
  %193 = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %192) #16
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %204, label %195

195:                                              ; preds = %191
  %196 = getelementptr i8, ptr %186, i32 -4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !9
  %197 = tail call fastcc i32 @nfs4_try_migration(ptr noundef %196, ptr noundef nonnull %177) #16
  %198 = icmp slt i32 %197, 0
  br i1 %198, label %199, label %182

199:                                              ; preds = %195
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !23
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %177) #16, !srcloc !11
  %200 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %177, ptr nonnull %177, i32 1, ptr nonnull elementtype(i32) %177) #16, !srcloc !24
  %201 = extractvalue { i32, i32 } %200, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !25
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %203, label %316

203:                                              ; preds = %199
  tail call void @__put_cred(ptr noundef nonnull %177) #16
  br label %316

204:                                              ; preds = %191, %185
  %205 = load volatile ptr, ptr %186, align 4
  %206 = icmp eq ptr %205, %6
  br i1 %206, label %207, label %185

207:                                              ; preds = %204, %182
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !23
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %177) #16, !srcloc !11
  %208 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %177, ptr nonnull %177, i32 1, ptr nonnull elementtype(i32) %177) #16, !srcloc !24
  %209 = extractvalue { i32, i32 } %208, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !25
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %207
  tail call void @__put_cred(ptr noundef nonnull %177) #16
  br label %212

212:                                              ; preds = %211, %207, %168
  %213 = tail call i32 @_test_and_clear_bit(i32 noundef 12, ptr noundef %2) #16
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %257, label %215

215:                                              ; preds = %212
  %216 = load ptr, ptr %4, align 8
  %217 = getelementptr inbounds %struct.nfs4_minor_version_ops, ptr %216, i32 0, i32 13
  %218 = load ptr, ptr %217, align 4
  %219 = getelementptr inbounds %struct.nfs4_state_maintenance_ops, ptr %218, i32 0, i32 1
  %220 = load ptr, ptr %219, align 4
  %221 = tail call ptr %220(ptr noundef %0) #16
  %222 = icmp eq ptr %221, null
  br i1 %222, label %316, label %223

223:                                              ; preds = %215
  %224 = load i32, ptr %5, align 4
  %225 = add i32 %224, 1
  store i32 %225, ptr %5, align 4
  br label %226

226:                                              ; preds = %250, %223
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !8
  br label %227

227:                                              ; preds = %231, %226
  %228 = phi ptr [ %6, %226 ], [ %229, %231 ]
  %229 = load volatile ptr, ptr %228, align 4
  %230 = icmp eq ptr %229, %6
  br i1 %230, label %251, label %231

231:                                              ; preds = %227
  %232 = getelementptr i8, ptr %229, i32 460
  %233 = load i32, ptr %232, align 8
  %234 = load i32, ptr %5, align 4
  %235 = icmp eq i32 %233, %234
  br i1 %235, label %227, label %236

236:                                              ; preds = %231
  %237 = getelementptr i8, ptr %229, i32 460
  store i32 %234, ptr %237, align 8
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !9
  %238 = getelementptr i8, ptr %229, i32 168
  %239 = load ptr, ptr %238, align 4
  %240 = getelementptr inbounds %struct.super_block, ptr %239, i32 0, i32 13
  %241 = load ptr, ptr %240, align 64
  %242 = getelementptr inbounds %struct.dentry, ptr %241, i32 0, i32 5
  %243 = load ptr, ptr %242, align 8
  %244 = tail call i32 @nfs4_proc_fsid_present(ptr noundef %243, ptr noundef nonnull %221) #16
  %245 = icmp eq i32 %244, -10019
  br i1 %245, label %246, label %250

246:                                              ; preds = %236
  %247 = getelementptr i8, ptr %229, i32 -4
  %248 = tail call fastcc i32 @nfs4_try_migration(ptr noundef %247, ptr noundef nonnull %221) #16
  %249 = icmp eq i32 %248, -10031
  br i1 %249, label %250, label %252

250:                                              ; preds = %246, %236
  br label %226

251:                                              ; preds = %227
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !9
  br label %252

252:                                              ; preds = %251, %246
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !23
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %221) #16, !srcloc !11
  %253 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %221, ptr nonnull %221, i32 1, ptr nonnull elementtype(i32) %221) #16, !srcloc !24
  %254 = extractvalue { i32, i32 } %253, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !25
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %256, label %257

256:                                              ; preds = %252
  tail call void @__put_cred(ptr noundef nonnull %221) #16
  br label %257

257:                                              ; preds = %256, %252, %212
  %258 = load volatile i32, ptr %2, align 4
  %259 = and i32 %258, 8
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %270, label %261

261:                                              ; preds = %257
  %262 = load ptr, ptr %4, align 8
  %263 = getelementptr inbounds %struct.nfs4_minor_version_ops, ptr %262, i32 0, i32 11
  %264 = load ptr, ptr %263, align 4
  %265 = tail call fastcc i32 @nfs4_do_reclaim(ptr noundef %0, ptr noundef %264)
  %266 = icmp eq i32 %265, -11
  br i1 %266, label %304, label %267

267:                                              ; preds = %261
  %268 = icmp slt i32 %265, 0
  br i1 %268, label %316, label %269

269:                                              ; preds = %267
  tail call fastcc void @nfs4_state_end_reclaim_reboot(ptr noundef %0)
  br label %270

270:                                              ; preds = %269, %257
  %271 = tail call i32 @_test_and_clear_bit(i32 noundef 13, ptr noundef %2) #16
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %274, label %273

273:                                              ; preds = %270
  tail call void @nfs_reap_expired_delegations(ptr noundef %0) #16
  br label %304

274:                                              ; preds = %270
  %275 = load volatile i32, ptr %2, align 4
  %276 = and i32 %275, 16
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %287, label %278

278:                                              ; preds = %274
  %279 = load ptr, ptr %4, align 8
  %280 = getelementptr inbounds %struct.nfs4_minor_version_ops, ptr %279, i32 0, i32 12
  %281 = load ptr, ptr %280, align 4
  %282 = tail call fastcc i32 @nfs4_do_reclaim(ptr noundef %0, ptr noundef %281)
  %283 = icmp eq i32 %282, -11
  br i1 %283, label %304, label %284

284:                                              ; preds = %278
  %285 = icmp slt i32 %282, 0
  br i1 %285, label %316, label %286

286:                                              ; preds = %284
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %2) #16
  br label %287

287:                                              ; preds = %286, %274
  tail call fastcc void @nfs4_end_drain_session(ptr noundef %0)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #16, !srcloc !11
  %288 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #16, !srcloc !16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !17
  tail call void @wake_up_bit(ptr noundef %2, i32 noundef 0) #16
  tail call void @rpc_wake_up(ptr noundef %7) #16
  %289 = tail call i32 @_test_and_set_bit(i32 noundef 15, ptr noundef %2) #16
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %291, label %297

291:                                              ; preds = %287
  %292 = tail call i32 @_test_and_clear_bit(i32 noundef 5, ptr noundef %2) #16
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %296, label %294

294:                                              ; preds = %291
  %295 = tail call i32 @nfs_client_return_marked_delegations(ptr noundef %0) #16
  tail call void @_set_bit(i32 noundef 14, ptr noundef %2) #16
  br label %296

296:                                              ; preds = %294, %291
  tail call fastcc void @nfs4_layoutreturn_any_run(ptr noundef %0)
  tail call void @_clear_bit(i32 noundef 15, ptr noundef %2) #16
  br label %297

297:                                              ; preds = %296, %287
  %298 = load volatile i32, ptr %2, align 4
  %299 = and i32 %298, 16384
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %348, label %301

301:                                              ; preds = %297
  %302 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %2) #16
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %304, label %348

304:                                              ; preds = %301, %278, %273, %261, %164, %163, %134, %128, %125, %123, %104, %95, %90, %52, %51, %32, %31
  %305 = load volatile i32, ptr %0, align 4
  %306 = icmp ugt i32 %305, 1
  br i1 %306, label %307, label %346

307:                                              ; preds = %304
  %308 = tail call ptr @llvm.thread.pointer() #16
  %309 = load volatile i32, ptr %308, align 4
  %310 = and i32 %309, 256
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %312, label %346, !prof !14

312:                                              ; preds = %307
  %313 = load volatile i32, ptr %308, align 4
  %314 = and i32 %313, 1
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %8, label %346

316:                                              ; preds = %284, %267, %215, %203, %199, %171, %164, %128, %99, %52, %32
  %317 = phi ptr [ @.str.15, %203 ], [ @.str.15, %199 ], [ @.str.15, %171 ], [ @.str.16, %215 ], [ @.str.19, %284 ], [ @.str.17, %267 ], [ @.str.14, %164 ], [ @.str.13, %128 ], [ @.str.12, %99 ], [ @.str.11, %52 ], [ @.str.10, %32 ]
  %318 = phi i32 [ %197, %203 ], [ %197, %199 ], [ -2, %171 ], [ -2, %215 ], [ %282, %284 ], [ %265, %267 ], [ %166, %164 ], [ %129, %128 ], [ %91, %99 ], [ %53, %52 ], [ %33, %32 ]
  %319 = load i8, ptr %317, align 1
  %320 = icmp eq i8 %319, 0
  %321 = select i1 %320, ptr @.str.9, ptr @.str.20
  %322 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_state_mgr_failed, i32 0, i32 1), align 4
  %323 = icmp sgt i32 %322, 0
  br i1 %323, label %324, label %337

324:                                              ; preds = %316
  %325 = tail call ptr @llvm.thread.pointer() #16
  %326 = getelementptr inbounds %struct.thread_info, ptr %325, i32 0, i32 2
  %327 = load i32, ptr %326, align 8
  %328 = lshr i32 %327, 5
  %329 = getelementptr i32, ptr @__cpu_online_mask, i32 %328
  %330 = load volatile i32, ptr %329, align 4
  %331 = and i32 %327, 31
  %332 = shl nuw i32 1, %331
  %333 = and i32 %332, %330
  %334 = icmp eq i32 %333, 0
  br i1 %334, label %337, label %335

335:                                              ; preds = %324
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !38
  %336 = tail call i32 @__traceiter_nfs4_state_mgr_failed(ptr noundef null, ptr noundef %0, ptr noundef nonnull %317, i32 noundef %318) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !39
  br label %337

337:                                              ; preds = %335, %324, %316
  %338 = tail call i32 @___ratelimit(ptr noundef nonnull @nfs4_state_manager._rs, ptr noundef nonnull @__func__.nfs4_state_manager) #16
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %345, label %340

340:                                              ; preds = %337
  %341 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 7
  %342 = load ptr, ptr %341, align 8
  %343 = sub i32 0, %318
  %344 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull %321, ptr noundef nonnull %317, ptr noundef %342, i32 noundef %343) #17
  br label %345

345:                                              ; preds = %340, %337
  tail call void @msleep(i32 noundef 1000) #16
  br label %346

346:                                              ; preds = %345, %312, %307, %304
  tail call fastcc void @nfs4_end_drain_session(ptr noundef %0)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #16, !srcloc !11
  %347 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #16, !srcloc !16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !17
  tail call void @wake_up_bit(ptr noundef %2, i32 noundef 0) #16
  tail call void @rpc_wake_up(ptr noundef %7) #16
  br label %348

348:                                              ; preds = %346, %301, %297
  ret void
}

; Function Attrs: noreturn null_pointer_is_valid
declare dso_local void @__module_put_and_kthread_exit(ptr noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernel_sigaction(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @nfs4_do_reclaim(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  store ptr %3, ptr %3, align 8
  %4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  store ptr %3, ptr %4, align 4
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !8
  %5 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 10
  %6 = load volatile ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %416, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 23
  %10 = getelementptr inbounds %struct.nfs4_state_recovery_ops, ptr %1, i32 0, i32 1
  %11 = getelementptr inbounds %struct.nfs4_state_recovery_ops, ptr %1, i32 0, i32 2
  %12 = getelementptr inbounds %struct.nfs4_state_recovery_ops, ptr %1, i32 0, i32 3
  br label %13

13:                                               ; preds = %414, %8
  %14 = phi ptr [ %6, %8 ], [ %415, %414 ]
  %15 = getelementptr i8, ptr %14, i32 -4
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.nfs_client, ptr %16, i32 0, i32 23
  call void @_raw_spin_lock(ptr noundef %17) #16
  %18 = getelementptr i8, ptr %14, i32 428
  %19 = load ptr, ptr %18, align 8
  %20 = icmp eq ptr %19, %18
  br i1 %20, label %39, label %21

21:                                               ; preds = %37, %13
  %22 = phi ptr [ %23, %37 ], [ %19, %13 ]
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  store ptr %25, ptr %26, align 4
  store volatile ptr %23, ptr %25, align 4
  %27 = load ptr, ptr %3, align 8
  %28 = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  store ptr %22, ptr %28, align 4
  store ptr %27, ptr %22, align 4
  store ptr %3, ptr %24, align 4
  store volatile ptr %22, ptr %3, align 8
  %29 = getelementptr i8, ptr %22, i32 12
  %30 = load i32, ptr %29, align 8
  %31 = ptrtoint ptr %29 to i32
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %37, label %33

33:                                               ; preds = %21
  %34 = getelementptr i8, ptr %22, i32 -4
  %35 = load ptr, ptr %34, align 8
  %36 = getelementptr inbounds %struct.nfs_server, ptr %35, i32 0, i32 47
  call void @rb_erase(ptr noundef %29, ptr noundef %36) #16
  br label %37

37:                                               ; preds = %33, %21
  %38 = icmp eq ptr %23, %18
  br i1 %38, label %39, label %21

39:                                               ; preds = %37, %13
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  %40 = load i16, ptr %17, align 4
  %41 = add i16 %40, 1
  store i16 %41, ptr %17, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !20
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !21
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  call void @_raw_spin_lock(ptr noundef %9) #16
  %42 = getelementptr i8, ptr %14, i32 400
  %43 = call ptr @rb_first(ptr noundef %42) #16
  %44 = icmp eq ptr %43, null
  br i1 %44, label %409, label %45

45:                                               ; preds = %406, %39
  %46 = phi ptr [ %407, %406 ], [ %43, %39 ]
  %47 = load i32, ptr %1, align 4
  %48 = getelementptr i8, ptr %46, i32 24
  %49 = call i32 @_test_and_clear_bit(i32 noundef %47, ptr noundef %48) #16
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %406, label %51

51:                                               ; preds = %45
  %52 = getelementptr i8, ptr %46, i32 20
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !40
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %52) #16, !srcloc !11
  %53 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %52, ptr %52, i32 0, i32 1, ptr elementtype(i32) %52) #16, !srcloc !41
  %54 = extractvalue { i32, i32, i32 } %53, 0
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %406, label %56

56:                                               ; preds = %51
  %57 = getelementptr i8, ptr %46, i32 -16
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !42
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  %58 = load i16, ptr %9, align 4
  %59 = add i16 %58, 1
  store i16 %59, ptr %9, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !20
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !21
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !9
  %60 = getelementptr i8, ptr %46, i32 16
  call void @_raw_spin_lock(ptr noundef %60) #16
  %61 = getelementptr i8, ptr %46, i32 176
  %62 = load i32, ptr %61, align 4
  %63 = add i32 %62, 1
  store i32 %63, ptr %61, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #16, !srcloc !43
  %64 = getelementptr i8, ptr %46, i32 28
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, %64
  br i1 %66, label %354, label %67

67:                                               ; preds = %346, %56
  %68 = phi ptr [ %348, %346 ], [ %65, %56 ]
  %69 = phi i32 [ %347, %346 ], [ 0, %56 ]
  %70 = phi i1 [ %73, %346 ], [ false, %56 ]
  br label %71

71:                                               ; preds = %350, %67
  %72 = phi ptr [ %68, %67 ], [ %352, %350 ]
  %73 = phi i1 [ %70, %67 ], [ %351, %350 ]
  %74 = load i32, ptr %10, align 4
  %75 = getelementptr inbounds %struct.nfs4_state, ptr %72, i32 0, i32 5
  %76 = call i32 @_test_and_clear_bit(i32 noundef %74, ptr noundef %75) #16
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %350, label %78

78:                                               ; preds = %71
  %79 = load volatile i32, ptr %75, align 4
  %80 = and i32 %79, 512
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %350

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.nfs4_state, ptr %72, i32 0, i32 13
  %84 = load i32, ptr %83, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %350, label %86

86:                                               ; preds = %82
  %87 = load volatile i32, ptr %75, align 4
  %88 = and i32 %87, 16384
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %110, label %90

90:                                               ; preds = %86
  call void @_set_bit(i32 noundef 9, ptr noundef %75) #16
  %91 = getelementptr inbounds %struct.nfs4_state, ptr %72, i32 0, i32 4
  %92 = load ptr, ptr %91, align 4
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !8
  %93 = getelementptr i8, ptr %92, i32 -72
  %94 = load volatile ptr, ptr %93, align 4
  %95 = icmp eq ptr %94, %93
  br i1 %95, label %109, label %96

96:                                               ; preds = %106, %90
  %97 = phi ptr [ %107, %106 ], [ %94, %90 ]
  %98 = getelementptr i8, ptr %97, i32 -16
  %99 = load ptr, ptr %98, align 4
  %100 = icmp eq ptr %99, %72
  br i1 %100, label %101, label %106

101:                                              ; preds = %96
  %102 = getelementptr i8, ptr %97, i32 -8
  call void @_set_bit(i32 noundef 2, ptr noundef %102) #16
  %103 = getelementptr i8, ptr %97, i32 -28
  %104 = load ptr, ptr %103, align 4
  %105 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %104, i32 noundef -5) #17
  br label %106

106:                                              ; preds = %101, %96
  %107 = load volatile ptr, ptr %97, align 4
  %108 = icmp eq ptr %107, %93
  br i1 %108, label %109, label %96

109:                                              ; preds = %106, %90
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !9
  br label %350

110:                                              ; preds = %86
  %111 = getelementptr inbounds %struct.nfs4_state, ptr %72, i32 0, i32 14
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %111) #16, !srcloc !11
  %112 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %111, ptr %111, i32 1, ptr elementtype(i32) %111) #16, !srcloc !12
  %113 = extractvalue { i32, i32, i32 } %112, 0
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %119, label %115, !prof !13

115:                                              ; preds = %110
  %116 = add i32 %113, 1
  %117 = or i32 %116, %113
  %118 = icmp sgt i32 %117, -1
  br i1 %118, label %121, label %119, !prof !14

119:                                              ; preds = %115, %110
  %120 = phi i32 [ 2, %110 ], [ 1, %115 ]
  call void @refcount_warn_saturate(ptr noundef %111, i32 noundef %120) #16
  br label %121

121:                                              ; preds = %119, %115
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  %122 = load i16, ptr %60, align 4
  %123 = add i16 %122, 1
  store i16 %123, ptr %60, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !20
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !21
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  %124 = load ptr, ptr %11, align 4
  %125 = call i32 %124(ptr noundef %57, ptr noundef %72) #16
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %294, label %127

127:                                              ; preds = %121
  %128 = getelementptr inbounds %struct.nfs4_state, ptr %72, i32 0, i32 4
  %129 = load ptr, ptr %128, align 4
  %130 = getelementptr inbounds %struct.inode, ptr %129, i32 0, i32 40
  %131 = load ptr, ptr %130, align 4
  %132 = icmp eq ptr %131, null
  br i1 %132, label %174, label %133

133:                                              ; preds = %127
  %134 = getelementptr inbounds %struct.file_lock_context, ptr %131, i32 0, i32 2
  %135 = getelementptr i8, ptr %129, i32 -48
  call void @down_write(ptr noundef %135) #16
  call void @_raw_spin_lock(ptr noundef nonnull %131) #16
  %136 = getelementptr inbounds %struct.file_lock_context, ptr %131, i32 0, i32 1
  br label %137

137:                                              ; preds = %168, %133
  %138 = phi ptr [ %134, %133 ], [ %136, %168 ]
  %139 = load ptr, ptr %138, align 4
  %140 = icmp eq ptr %139, %138
  br i1 %140, label %168, label %141

141:                                              ; preds = %165, %137
  %142 = phi ptr [ %166, %165 ], [ %139, %137 ]
  %143 = getelementptr i8, ptr %142, i32 64
  %144 = load ptr, ptr %143, align 4
  %145 = getelementptr inbounds %struct.file, ptr %144, i32 0, i32 15
  %146 = load ptr, ptr %145, align 8
  %147 = getelementptr inbounds %struct.nfs_open_context, ptr %146, i32 0, i32 5
  %148 = load ptr, ptr %147, align 4
  %149 = icmp eq ptr %148, %72
  br i1 %149, label %150, label %165

150:                                              ; preds = %141
  %151 = getelementptr i8, ptr %142, i32 -4
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  %152 = load i16, ptr %131, align 4
  %153 = add i16 %152, 1
  store i16 %153, ptr %131, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !20
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !21
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  %154 = load ptr, ptr %12, align 4
  %155 = call i32 %154(ptr noundef %72, ptr noundef %151) #16
  switch i32 %155, label %156 [
    i32 0, label %164
    i32 -110, label %170
    i32 -116, label %170
    i32 -10047, label %170
    i32 -10023, label %170
    i32 -10025, label %170
    i32 -10011, label %170
    i32 -10033, label %170
    i32 -10022, label %170
    i32 -10052, label %170
    i32 -10053, label %170
    i32 -10077, label %170
    i32 -10055, label %170
    i32 -12, label %158
    i32 -10010, label %158
    i32 -10034, label %158
    i32 -10035, label %158
  ]

156:                                              ; preds = %150
  %157 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.nfs4_reclaim_locks, i32 noundef %155) #17
  br label %158

158:                                              ; preds = %156, %150, %150, %150, %150
  %159 = getelementptr i8, ptr %142, i32 104
  %160 = load ptr, ptr %159, align 4
  %161 = icmp eq ptr %160, null
  br i1 %161, label %164, label %162

162:                                              ; preds = %158
  %163 = getelementptr inbounds %struct.nfs4_lock_state, ptr %160, i32 0, i32 2
  call void @_set_bit(i32 noundef 1, ptr noundef %163) #16
  br label %164

164:                                              ; preds = %162, %158, %150
  call void @_raw_spin_lock(ptr noundef nonnull %131) #16
  br label %165

165:                                              ; preds = %164, %141
  %166 = load ptr, ptr %142, align 4
  %167 = icmp eq ptr %166, %138
  br i1 %167, label %168, label %141

168:                                              ; preds = %165, %137
  %169 = icmp eq ptr %138, %134
  br i1 %169, label %137, label %171

170:                                              ; preds = %150, %150, %150, %150, %150, %150, %150, %150, %150, %150, %150, %150
  call void @up_write(ptr noundef %135) #16
  br label %294

171:                                              ; preds = %168
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  %172 = load i16, ptr %131, align 4
  %173 = add i16 %172, 1
  store i16 %173, ptr %131, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !20
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !21
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  call void @up_write(ptr noundef %135) #16
  br label %174

174:                                              ; preds = %171, %127
  %175 = load volatile i32, ptr %75, align 4
  %176 = and i32 %175, 2
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %216

178:                                              ; preds = %174
  %179 = getelementptr inbounds %struct.nfs4_state, ptr %72, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %179) #16
  %180 = getelementptr inbounds %struct.nfs4_state, ptr %72, i32 0, i32 2
  %181 = load ptr, ptr %180, align 4
  %182 = icmp eq ptr %181, %180
  br i1 %182, label %213, label %183

183:                                              ; preds = %210, %178
  %184 = phi ptr [ %211, %210 ], [ %181, %178 ]
  %185 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_state_lock_reclaim, i32 0, i32 1), align 4
  %186 = icmp sgt i32 %185, 0
  br i1 %186, label %187, label %200

187:                                              ; preds = %183
  %188 = tail call ptr @llvm.thread.pointer() #16
  %189 = getelementptr inbounds %struct.thread_info, ptr %188, i32 0, i32 2
  %190 = load i32, ptr %189, align 8
  %191 = lshr i32 %190, 5
  %192 = getelementptr i32, ptr @__cpu_online_mask, i32 %191
  %193 = load volatile i32, ptr %192, align 4
  %194 = and i32 %190, 31
  %195 = shl nuw i32 1, %194
  %196 = and i32 %195, %193
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %200, label %198

198:                                              ; preds = %187
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !44
  %199 = call i32 @__traceiter_nfs4_state_lock_reclaim(ptr noundef null, ptr noundef %72, ptr noundef %184) #16
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !45
  br label %200

200:                                              ; preds = %198, %187, %183
  %201 = getelementptr inbounds %struct.nfs4_lock_state, ptr %184, i32 0, i32 2
  %202 = load volatile i32, ptr %201, align 4
  %203 = and i32 %202, 1
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %210

205:                                              ; preds = %200
  %206 = call i32 @___ratelimit(ptr noundef nonnull @__nfs4_reclaim_open_state._rs, ptr noundef nonnull @__func__.__nfs4_reclaim_open_state) #16
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %210, label %208

208:                                              ; preds = %205
  %209 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @__func__.__nfs4_reclaim_open_state) #17
  br label %210

210:                                              ; preds = %208, %205, %200
  %211 = load ptr, ptr %184, align 4
  %212 = icmp eq ptr %211, %180
  br i1 %212, label %213, label %183

213:                                              ; preds = %210, %178
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  %214 = load i16, ptr %179, align 4
  %215 = add i16 %214, 1
  store i16 %215, ptr %179, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !20
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !21
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  br label %216

216:                                              ; preds = %213, %174
  %217 = load volatile i32, ptr %75, align 4
  %218 = and i32 %217, 4096
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %220, label %224

220:                                              ; preds = %216
  %221 = load volatile i32, ptr %75, align 4
  %222 = and i32 %221, 8192
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %293, label %224

224:                                              ; preds = %220, %216
  %225 = load ptr, ptr %57, align 8
  %226 = load ptr, ptr %225, align 8
  %227 = getelementptr inbounds %struct.nfs_client, ptr %226, i32 0, i32 23
  call void @_raw_spin_lock(ptr noundef %227) #16
  %228 = load ptr, ptr %57, align 8
  %229 = getelementptr inbounds %struct.nfs_server, ptr %228, i32 0, i32 53
  %230 = load ptr, ptr %229, align 8
  %231 = icmp eq ptr %230, %229
  br i1 %231, label %236, label %232

232:                                              ; preds = %224
  %233 = getelementptr inbounds %struct.nfs4_state, ptr %72, i32 0, i32 8, i32 0, i32 0, i32 1
  br label %243

234:                                              ; preds = %260
  %235 = load ptr, ptr %261, align 8
  br label %236

236:                                              ; preds = %234, %224
  %237 = phi ptr [ %228, %224 ], [ %262, %234 ]
  %238 = phi ptr [ %229, %224 ], [ %235, %234 ]
  %239 = getelementptr inbounds %struct.nfs_server, ptr %237, i32 0, i32 53
  %240 = icmp eq ptr %238, %239
  br i1 %240, label %287, label %241

241:                                              ; preds = %236
  %242 = getelementptr inbounds %struct.nfs4_state, ptr %72, i32 0, i32 8, i32 0, i32 0, i32 1
  br label %265

243:                                              ; preds = %260, %232
  %244 = phi ptr [ %230, %232 ], [ %261, %260 ]
  %245 = load volatile i32, ptr %75, align 4
  %246 = and i32 %245, 4096
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %254, label %248

248:                                              ; preds = %243
  %249 = getelementptr inbounds %struct.nfs4_copy_state, ptr %244, i32 0, i32 9
  %250 = load ptr, ptr %249, align 8
  %251 = getelementptr inbounds %struct.nfs4_state, ptr %250, i32 0, i32 8, i32 0, i32 0, i32 1
  %252 = call i32 @bcmp(ptr noundef dereferenceable(12) %233, ptr noundef dereferenceable(12) %251, i32 12) #16
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %254, label %260

254:                                              ; preds = %248, %243
  %255 = getelementptr inbounds %struct.nfs4_copy_state, ptr %244, i32 0, i32 7
  store i32 1, ptr %255, align 8
  %256 = call i32 @_test_and_clear_bit(i32 noundef 12, ptr noundef %75) #16
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %260, label %258

258:                                              ; preds = %254
  call void @_clear_bit(i32 noundef 13, ptr noundef %75) #16
  %259 = getelementptr inbounds %struct.nfs4_copy_state, ptr %244, i32 0, i32 3
  call void @complete(ptr noundef %259) #16
  br label %260

260:                                              ; preds = %258, %254, %248
  %261 = load ptr, ptr %244, align 8
  %262 = load ptr, ptr %57, align 8
  %263 = getelementptr inbounds %struct.nfs_server, ptr %262, i32 0, i32 53
  %264 = icmp eq ptr %261, %263
  br i1 %264, label %234, label %243

265:                                              ; preds = %282, %241
  %266 = phi ptr [ %238, %241 ], [ %283, %282 ]
  %267 = load volatile i32, ptr %75, align 4
  %268 = and i32 %267, 8192
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %276, label %270

270:                                              ; preds = %265
  %271 = getelementptr i8, ptr %266, i32 76
  %272 = load ptr, ptr %271, align 4
  %273 = getelementptr inbounds %struct.nfs4_state, ptr %272, i32 0, i32 8, i32 0, i32 0, i32 1
  %274 = call i32 @bcmp(ptr noundef dereferenceable(12) %242, ptr noundef dereferenceable(12) %273, i32 12) #16
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %276, label %282

276:                                              ; preds = %270, %265
  %277 = getelementptr i8, ptr %266, i32 72
  store i32 1, ptr %277, align 8
  %278 = call i32 @_test_and_clear_bit(i32 noundef 12, ptr noundef %75) #16
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %282, label %280

280:                                              ; preds = %276
  %281 = getelementptr i8, ptr %266, i32 28
  call void @complete(ptr noundef %281) #16
  br label %282

282:                                              ; preds = %280, %276, %270
  %283 = load ptr, ptr %266, align 8
  %284 = load ptr, ptr %57, align 8
  %285 = getelementptr inbounds %struct.nfs_server, ptr %284, i32 0, i32 53
  %286 = icmp eq ptr %283, %285
  br i1 %286, label %287, label %265

287:                                              ; preds = %282, %236
  %288 = phi ptr [ %237, %236 ], [ %284, %282 ]
  %289 = load ptr, ptr %288, align 8
  %290 = getelementptr inbounds %struct.nfs_client, ptr %289, i32 0, i32 23
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  %291 = load i16, ptr %290, align 4
  %292 = add i16 %291, 1
  store i16 %292, ptr %290, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !20
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !21
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  br label %293

293:                                              ; preds = %287, %220
  call void @_clear_bit(i32 noundef 7, ptr noundef %75) #16
  br label %346

294:                                              ; preds = %170, %121
  %295 = phi i32 [ %125, %121 ], [ %155, %170 ]
  switch i32 %295, label %296 [
    i32 -2, label %298
    i32 -12, label %298
    i32 -13, label %298
    i32 -30, label %298
    i32 -5, label %298
    i32 -116, label %298
    i32 -11, label %318
    i32 -10047, label %323
    i32 -10023, label %323
    i32 -10024, label %323
    i32 -10025, label %323
    i32 -10034, label %323
    i32 -10035, label %323
    i32 -10011, label %335
    i32 -10033, label %335
    i32 -10022, label %360
    i32 -10052, label %360
    i32 -10053, label %360
    i32 -10077, label %360
    i32 -10055, label %360
    i32 -110, label %360
  ]

296:                                              ; preds = %294
  %297 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.nfs4_reclaim_open_state, i32 noundef %295) #17
  br label %298

298:                                              ; preds = %296, %294, %294, %294, %294, %294, %294
  call void @_set_bit(i32 noundef 9, ptr noundef %75) #16
  %299 = getelementptr inbounds %struct.nfs4_state, ptr %72, i32 0, i32 4
  %300 = load ptr, ptr %299, align 4
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !8
  %301 = getelementptr i8, ptr %300, i32 -72
  %302 = load volatile ptr, ptr %301, align 4
  %303 = icmp eq ptr %302, %301
  br i1 %303, label %317, label %304

304:                                              ; preds = %314, %298
  %305 = phi ptr [ %315, %314 ], [ %302, %298 ]
  %306 = getelementptr i8, ptr %305, i32 -16
  %307 = load ptr, ptr %306, align 4
  %308 = icmp eq ptr %307, %72
  br i1 %308, label %309, label %314

309:                                              ; preds = %304
  %310 = getelementptr i8, ptr %305, i32 -8
  call void @_set_bit(i32 noundef 2, ptr noundef %310) #16
  %311 = getelementptr i8, ptr %305, i32 -28
  %312 = load ptr, ptr %311, align 4
  %313 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %312, i32 noundef %295) #17
  br label %314

314:                                              ; preds = %309, %304
  %315 = load volatile ptr, ptr %305, align 4
  %316 = icmp eq ptr %315, %301
  br i1 %316, label %317, label %304

317:                                              ; preds = %314, %298
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !9
  br label %346

318:                                              ; preds = %294
  call void @msleep(i32 noundef 1000) #16
  %319 = add i32 %69, 1
  %320 = icmp ult i32 %69, 10
  br i1 %320, label %321, label %323

321:                                              ; preds = %318
  %322 = load i32, ptr %10, align 4
  call void @_set_bit(i32 noundef %322, ptr noundef %75) #16
  br label %346

323:                                              ; preds = %318, %294, %294, %294, %294, %294, %294
  %324 = phi i32 [ %69, %294 ], [ %69, %294 ], [ %69, %294 ], [ %69, %294 ], [ %69, %294 ], [ %69, %294 ], [ %319, %318 ]
  %325 = load ptr, ptr %57, align 8
  %326 = load ptr, ptr %325, align 8
  %327 = load volatile i32, ptr %75, align 4
  %328 = and i32 %327, 512
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %330, label %346

330:                                              ; preds = %323
  call void @_set_bit(i32 noundef 7, ptr noundef %75) #16
  call void @_clear_bit(i32 noundef 6, ptr noundef %75) #16
  %331 = getelementptr inbounds %struct.nfs4_state, ptr %72, i32 0, i32 3
  %332 = load ptr, ptr %331, align 4
  %333 = getelementptr inbounds %struct.nfs4_state_owner, ptr %332, i32 0, i32 7
  call void @_set_bit(i32 noundef 1, ptr noundef %333) #16
  %334 = getelementptr inbounds %struct.nfs_client, ptr %326, i32 0, i32 22
  call void @_set_bit(i32 noundef 4, ptr noundef %334) #16
  br label %346

335:                                              ; preds = %294, %294
  %336 = load ptr, ptr %57, align 8
  %337 = load ptr, ptr %336, align 8
  %338 = load volatile i32, ptr %75, align 4
  %339 = and i32 %338, 512
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %341, label %360

341:                                              ; preds = %335
  call void @_set_bit(i32 noundef 7, ptr noundef %75) #16
  call void @_clear_bit(i32 noundef 6, ptr noundef %75) #16
  %342 = getelementptr inbounds %struct.nfs4_state, ptr %72, i32 0, i32 3
  %343 = load ptr, ptr %342, align 4
  %344 = getelementptr inbounds %struct.nfs4_state_owner, ptr %343, i32 0, i32 7
  call void @_set_bit(i32 noundef 1, ptr noundef %344) #16
  %345 = getelementptr inbounds %struct.nfs_client, ptr %337, i32 0, i32 22
  call void @_set_bit(i32 noundef 4, ptr noundef %345) #16
  br label %360

346:                                              ; preds = %330, %323, %321, %317, %293
  %347 = phi i32 [ %69, %317 ], [ %319, %321 ], [ 0, %293 ], [ %324, %323 ], [ %324, %330 ]
  call void @nfs4_put_open_state(ptr noundef %72) #16
  call void @_raw_spin_lock(ptr noundef %60) #16
  %348 = load ptr, ptr %64, align 4
  %349 = icmp eq ptr %348, %64
  br i1 %349, label %354, label %67

350:                                              ; preds = %109, %82, %78, %71
  %351 = phi i1 [ %73, %82 ], [ true, %109 ], [ %73, %78 ], [ %73, %71 ]
  %352 = load ptr, ptr %72, align 4
  %353 = icmp eq ptr %352, %64
  br i1 %353, label %354, label %71

354:                                              ; preds = %350, %346, %56
  %355 = phi i1 [ false, %56 ], [ %351, %350 ], [ %73, %346 ]
  call void asm sideeffect "dmb ishst", "~{memory}"() #16, !srcloc !46
  %356 = load i32, ptr %61, align 4
  %357 = add i32 %356, 1
  store i32 %357, ptr %61, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  %358 = load i16, ptr %60, align 4
  %359 = add i16 %358, 1
  store i16 %359, ptr %60, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !20
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !21
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  br i1 %355, label %365, label %387

360:                                              ; preds = %341, %335, %294, %294, %294, %294, %294, %294
  call void @nfs4_put_open_state(ptr noundef %72) #16
  call void @_raw_spin_lock(ptr noundef %60) #16
  call void asm sideeffect "dmb ishst", "~{memory}"() #16, !srcloc !46
  %361 = load i32, ptr %61, align 4
  %362 = add i32 %361, 1
  store i32 %362, ptr %61, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  %363 = load i16, ptr %60, align 4
  %364 = add i16 %363, 1
  store i16 %364, ptr %60, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !20
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !21
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  br label %365

365:                                              ; preds = %360, %354
  %366 = phi i32 [ %295, %360 ], [ -5, %354 ]
  %367 = load i32, ptr %1, align 4
  call void @_set_bit(i32 noundef %367, ptr noundef %48) #16
  %368 = load ptr, ptr %57, align 8
  %369 = load ptr, ptr %368, align 8
  %370 = getelementptr inbounds %struct.nfs_client, ptr %369, i32 0, i32 23
  %371 = call i32 @_atomic_dec_and_lock(ptr noundef %52, ptr noundef %370) #16
  %372 = icmp eq i32 %371, 0
  br i1 %372, label %383, label %373

373:                                              ; preds = %365
  %374 = load volatile i32, ptr @jiffies, align 64
  %375 = getelementptr i8, ptr %46, i32 -4
  store i32 %374, ptr %375, align 4
  %376 = getelementptr i8, ptr %46, i32 -12
  %377 = getelementptr inbounds %struct.nfs_server, ptr %368, i32 0, i32 50
  %378 = getelementptr inbounds %struct.nfs_server, ptr %368, i32 0, i32 50, i32 1
  %379 = load ptr, ptr %378, align 4
  store ptr %376, ptr %378, align 4
  store ptr %377, ptr %376, align 4
  %380 = getelementptr i8, ptr %46, i32 -8
  store ptr %379, ptr %380, align 4
  store volatile ptr %376, ptr %379, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  %381 = load i16, ptr %370, align 4
  %382 = add i16 %381, 1
  store i16 %382, ptr %370, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !20
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !21
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  br label %383

383:                                              ; preds = %373, %365
  %384 = call fastcc i32 @nfs4_recovery_handle_error(ptr noundef %0, i32 noundef %366)
  %385 = icmp eq i32 %384, 0
  %386 = select i1 %385, i32 -11, i32 %384
  br label %417

387:                                              ; preds = %354
  %388 = load ptr, ptr %57, align 8
  %389 = load ptr, ptr %388, align 8
  %390 = getelementptr inbounds %struct.nfs_client, ptr %389, i32 0, i32 23
  %391 = call i32 @_atomic_dec_and_lock(ptr noundef %52, ptr noundef %390) #16
  %392 = icmp eq i32 %391, 0
  br i1 %392, label %403, label %393

393:                                              ; preds = %387
  %394 = load volatile i32, ptr @jiffies, align 64
  %395 = getelementptr i8, ptr %46, i32 -4
  store i32 %394, ptr %395, align 4
  %396 = getelementptr i8, ptr %46, i32 -12
  %397 = getelementptr inbounds %struct.nfs_server, ptr %388, i32 0, i32 50
  %398 = getelementptr inbounds %struct.nfs_server, ptr %388, i32 0, i32 50, i32 1
  %399 = load ptr, ptr %398, align 4
  store ptr %396, ptr %398, align 4
  store ptr %397, ptr %396, align 4
  %400 = getelementptr i8, ptr %46, i32 -8
  store ptr %399, ptr %400, align 4
  store volatile ptr %396, ptr %399, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  %401 = load i16, ptr %390, align 4
  %402 = add i16 %401, 1
  store i16 %402, ptr %390, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !20
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !21
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  br label %403

403:                                              ; preds = %393, %387
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !8
  %404 = load volatile ptr, ptr %5, align 4
  %405 = icmp eq ptr %404, %5
  br i1 %405, label %416, label %414

406:                                              ; preds = %51, %45
  %407 = call ptr @rb_next(ptr noundef nonnull %46) #16
  %408 = icmp eq ptr %407, null
  br i1 %408, label %409, label %45

409:                                              ; preds = %406, %39
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  %410 = load i16, ptr %9, align 4
  %411 = add i16 %410, 1
  store i16 %411, ptr %9, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !20
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !21
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  %412 = load volatile ptr, ptr %14, align 4
  %413 = icmp eq ptr %412, %5
  br i1 %413, label %416, label %414

414:                                              ; preds = %409, %403
  %415 = phi ptr [ %412, %409 ], [ %404, %403 ]
  br label %13

416:                                              ; preds = %409, %403, %2
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !9
  call void @nfs4_free_state_owners(ptr noundef nonnull %3)
  br label %417

417:                                              ; preds = %416, %383
  %418 = phi i32 [ %386, %383 ], [ 0, %416 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  ret i32 %418
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nfs4_state_end_reclaim_reboot(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 22
  %3 = tail call i32 @_test_and_clear_bit(i32 noundef 3, ptr noundef %2) #16
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %77, label %5

5:                                                ; preds = %1
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !8
  %6 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 10
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %51, label %9

9:                                                ; preds = %46, %5
  %10 = phi ptr [ %49, %46 ], [ %7, %5 ]
  %11 = getelementptr i8, ptr %10, i32 -4
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.nfs_client, ptr %12, i32 0, i32 23
  tail call void @_raw_spin_lock(ptr noundef %13) #16
  %14 = getelementptr i8, ptr %10, i32 400
  %15 = tail call ptr @rb_first(ptr noundef %14) #16
  %16 = icmp eq ptr %15, null
  br i1 %16, label %46, label %17

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.nfs_client, ptr %12, i32 0, i32 22
  br label %19

19:                                               ; preds = %41, %17
  %20 = phi ptr [ %15, %17 ], [ %44, %41 ]
  %21 = getelementptr i8, ptr %20, i32 16
  tail call void @_raw_spin_lock(ptr noundef %21) #16
  %22 = getelementptr i8, ptr %20, i32 28
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, %22
  br i1 %24, label %41, label %25

25:                                               ; preds = %38, %19
  %26 = phi ptr [ %39, %38 ], [ %23, %19 ]
  %27 = getelementptr inbounds %struct.nfs4_state, ptr %26, i32 0, i32 5
  %28 = tail call i32 @_test_and_clear_bit(i32 noundef 6, ptr noundef %27) #16
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %25
  %31 = load volatile i32, ptr %27, align 4
  %32 = and i32 %31, 512
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  tail call void @_set_bit(i32 noundef 7, ptr noundef %27) #16
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %27) #16
  %35 = getelementptr inbounds %struct.nfs4_state, ptr %26, i32 0, i32 3
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.nfs4_state_owner, ptr %36, i32 0, i32 7
  tail call void @_set_bit(i32 noundef 1, ptr noundef %37) #16
  tail call void @_set_bit(i32 noundef 4, ptr noundef %18) #16
  br label %38

38:                                               ; preds = %34, %30, %25
  %39 = load ptr, ptr %26, align 4
  %40 = icmp eq ptr %39, %22
  br i1 %40, label %41, label %25

41:                                               ; preds = %38, %19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  %42 = load i16, ptr %21, align 4
  %43 = add i16 %42, 1
  store i16 %43, ptr %21, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !20
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !21
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  %44 = tail call ptr @rb_next(ptr noundef nonnull %20) #16
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %19

46:                                               ; preds = %41, %9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  %47 = load i16, ptr %13, align 4
  %48 = add i16 %47, 1
  store i16 %48, ptr %13, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !20
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !21
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  %49 = load volatile ptr, ptr %10, align 4
  %50 = icmp eq ptr %49, %6
  br i1 %50, label %51, label %9

51:                                               ; preds = %46, %5
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !9
  tail call void @nfs_delegation_reap_unclaimed(ptr noundef %0) #16
  %52 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 31
  %53 = load ptr, ptr %52, align 8
  %54 = getelementptr inbounds %struct.nfs4_minor_version_ops, ptr %53, i32 0, i32 11
  %55 = load ptr, ptr %54, align 4
  %56 = tail call ptr @rpc_machine_cred() #16
  %57 = icmp eq ptr %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %51
  %59 = getelementptr inbounds %struct.cred, ptr %56, i32 0, i32 24
  store i32 0, ptr %59, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %56) #16, !srcloc !11
  %60 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %56, ptr nonnull %56, i32 1, ptr nonnull elementtype(i32) %56) #16, !srcloc !18
  br label %61

61:                                               ; preds = %58, %51
  %62 = getelementptr inbounds %struct.nfs4_state_recovery_ops, ptr %55, i32 0, i32 5
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %67, label %65

65:                                               ; preds = %61
  %66 = tail call i32 %63(ptr noundef %0, ptr noundef %56) #16
  br label %67

67:                                               ; preds = %65, %61
  %68 = phi i32 [ %66, %65 ], [ 0, %61 ]
  br i1 %57, label %74, label %69

69:                                               ; preds = %67
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !23
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %56) #16, !srcloc !11
  %70 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %56, ptr nonnull %56, i32 1, ptr nonnull elementtype(i32) %56) #16, !srcloc !24
  %71 = extractvalue { i32, i32 } %70, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !25
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  tail call void @__put_cred(ptr noundef nonnull %56) #16
  br label %74

74:                                               ; preds = %73, %69, %67
  %75 = icmp eq i32 %68, -10055
  br i1 %75, label %76, label %77

76:                                               ; preds = %74
  tail call void @_set_bit(i32 noundef 3, ptr noundef %2) #16
  br label %77

77:                                               ; preds = %76, %74, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_reap_expired_delegations(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nfs4_end_drain_session(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 36
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 33
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.nfs4_slot_table, ptr %5, i32 0, i32 15
  %9 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %8) #16
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %35, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.nfs4_slot_table, ptr %5, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %12) #16
  tail call void @nfs41_wake_slot_table(ptr noundef nonnull %5) #16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  %13 = load i16, ptr %12, align 4
  %14 = add i16 %13, 1
  store i16 %14, ptr %12, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !20
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !21
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  br label %35

15:                                               ; preds = %1
  %16 = icmp eq ptr %3, null
  br i1 %16, label %35, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.nfs4_session, ptr %3, i32 0, i32 8, i32 15
  %19 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %18) #16
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.nfs4_session, ptr %3, i32 0, i32 8
  %23 = getelementptr inbounds %struct.nfs4_session, ptr %3, i32 0, i32 8, i32 3
  tail call void @_raw_spin_lock(ptr noundef %23) #16
  tail call void @nfs41_wake_slot_table(ptr noundef %22) #16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  %24 = load i16, ptr %23, align 4
  %25 = add i16 %24, 1
  store i16 %25, ptr %23, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !20
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !21
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  br label %26

26:                                               ; preds = %21, %17
  %27 = getelementptr inbounds %struct.nfs4_session, ptr %3, i32 0, i32 6, i32 15
  %28 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %27) #16
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.nfs4_session, ptr %3, i32 0, i32 6
  %32 = getelementptr inbounds %struct.nfs4_session, ptr %3, i32 0, i32 6, i32 3
  tail call void @_raw_spin_lock(ptr noundef %32) #16
  tail call void @nfs41_wake_slot_table(ptr noundef %31) #16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  %33 = load i16, ptr %32, align 4
  %34 = add i16 %33, 1
  store i16 %34, ptr %32, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !20
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !21
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  br label %35

35:                                               ; preds = %30, %26, %15, %11, %7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_client_return_marked_delegations(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nfs4_layoutreturn_any_run(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 22
  %3 = tail call i32 @_test_and_clear_bit(i32 noundef 16, ptr noundef %2) #16
  %4 = icmp ne i32 %3, 0
  %5 = zext i1 %4 to i32
  %6 = tail call i32 @_test_and_clear_bit(i32 noundef 17, ptr noundef %2) #16
  %7 = icmp eq i32 %6, 0
  %8 = or i32 %5, 2
  %9 = select i1 %7, i32 %5, i32 %8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  tail call void @pnfs_layout_return_unused_byclid(ptr noundef %0, i32 noundef %9) #16
  tail call void @_set_bit(i32 noundef 14, ptr noundef %2) #16
  br label %12

12:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfs4_state_mgr(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @nfs4_establish_lease(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 31
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.nfs4_minor_version_ops, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = tail call fastcc i32 @nfs4_begin_drain_session(ptr noundef %0)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %24

8:                                                ; preds = %1
  %9 = tail call ptr @rpc_machine_cred() #16
  %10 = icmp eq ptr %9, null
  br i1 %10, label %24, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.cred, ptr %9, i32 0, i32 24
  store i32 0, ptr %12, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %9) #16, !srcloc !11
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %9, ptr nonnull %9, i32 1, ptr nonnull elementtype(i32) %9) #16, !srcloc !18
  %14 = getelementptr inbounds %struct.nfs4_state_recovery_ops, ptr %5, i32 0, i32 4
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 %15(ptr noundef %0, ptr noundef nonnull %9) #16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !23
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %9) #16, !srcloc !11
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %9, ptr nonnull %9, i32 1, ptr nonnull elementtype(i32) %9) #16, !srcloc !24
  %18 = extractvalue { i32, i32 } %17, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !25
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %11
  tail call void @__put_cred(ptr noundef nonnull %9) #16
  br label %21

21:                                               ; preds = %20, %11
  %22 = icmp eq i32 %16, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  tail call void @pnfs_destroy_all_layouts(ptr noundef %0) #16
  br label %24

24:                                               ; preds = %23, %21, %8, %1
  %25 = phi i32 [ 0, %23 ], [ %6, %1 ], [ %16, %21 ], [ -2, %8 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @nfs4_handle_reclaim_lease_error(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  switch i32 %1, label %28 [
    i32 -10063, label %3
    i32 -10022, label %8
    i32 -10017, label %10
    i32 -13, label %15
    i32 -10008, label %15
    i32 -11, label %15
    i32 -10021, label %16
    i32 -28, label %21
  ]

3:                                                ; preds = %2
  %4 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 22
  %5 = tail call i32 @_test_and_set_bit(i32 noundef 9, ptr noundef %4) #16
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %28

7:                                                ; preds = %3
  tail call void @msleep(i32 noundef 1000) #16
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %4) #16
  br label %26

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 22
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %9) #16
  tail call void @nfs_delegation_mark_reclaim(ptr noundef %0) #16
  tail call fastcc void @nfs4_state_mark_reclaim_helper(ptr noundef %0, ptr noundef nonnull @nfs4_state_mark_reclaim_reboot) #16
  br label %26

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 7
  %12 = load ptr, ptr %11, align 8
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %12) #17
  tail call void @nfs_mark_client_ready(ptr noundef %0, i32 noundef -1) #16
  %14 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 22
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %14) #16
  br label %28

15:                                               ; preds = %2, %2, %2
  tail call void @msleep(i32 noundef 1000) #16
  br label %26

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 2
  %18 = load i32, ptr %17, align 8
  %19 = icmp eq i32 %18, 2
  br i1 %19, label %20, label %28

20:                                               ; preds = %16
  tail call void @nfs_mark_client_ready(ptr noundef %0, i32 noundef -93) #16
  br label %28

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 2
  %23 = load i32, ptr %22, align 8
  %24 = icmp eq i32 %23, 2
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  tail call void @nfs_mark_client_ready(ptr noundef %0, i32 noundef -5) #16
  br label %28

26:                                               ; preds = %15, %8, %7
  %27 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 22
  tail call void @_set_bit(i32 noundef 2, ptr noundef %27) #16
  br label %28

28:                                               ; preds = %26, %25, %21, %20, %16, %10, %3, %2
  %29 = phi i32 [ 0, %26 ], [ -1, %10 ], [ -526, %3 ], [ -93, %20 ], [ -93, %16 ], [ -5, %25 ], [ -5, %21 ], [ %1, %2 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @nfs4_begin_drain_session(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 36
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 33
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %21, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.nfs4_slot_table, ptr %5, i32 0, i32 15
  tail call void @_set_bit(i32 noundef 0, ptr noundef %8) #16
  %9 = getelementptr inbounds %struct.nfs4_slot_table, ptr %5, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %9) #16
  %10 = getelementptr inbounds %struct.nfs4_slot_table, ptr %5, i32 0, i32 8
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %18, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.nfs4_slot_table, ptr %5, i32 0, i32 14
  store i32 0, ptr %14, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  %15 = load i16, ptr %9, align 4
  %16 = add i16 %15, 1
  store i16 %16, ptr %9, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !20
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !21
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  %17 = tail call i32 @wait_for_completion_interruptible(ptr noundef %14) #16
  br label %50

18:                                               ; preds = %7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  %19 = load i16, ptr %9, align 4
  %20 = add i16 %19, 1
  store i16 %20, ptr %9, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !20
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !21
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  br label %50

21:                                               ; preds = %1
  %22 = getelementptr inbounds %struct.nfs4_session, ptr %3, i32 0, i32 8, i32 15
  tail call void @_set_bit(i32 noundef 0, ptr noundef %22) #16
  %23 = getelementptr inbounds %struct.nfs4_session, ptr %3, i32 0, i32 8, i32 3
  tail call void @_raw_spin_lock(ptr noundef %23) #16
  %24 = getelementptr inbounds %struct.nfs4_session, ptr %3, i32 0, i32 8, i32 8
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  %28 = load i16, ptr %23, align 4
  %29 = add i16 %28, 1
  store i16 %29, ptr %23, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !20
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !21
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  br label %36

30:                                               ; preds = %21
  %31 = getelementptr inbounds %struct.nfs4_session, ptr %3, i32 0, i32 8, i32 14
  store i32 0, ptr %31, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  %32 = load i16, ptr %23, align 4
  %33 = add i16 %32, 1
  store i16 %33, ptr %23, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !20
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !21
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  %34 = tail call i32 @wait_for_completion_interruptible(ptr noundef %31) #16
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %30, %27
  %37 = getelementptr inbounds %struct.nfs4_session, ptr %3, i32 0, i32 6, i32 15
  tail call void @_set_bit(i32 noundef 0, ptr noundef %37) #16
  %38 = getelementptr inbounds %struct.nfs4_session, ptr %3, i32 0, i32 6, i32 3
  tail call void @_raw_spin_lock(ptr noundef %38) #16
  %39 = getelementptr inbounds %struct.nfs4_session, ptr %3, i32 0, i32 6, i32 8
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %47, label %42

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.nfs4_session, ptr %3, i32 0, i32 6, i32 14
  store i32 0, ptr %43, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  %44 = load i16, ptr %38, align 4
  %45 = add i16 %44, 1
  store i16 %45, ptr %38, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !20
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !21
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  %46 = tail call i32 @wait_for_completion_interruptible(ptr noundef %43) #16
  br label %50

47:                                               ; preds = %36
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  %48 = load i16, ptr %38, align 4
  %49 = add i16 %48, 1
  store i16 %49, ptr %38, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !20
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !21
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  br label %50

50:                                               ; preds = %47, %42, %30, %18, %13
  %51 = phi i32 [ %34, %30 ], [ %17, %13 ], [ 0, %18 ], [ %46, %42 ], [ 0, %47 ]
  ret i32 %51
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_proc_destroy_session(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @nfs4_recovery_handle_error(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  switch i32 %1, label %15 [
    i32 0, label %14
    i32 -10048, label %3
    i32 -10033, label %5
    i32 -10022, label %6
    i32 -10011, label %8
    i32 -10052, label %10
    i32 -10053, label %10
    i32 -10077, label %10
    i32 -10078, label %10
    i32 -10076, label %10
    i32 -10063, label %10
    i32 -10055, label %12
  ]

3:                                                ; preds = %2
  %4 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 22
  tail call void @_set_bit(i32 noundef 2, ptr noundef %4) #16
  tail call void @nfs_expire_all_delegations(ptr noundef %0) #16
  br label %14

5:                                                ; preds = %2
  tail call fastcc void @nfs4_state_end_reclaim_reboot(ptr noundef %0)
  br label %14

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 22
  tail call void @_set_bit(i32 noundef 2, ptr noundef %7) #16
  tail call void @nfs_delegation_mark_reclaim(ptr noundef %0) #16
  tail call fastcc void @nfs4_state_mark_reclaim_helper(ptr noundef %0, ptr noundef nonnull @nfs4_state_mark_reclaim_reboot) #16
  br label %14

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 22
  tail call void @_set_bit(i32 noundef 2, ptr noundef %9) #16
  tail call void @nfs_mark_test_expired_all_delegations(ptr noundef %0) #16
  tail call fastcc void @nfs4_state_mark_reclaim_helper(ptr noundef %0, ptr noundef nonnull @nfs4_state_mark_reclaim_nograce) #16
  br label %14

10:                                               ; preds = %2, %2, %2, %2, %2, %2
  %11 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 22
  tail call void @_set_bit(i32 noundef 6, ptr noundef %11) #16
  br label %14

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 22
  tail call void @_set_bit(i32 noundef 10, ptr noundef %13) #16
  br label %14

14:                                               ; preds = %12, %10, %8, %6, %5, %3, %2
  br label %15

15:                                               ; preds = %14, %2
  %16 = phi i32 [ 0, %14 ], [ %1, %2 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_proc_bind_conn_to_session(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @nfs4_try_migration(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = tail call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #16
  %5 = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 46152, i32 noundef 3264, i32 noundef 4) #20
  %6 = icmp eq ptr %4, null
  %7 = icmp eq ptr %5, null
  %8 = select i1 %6, i1 true, i1 %7
  br i1 %8, label %34, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 34
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 13
  %13 = load ptr, ptr %12, align 64
  %14 = getelementptr inbounds %struct.dentry, ptr %13, i32 0, i32 5
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr i8, ptr %15, i32 -288
  %17 = tail call i32 @nfs4_proc_get_locations(ptr noundef %0, ptr noundef %16, ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef %1) #16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %9
  %20 = getelementptr inbounds %struct.nfs4_fs_locations, ptr %5, i32 0, i32 3
  %21 = load i32, ptr %20, align 16
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %34, label %23

23:                                               ; preds = %19
  %24 = load i32, ptr %5, align 4096
  %25 = and i32 %24, 524288
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %23
  %28 = tail call fastcc i32 @nfs4_begin_drain_session(ptr noundef %3)
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = tail call i32 @nfs4_replace_transport(ptr noundef %0, ptr noundef nonnull %5) #16
  %32 = icmp eq i32 %31, 0
  %33 = select i1 %32, i32 0, i32 -6
  br label %34

34:                                               ; preds = %30, %27, %23, %19, %9, %2
  %35 = phi i32 [ 0, %2 ], [ %17, %9 ], [ -6, %23 ], [ -6, %19 ], [ %28, %27 ], [ %33, %30 ]
  br i1 %6, label %37, label %36

36:                                               ; preds = %34
  tail call void @__free_pages(ptr noundef nonnull %4, i32 noundef 0) #16
  br label %37

37:                                               ; preds = %36, %34
  tail call void @kfree(ptr noundef %5) #16
  %38 = icmp eq i32 %35, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.nfs_client, ptr %3, i32 0, i32 7
  %41 = load ptr, ptr %40, align 8
  %42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %41) #17
  %43 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 55
  tail call void @_set_bit(i32 noundef 2, ptr noundef %43) #16
  br label %44

44:                                               ; preds = %39, %37
  ret i32 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_proc_get_locations(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_replace_transport(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_proc_fsid_present(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfs4_state_lock_reclaim(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_delegation_reap_unclaimed(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs41_wake_slot_table(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnfs_layout_return_unused_byclid(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #14

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfs4_state_mgr_failed(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #11

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { noreturn null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #15 = { argmemonly nofree nounwind readonly willreturn }
attributes #16 = { nounwind }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind allocsize(2) }
attributes #19 = { noreturn nounwind }
attributes #20 = { nounwind allocsize(0) }

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
!8 = !{i64 2149393305}
!9 = !{i64 2149393522}
!10 = !{!"auto-init"}
!11 = !{i64 480582, i64 2147970553, i64 2147970579, i64 2147970626, i64 2147970648, i64 2147970676, i64 2147970696}
!12 = !{i64 2147984223, i64 2147984255, i64 2147984284, i64 2147984318, i64 2147984349, i64 2147984372}
!13 = !{!"branch_weights", i32 1, i32 2000}
!14 = !{!"branch_weights", i32 2000, i32 1}
!15 = !{i64 2148091508}
!16 = !{i64 2147989686, i64 2147989718, i64 2147989747, i64 2147989781, i64 2147989812, i64 2147989835}
!17 = !{i64 2150276185}
!18 = !{i64 2147982765, i64 2147982791, i64 2147982820, i64 2147982854, i64 2147982885, i64 2147982908}
!19 = !{i64 2148994533}
!20 = !{i64 2148990357}
!21 = !{i64 2148990432, i64 2148990459, i64 2148990506, i64 2148990528, i64 2148990556, i64 2148990576}
!22 = !{i64 2149017536}
!23 = !{i64 2148083420}
!24 = !{i64 2147985806, i64 2147985838, i64 2147985867, i64 2147985901, i64 2147985932, i64 2147985955}
!25 = !{i64 2148083623}
!26 = !{i64 466645, i64 466669, i64 466690, i64 466707, i64 466724}
!27 = !{i64 2150341155}
!28 = !{i64 2149246700}
!29 = !{i64 2149246542}
!30 = !{i64 2149246844}
!31 = !{i64 2149237338}
!32 = !{i64 2158792832}
!33 = !{i64 490029, i64 490046, i64 490070, i64 490096, i64 490114}
!34 = !{i64 2158793152}
!35 = !{ptr @nfs4_state_mark_reclaim_nograce, ptr @nfs4_state_mark_reclaim_reboot}
!36 = !{i64 2156751654}
!37 = !{i64 2156751800}
!38 = !{i64 2156768425}
!39 = !{i64 2156768619}
!40 = !{i64 2147982272}
!41 = !{i64 467151, i64 467176, i64 467198, i64 467214, i64 467226, i64 467246, i64 467270, i64 467286, i64 467298}
!42 = !{i64 2147982398}
!43 = !{i64 2149237637}
!44 = !{i64 2157022997}
!45 = !{i64 2157023177}
!46 = !{i64 2149237938}
