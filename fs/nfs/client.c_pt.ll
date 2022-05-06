; ModuleID = '/llk/IR/fs/nfs/client.c_pt.bc'
source_filename = "../fs/nfs/client.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_register_nfs_version:\09\09\09\09\09"
module asm "\09.asciz \09\22register_nfs_version\22\09\09\09\09\09"
module asm "__kstrtabns_register_nfs_version:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unregister_nfs_version:\09\09\09\09\09"
module asm "\09.asciz \09\22unregister_nfs_version\22\09\09\09\09\09"
module asm "__kstrtabns_unregister_nfs_version:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs_alloc_client:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs_alloc_client\22\09\09\09\09\09"
module asm "__kstrtabns_nfs_alloc_client:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs_free_client:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs_free_client\22\09\09\09\09\09"
module asm "__kstrtabns_nfs_free_client:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs_put_client:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs_put_client\22\09\09\09\09\09"
module asm "__kstrtabns_nfs_put_client:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs_client_init_is_complete:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs_client_init_is_complete\22\09\09\09\09\09"
module asm "__kstrtabns_nfs_client_init_is_complete:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs_client_init_status:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs_client_init_status\22\09\09\09\09\09"
module asm "__kstrtabns_nfs_client_init_status:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs_wait_client_init_complete:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs_wait_client_init_complete\22\09\09\09\09\09"
module asm "__kstrtabns_nfs_wait_client_init_complete:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs_get_client:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs_get_client\22\09\09\09\09\09"
module asm "__kstrtabns_nfs_get_client:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs_mark_client_ready:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs_mark_client_ready\22\09\09\09\09\09"
module asm "__kstrtabns_nfs_mark_client_ready:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs_init_timeout_values:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs_init_timeout_values\22\09\09\09\09\09"
module asm "__kstrtabns_nfs_init_timeout_values:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs_create_rpc_client:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs_create_rpc_client\22\09\09\09\09\09"
module asm "__kstrtabns_nfs_create_rpc_client:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs_init_server_rpcclient:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs_init_server_rpcclient\22\09\09\09\09\09"
module asm "__kstrtabns_nfs_init_server_rpcclient:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs_init_client:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs_init_client\22\09\09\09\09\09"
module asm "__kstrtabns_nfs_init_client:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs_probe_server:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs_probe_server\22\09\09\09\09\09"
module asm "__kstrtabns_nfs_probe_server:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs_server_copy_userdata:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs_server_copy_userdata\22\09\09\09\09\09"
module asm "__kstrtabns_nfs_server_copy_userdata:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs_server_insert_lists:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs_server_insert_lists\22\09\09\09\09\09"
module asm "__kstrtabns_nfs_server_insert_lists:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs_server_remove_lists:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs_server_remove_lists\22\09\09\09\09\09"
module asm "__kstrtabns_nfs_server_remove_lists:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs_alloc_server:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs_alloc_server\22\09\09\09\09\09"
module asm "__kstrtabns_nfs_alloc_server:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs_free_server:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs_free_server\22\09\09\09\09\09"
module asm "__kstrtabns_nfs_free_server:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs_create_server:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs_create_server\22\09\09\09\09\09"
module asm "__kstrtabns_nfs_create_server:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs_clone_server:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs_clone_server\22\09\09\09\09\09"
module asm "__kstrtabns_nfs_clone_server:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.rpc_stat = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rpc_program = type { ptr, i32, i32, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type {}
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.11, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.108, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.108 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.nfs_subversion = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nfs_client_initdata = type { i32, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.nfs_client = type { %struct.refcount_struct, %struct.atomic_t, i32, i32, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32, i32, i32, ptr, %struct.list_head, i64, %struct.nfs4_verifier, i32, %struct.spinlock, i32, i32, %struct.delayed_work, %struct.rpc_wait_queue, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i8, ptr, ptr, ptr, i32, %struct.wait_queue_head, [48 x i8], ptr, %struct.list_head }
%struct.__kernel_sockaddr_storage = type { %union.anon.115 }
%union.anon.115 = type { ptr, [124 x i8] }
%struct.nfs4_verifier = type { [8 x i8] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.rpc_wait_queue = type { %struct.spinlock, [4 x %struct.list_head], i8, i8, i8, i16, %struct.rpc_timer, ptr }
%struct.rpc_timer = type { %struct.list_head, i32, %struct.delayed_work }
%struct.nfs_net = type { ptr, ptr, %struct.bl_dev_msg, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, %struct.idr, i16, i16, [3 x i32], ptr, %struct.spinlock, i64, ptr }
%struct.bl_dev_msg = type { i32, i32, i32 }
%struct.nfs_rpc_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.64 }
%union.anon.64 = type { [4 x i32] }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.rpc_timeout = type { i32, i32, i32, i32, i8 }
%struct.rpc_create_args = type { ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32 }
%struct.rpc_clnt = type { %struct.refcount_struct, i32, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.spinlock, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i8, ptr, ptr, %struct.atomic_t, i32, [65 x i8], %struct.rpc_pipe_dir_head, ptr, %struct.rpc_rtt, %struct.rpc_timeout, ptr, ptr, ptr, %union.anon.128, ptr, i32 }
%struct.rpc_pipe_dir_head = type { %struct.list_head, ptr }
%struct.rpc_rtt = type { i32, [5 x i32], [5 x i32], [5 x i32] }
%union.anon.128 = type { %struct.work_struct }
%struct.nfs_server = type { ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.nfs_fsid, i64, %struct.timespec64, i32, ptr, i32, %struct.nfs_auth_info, i32, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, i32, ptr, %struct.rpc_wait_queue, ptr, %struct.rb_root, %struct.ida, %struct.ida, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, ptr, %struct.atomic_t, %struct.__kernel_sockaddr_storage, i32, i32, i16, i16, %struct.rpc_wait_queue, i32, ptr, i8 }
%struct.nfs_fsid = type { i64, i64 }
%struct.timespec64 = type { i64, i32 }
%struct.nfs_auth_info = type { i32, [12 x i32] }
%struct.ida = type { %struct.xarray }
%struct.nfs_fsinfo = type { ptr, i32, i32, i32, i32, i32, i32, i32, i64, %struct.timespec64, i32, i32, [8 x i32], i32, i32, i32, i32 }
%struct.nfs_pathconf = type { ptr, i32, i32 }
%struct.nlmclnt_initdata = type { ptr, ptr, i32, i16, i32, i32, ptr, ptr, ptr }
%struct.fs_context = type { ptr, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.p_log, ptr, ptr, ptr, i32, i32, i32, i32, i24 }
%struct.p_log = type { ptr, ptr }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.13 }
%struct.kuid_t = type { i32 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.nfs_fs_context = type { i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.nfs_auth_info, i32, ptr, i32, i32, ptr, i16, i16, i8, %struct.anon.160, %struct.anon.162, ptr, ptr, ptr, %struct.nfs_clone_mount }
%struct.anon.160 = type { %union.anon.161, i32, ptr, i32, i32, i16 }
%union.anon.161 = type { %struct.__kernel_sockaddr_storage }
%struct.anon.162 = type { %union.anon.163, i32, ptr, ptr, i32, i16, i16, i16, i16 }
%union.anon.163 = type { %struct.__kernel_sockaddr_storage }
%struct.nfs_clone_mount = type { ptr, ptr, ptr, i32 }
%struct.nfs_fattr = type { i32, i16, i32, %struct.kuid_t, %struct.kgid_t, i32, i64, %union.anon.118, %struct.nfs_fsid, i64, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64, i64, %struct.timespec64, %struct.timespec64, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.118 = type { %struct.anon.120 }
%struct.anon.120 = type { i64 }

@.str = private unnamed_addr constant [4 x i8] c"nfs\00", align 1
@nfs_version = internal global [5 x ptr] zeroinitializer, align 4
@nfs_rpcstat = dso_local global %struct.rpc_stat { ptr @nfs_program, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, align 4
@nfs_program = dso_local constant %struct.rpc_program { ptr @.str, i32 100003, i32 5, ptr @nfs_version, ptr @nfs_rpcstat, ptr @.str }, align 4
@nfs_version_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @nfs_version_mutex, i64 12), ptr getelementptr (i8, ptr @nfs_version_mutex, i64 12) } }, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"nfsv%d\00", align 1
@nfs_version_lock = internal global %struct.spinlock zeroinitializer, align 4
@nfs_versions = internal global %struct.list_head { ptr @nfs_versions, ptr @nfs_versions }, align 4
@__kstrtab_register_nfs_version = external dso_local constant [0 x i8], align 1
@__kstrtabns_register_nfs_version = external dso_local constant [0 x i8], align 1
@__ksymtab_register_nfs_version = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @register_nfs_version to i32), ptr @__kstrtab_register_nfs_version, ptr @__kstrtabns_register_nfs_version }, section "___ksymtab_gpl+register_nfs_version", align 4
@__kstrtab_unregister_nfs_version = external dso_local constant [0 x i8], align 1
@__kstrtabns_unregister_nfs_version = external dso_local constant [0 x i8], align 1
@__ksymtab_unregister_nfs_version = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unregister_nfs_version to i32), ptr @__kstrtab_unregister_nfs_version, ptr @__kstrtabns_unregister_nfs_version }, section "___ksymtab_gpl+unregister_nfs_version", align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@__kstrtab_nfs_alloc_client = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs_alloc_client = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs_alloc_client = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs_alloc_client to i32), ptr @__kstrtab_nfs_alloc_client, ptr @__kstrtabns_nfs_alloc_client }, section "___ksymtab_gpl+nfs_alloc_client", align 4
@__kstrtab_nfs_free_client = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs_free_client = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs_free_client = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs_free_client to i32), ptr @__kstrtab_nfs_free_client, ptr @__kstrtabns_nfs_free_client }, section "___ksymtab_gpl+nfs_free_client", align 4
@nfs_net_id = external dso_local local_unnamed_addr global i32, align 4
@nfs_put_client.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"fs/nfs/client.c\00", align 1
@__kstrtab_nfs_put_client = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs_put_client = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs_put_client = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs_put_client to i32), ptr @__kstrtab_nfs_put_client, ptr @__kstrtabns_nfs_put_client }, section "___ksymtab_gpl+nfs_put_client", align 4
@__kstrtab_nfs_client_init_is_complete = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs_client_init_is_complete = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs_client_init_is_complete = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs_client_init_is_complete to i32), ptr @__kstrtab_nfs_client_init_is_complete, ptr @__kstrtabns_nfs_client_init_is_complete }, section "___ksymtab_gpl+nfs_client_init_is_complete", align 4
@nfs_client_init_status.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_nfs_client_init_status = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs_client_init_status = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs_client_init_status = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs_client_init_status to i32), ptr @__kstrtab_nfs_client_init_status, ptr @__kstrtabns_nfs_client_init_status }, section "___ksymtab_gpl+nfs_client_init_status", align 4
@nfs_client_active_wq = internal global %struct.wait_queue_head { %struct.spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @nfs_client_active_wq, i64 4), ptr getelementptr (i8, ptr @nfs_client_active_wq, i64 4) } }, align 4
@__kstrtab_nfs_wait_client_init_complete = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs_wait_client_init_complete = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs_wait_client_init_complete = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs_wait_client_init_complete to i32), ptr @__kstrtab_nfs_wait_client_init_complete, ptr @__kstrtabns_nfs_wait_client_init_complete }, section "___ksymtab_gpl+nfs_wait_client_init_complete", align 4
@__kstrtab_nfs_get_client = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs_get_client = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs_get_client = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs_get_client to i32), ptr @__kstrtab_nfs_get_client, ptr @__kstrtabns_nfs_get_client }, section "___ksymtab_gpl+nfs_get_client", align 4
@__kstrtab_nfs_mark_client_ready = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs_mark_client_ready = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs_mark_client_ready = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs_mark_client_ready to i32), ptr @__kstrtab_nfs_mark_client_ready, ptr @__kstrtabns_nfs_mark_client_ready }, section "___ksymtab_gpl+nfs_mark_client_ready", align 4
@__kstrtab_nfs_init_timeout_values = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs_init_timeout_values = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs_init_timeout_values = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs_init_timeout_values to i32), ptr @__kstrtab_nfs_init_timeout_values, ptr @__kstrtabns_nfs_init_timeout_values }, section "___ksymtab_gpl+nfs_init_timeout_values", align 4
@__kstrtab_nfs_create_rpc_client = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs_create_rpc_client = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs_create_rpc_client = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs_create_rpc_client to i32), ptr @__kstrtab_nfs_create_rpc_client, ptr @__kstrtabns_nfs_create_rpc_client }, section "___ksymtab_gpl+nfs_create_rpc_client", align 4
@__kstrtab_nfs_init_server_rpcclient = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs_init_server_rpcclient = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs_init_server_rpcclient = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs_init_server_rpcclient to i32), ptr @__kstrtab_nfs_init_server_rpcclient, ptr @__kstrtabns_nfs_init_server_rpcclient }, section "___ksymtab_gpl+nfs_init_server_rpcclient", align 4
@__kstrtab_nfs_init_client = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs_init_client = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs_init_client = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs_init_client to i32), ptr @__kstrtab_nfs_init_client, ptr @__kstrtabns_nfs_init_client }, section "___ksymtab_gpl+nfs_init_client", align 4
@__kstrtab_nfs_probe_server = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs_probe_server = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs_probe_server = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs_probe_server to i32), ptr @__kstrtab_nfs_probe_server, ptr @__kstrtabns_nfs_probe_server }, section "___ksymtab_gpl+nfs_probe_server", align 4
@__kstrtab_nfs_server_copy_userdata = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs_server_copy_userdata = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs_server_copy_userdata = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs_server_copy_userdata to i32), ptr @__kstrtab_nfs_server_copy_userdata, ptr @__kstrtabns_nfs_server_copy_userdata }, section "___ksymtab_gpl+nfs_server_copy_userdata", align 4
@__kstrtab_nfs_server_insert_lists = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs_server_insert_lists = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs_server_insert_lists = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs_server_insert_lists to i32), ptr @__kstrtab_nfs_server_insert_lists, ptr @__kstrtabns_nfs_server_insert_lists }, section "___ksymtab_gpl+nfs_server_insert_lists", align 4
@__kstrtab_nfs_server_remove_lists = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs_server_remove_lists = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs_server_remove_lists = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs_server_remove_lists to i32), ptr @__kstrtab_nfs_server_remove_lists, ptr @__kstrtabns_nfs_server_remove_lists }, section "___ksymtab_gpl+nfs_server_remove_lists", align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"NFS UOC\00", align 1
@__kstrtab_nfs_alloc_server = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs_alloc_server = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs_alloc_server = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs_alloc_server to i32), ptr @__kstrtab_nfs_alloc_server, ptr @__kstrtabns_nfs_alloc_server }, section "___ksymtab_gpl+nfs_alloc_server", align 4
@__kstrtab_nfs_free_server = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs_free_server = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs_free_server = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs_free_server to i32), ptr @__kstrtab_nfs_free_server, ptr @__kstrtabns_nfs_free_server }, section "___ksymtab_gpl+nfs_free_server", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@__kstrtab_nfs_create_server = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs_create_server = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs_create_server = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs_create_server to i32), ptr @__kstrtab_nfs_create_server, ptr @__kstrtabns_nfs_create_server }, section "___ksymtab_gpl+nfs_create_server", align 4
@__kstrtab_nfs_clone_server = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs_clone_server = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs_clone_server = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs_clone_server to i32), ptr @__kstrtab_nfs_clone_server, ptr @__kstrtabns_nfs_clone_server }, section "___ksymtab_gpl+nfs_clone_server", align 4
@nfs_clients_exit.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@nfs_clients_exit.__already_done.5 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"nfsfs\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"servers\00", align 1
@nfs_server_list_ops = internal constant %struct.seq_operations { ptr @nfs_server_list_start, ptr @nfs_server_list_stop, ptr @nfs_server_list_next, ptr @nfs_server_list_show }, align 4
@.str.8 = private unnamed_addr constant [8 x i8] c"volumes\00", align 1
@nfs_volume_list_ops = internal constant %struct.seq_operations { ptr @nfs_volume_list_start, ptr @nfs_volume_list_stop, ptr @nfs_volume_list_next, ptr @nfs_volume_list_show }, align 4
@.str.9 = private unnamed_addr constant [9 x i8] c"fs/nfsfs\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"fs/nfsfs/servers\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"../../net/nfsfs/servers\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"fs/nfsfs/volumes\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"../../net/nfsfs/volumes\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.14 = private unnamed_addr constant [9 x i8] c"pNFS ROC\00", align 1
@init_net = external dso_local global %struct.net, align 64
@.str.15 = private unnamed_addr constant [31 x i8] c"NV SERVER   PORT USE HOSTNAME\0A\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"v%u %s %s %3d %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [69 x i8] c"NV SERVER   PORT DEV          FSID                              FSC\0A\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"%u:%u\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"%llx:%llx\00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"v%u %s %s %-12s %-33s %s\0A\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"no \00", align 1
@llvm.compiler.used = appending global [22 x ptr] [ptr @__ksymtab_nfs_alloc_client, ptr @__ksymtab_nfs_alloc_server, ptr @__ksymtab_nfs_client_init_is_complete, ptr @__ksymtab_nfs_client_init_status, ptr @__ksymtab_nfs_clone_server, ptr @__ksymtab_nfs_create_rpc_client, ptr @__ksymtab_nfs_create_server, ptr @__ksymtab_nfs_free_client, ptr @__ksymtab_nfs_free_server, ptr @__ksymtab_nfs_get_client, ptr @__ksymtab_nfs_init_client, ptr @__ksymtab_nfs_init_server_rpcclient, ptr @__ksymtab_nfs_init_timeout_values, ptr @__ksymtab_nfs_mark_client_ready, ptr @__ksymtab_nfs_probe_server, ptr @__ksymtab_nfs_put_client, ptr @__ksymtab_nfs_server_copy_userdata, ptr @__ksymtab_nfs_server_insert_lists, ptr @__ksymtab_nfs_server_remove_lists, ptr @__ksymtab_nfs_wait_client_init_complete, ptr @__ksymtab_register_nfs_version, ptr @__ksymtab_unregister_nfs_version], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @get_nfs_version(i32 noundef %0) local_unnamed_addr #0 {
  tail call void @_raw_spin_lock(ptr noundef nonnull @nfs_version_lock) #12
  br label %2

2:                                                ; preds = %6, %1
  %3 = phi ptr [ @nfs_versions, %1 ], [ %4, %6 ]
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, @nfs_versions
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %4, i32 -12
  %8 = load ptr, ptr %7, align 4
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, %0
  br i1 %10, label %14, label %2

11:                                               ; preds = %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !8
  %12 = load i16, ptr @nfs_version_lock, align 4
  %13 = add i16 %12, 1
  store i16 %13, ptr @nfs_version_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  br label %19

14:                                               ; preds = %6
  %15 = getelementptr i8, ptr %4, i32 -24
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !8
  %16 = load i16, ptr @nfs_version_lock, align 4
  %17 = add i16 %16, 1
  store i16 %17, ptr @nfs_version_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  %18 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %18, label %19, label %39

19:                                               ; preds = %14, %11
  tail call void @mutex_lock(ptr noundef nonnull @nfs_version_mutex) #12
  %20 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.1, i32 noundef %0) #12
  tail call void @_raw_spin_lock(ptr noundef nonnull @nfs_version_lock) #12
  br label %21

21:                                               ; preds = %25, %19
  %22 = phi ptr [ @nfs_versions, %19 ], [ %23, %25 ]
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, @nfs_versions
  br i1 %24, label %34, label %25

25:                                               ; preds = %21
  %26 = getelementptr i8, ptr %23, i32 -12
  %27 = load ptr, ptr %26, align 4
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, %0
  br i1 %29, label %30, label %21

30:                                               ; preds = %25
  %31 = getelementptr i8, ptr %23, i32 -24
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !8
  %32 = load i16, ptr @nfs_version_lock, align 4
  %33 = add i16 %32, 1
  store i16 %33, ptr @nfs_version_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  br label %37

34:                                               ; preds = %21
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !8
  %35 = load i16, ptr @nfs_version_lock, align 4
  %36 = add i16 %35, 1
  store i16 %36, ptr @nfs_version_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  br label %37

37:                                               ; preds = %34, %30
  %38 = phi ptr [ %31, %30 ], [ inttoptr (i32 -93 to ptr), %34 ]
  tail call void @mutex_unlock(ptr noundef nonnull @nfs_version_mutex) #12
  br label %39

39:                                               ; preds = %37, %14
  %40 = phi ptr [ %38, %37 ], [ %15, %14 ]
  %41 = icmp ugt ptr %40, inttoptr (i32 -4096 to ptr)
  br i1 %41, label %46, label %42

42:                                               ; preds = %39
  %43 = load ptr, ptr %40, align 4
  %44 = tail call zeroext i1 @try_module_get(ptr noundef %43) #12
  %45 = select i1 %44, ptr %40, ptr inttoptr (i32 -11 to ptr)
  br label %46

46:                                               ; preds = %42, %39
  %47 = phi ptr [ %40, %39 ], [ %45, %42 ]
  ret ptr %47
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @put_nfs_version(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  tail call void @module_put(ptr noundef %2) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @register_nfs_version(ptr noundef %0) #0 {
  tail call void @_raw_spin_lock(ptr noundef nonnull @nfs_version_lock) #12
  %2 = getelementptr inbounds %struct.nfs_subversion, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr @nfs_versions, align 4
  %4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  store ptr %2, ptr %4, align 4
  store ptr %3, ptr %2, align 4
  %5 = getelementptr inbounds %struct.nfs_subversion, ptr %0, i32 0, i32 6, i32 1
  store ptr @nfs_versions, ptr %5, align 4
  store volatile ptr %2, ptr @nfs_versions, align 4
  %6 = getelementptr inbounds %struct.nfs_subversion, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nfs_subversion, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr [5 x ptr], ptr @nfs_version, i32 0, i32 %10
  store ptr %7, ptr %11, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !8
  %12 = load i16, ptr @nfs_version_lock, align 4
  %13 = add i16 %12, 1
  store i16 %13, ptr @nfs_version_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @unregister_nfs_version(ptr nocapture noundef %0) #0 {
  tail call void @_raw_spin_lock(ptr noundef nonnull @nfs_version_lock) #12
  %2 = getelementptr inbounds %struct.nfs_subversion, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr [5 x ptr], ptr @nfs_version, i32 0, i32 %4
  store ptr null, ptr %5, align 4
  %6 = getelementptr inbounds %struct.nfs_subversion, ptr %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.nfs_subversion, ptr %0, i32 0, i32 6, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  store ptr %8, ptr %10, align 4
  store volatile ptr %9, ptr %8, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %7, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !8
  %11 = load i16, ptr @nfs_version_lock, align 4
  %12 = add i16 %11, 1
  store i16 %12, ptr @nfs_version_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nfs_alloc_client(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 528) #13
  %4 = icmp eq ptr %3, null
  br i1 %4, label %57, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.nfs_client_initdata, ptr %0, i32 0, i32 8
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nfs_client, ptr %3, i32 0, i32 15
  store i32 %7, ptr %8, align 8
  %9 = getelementptr inbounds %struct.nfs_client_initdata, ptr %0, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.nfs_client, ptr %3, i32 0, i32 14
  store ptr %10, ptr %11, align 4
  %12 = load ptr, ptr %10, align 4
  %13 = tail call zeroext i1 @try_module_get(ptr noundef %12) #12
  br i1 %13, label %14, label %56

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.nfs_subversion, ptr %10, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.nfs_client, ptr %3, i32 0, i32 12
  store ptr %16, ptr %17, align 4
  store volatile i32 1, ptr %3, align 8
  %18 = getelementptr inbounds %struct.nfs_client, ptr %3, i32 0, i32 2
  store i32 1, ptr %18, align 8
  %19 = getelementptr inbounds %struct.nfs_client, ptr %3, i32 0, i32 5
  %20 = getelementptr inbounds %struct.nfs_client_initdata, ptr %0, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.nfs_client_initdata, ptr %0, i32 0, i32 5
  %23 = load i32, ptr %22, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %19, ptr align 2 %21, i32 %23, i1 false)
  %24 = getelementptr inbounds %struct.nfs_client, ptr %3, i32 0, i32 6
  store i32 %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.nfs_client_initdata, ptr %0, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %14
  %29 = tail call noalias ptr @kstrdup(ptr noundef nonnull %26, i32 noundef 3264) #12
  %30 = getelementptr inbounds %struct.nfs_client, ptr %3, i32 0, i32 7
  store ptr %29, ptr %30, align 8
  %31 = icmp eq ptr %29, null
  br i1 %31, label %53, label %32

32:                                               ; preds = %28, %14
  %33 = getelementptr inbounds %struct.nfs_client, ptr %3, i32 0, i32 10
  store volatile ptr %33, ptr %33, align 8
  %34 = getelementptr inbounds %struct.nfs_client, ptr %3, i32 0, i32 10, i32 1
  store ptr %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.nfs_client, ptr %3, i32 0, i32 11
  store ptr inttoptr (i32 -22 to ptr), ptr %35, align 8
  %36 = load i32, ptr %0, align 4
  %37 = getelementptr inbounds %struct.nfs_client, ptr %3, i32 0, i32 4
  store i32 %36, ptr %37, align 8
  %38 = getelementptr inbounds %struct.nfs_client_initdata, ptr %0, i32 0, i32 7
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr inbounds %struct.nfs_client, ptr %3, i32 0, i32 13
  store i32 %39, ptr %40, align 8
  %41 = getelementptr inbounds %struct.nfs_client_initdata, ptr %0, i32 0, i32 9
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr inbounds %struct.nfs_client, ptr %3, i32 0, i32 16
  store i32 %42, ptr %43, align 4
  %44 = getelementptr inbounds %struct.nfs_client_initdata, ptr %0, i32 0, i32 10
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, 0
  %47 = select i1 %46, i32 1, i32 %45
  %48 = getelementptr inbounds %struct.nfs_client, ptr %3, i32 0, i32 17
  store i32 %47, ptr %48, align 8
  %49 = getelementptr inbounds %struct.nfs_client_initdata, ptr %0, i32 0, i32 11
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.nfs_client, ptr %3, i32 0, i32 44
  store ptr %50, ptr %51, align 8
  %52 = getelementptr inbounds %struct.nfs_client, ptr %3, i32 0, i32 18
  store ptr @.str.2, ptr %52, align 4
  br label %57

53:                                               ; preds = %28
  %54 = load ptr, ptr %11, align 4
  %55 = load ptr, ptr %54, align 4
  tail call void @module_put(ptr noundef %55) #12
  br label %56

56:                                               ; preds = %53, %5
  tail call void @kfree(ptr noundef nonnull %3) #12
  br label %57

57:                                               ; preds = %56, %32, %1
  %58 = phi ptr [ %3, %32 ], [ inttoptr (i32 -12 to ptr), %1 ], [ inttoptr (i32 -12 to ptr), %56 ]
  ret ptr %58
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs_free_client(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 8
  %4 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @rpc_shutdown_client(ptr noundef %3) #12
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 14
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 4
  tail call void @module_put(ptr noundef %9) #12
  %10 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 7
  %11 = load ptr, ptr %10, align 8
  tail call void @kfree(ptr noundef %11) #12
  %12 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 8
  %13 = load ptr, ptr %12, align 4
  tail call void @kfree(ptr noundef %13) #12
  tail call void @kfree(ptr noundef %0) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_shutdown_client(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs_put_client(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %46, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 44
  %5 = load ptr, ptr %4, align 8
  %6 = load i32, ptr @nfs_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !12
  %7 = getelementptr inbounds %struct.net, ptr %5, i32 0, i32 37
  %8 = load volatile ptr, ptr %7, align 64
  %9 = getelementptr [0 x ptr], ptr %8, i32 0, i32 %6
  %10 = load ptr, ptr %9, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !13
  %11 = getelementptr inbounds %struct.nfs_net, ptr %10, i32 0, i32 12
  %12 = tail call zeroext i1 @refcount_dec_and_lock(ptr noundef nonnull %0, ptr noundef %11) #12
  br i1 %12, label %13, label %46

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 9
  %15 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 9, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = load ptr, ptr %14, align 4
  %18 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  store ptr %16, ptr %18, align 4
  store volatile ptr %17, ptr %16, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %14, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %15, align 4
  %19 = load ptr, ptr %4, align 8
  %20 = load i32, ptr @nfs_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !12
  %21 = getelementptr inbounds %struct.net, ptr %19, i32 0, i32 37
  %22 = load volatile ptr, ptr %21, align 64
  %23 = getelementptr [0 x ptr], ptr %22, i32 0, i32 %20
  %24 = load ptr, ptr %23, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !13
  %25 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 30
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %13
  %29 = getelementptr inbounds %struct.nfs_net, ptr %24, i32 0, i32 7
  %30 = tail call ptr @idr_remove(ptr noundef %29, i32 noundef %26) #12
  br label %31

31:                                               ; preds = %28, %13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !8
  %32 = load i16, ptr %11, align 4
  %33 = add i16 %32, 1
  store i16 %33, ptr %11, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  %34 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 10
  %35 = load volatile ptr, ptr %34, align 4
  %36 = icmp ne ptr %35, %34
  %37 = load i1, ptr @nfs_put_client.__already_done, align 1
  %38 = xor i1 %37, true
  %39 = select i1 %36, i1 %38, i1 false
  br i1 %39, label %40, label %41, !prof !14

40:                                               ; preds = %31
  store i1 true, ptr @nfs_put_client.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 269, i32 noundef 9, ptr noundef null) #12
  br label %41

41:                                               ; preds = %40, %31
  %42 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 12
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.nfs_rpc_ops, ptr %43, i32 0, i32 50
  %45 = load ptr, ptr %44, align 4
  tail call void %45(ptr noundef nonnull %0) #12
  br label %46

46:                                               ; preds = %41, %3, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @refcount_dec_and_lock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @nfs_client_init_is_complete(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 8
  %4 = icmp slt i32 %3, 1
  ret i1 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs_client_init_status(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 8
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load i1, ptr @nfs_client_init_status.__already_done, align 1
  br i1 %6, label %8, label %7, !prof !15

7:                                                ; preds = %5
  store i1 true, ptr @nfs_client_init_status.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 356, i32 noundef 9, ptr noundef null) #12
  br label %8

8:                                                ; preds = %7, %5, %1
  %9 = phi i32 [ -22, %7 ], [ -22, %5 ], [ %3, %1 ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs_wait_client_init_complete(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.wait_queue_entry, align 4
  %3 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 8
  %5 = icmp slt i32 %4, 1
  br i1 %5, label %20, label %6

6:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false), !annotation !16
  call void @init_wait_entry(ptr noundef nonnull %2, i32 noundef 0) #12
  %7 = call i32 @prepare_to_wait_event(ptr noundef nonnull @nfs_client_active_wq, ptr noundef nonnull %2, i32 noundef 258) #12
  %8 = load i32, ptr %3, align 8
  %9 = icmp slt i32 %8, 1
  br i1 %9, label %17, label %10

10:                                               ; preds = %13, %6
  %11 = phi i32 [ %14, %13 ], [ %7, %6 ]
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %10
  call void @schedule() #12
  %14 = call i32 @prepare_to_wait_event(ptr noundef nonnull @nfs_client_active_wq, ptr noundef nonnull %2, i32 noundef 258) #12
  %15 = load i32, ptr %3, align 8
  %16 = icmp slt i32 %15, 1
  br i1 %16, label %17, label %10

17:                                               ; preds = %13, %6
  call void @finish_wait(ptr noundef nonnull @nfs_client_active_wq, ptr noundef nonnull %2) #12
  br label %18

18:                                               ; preds = %17, %10
  %19 = phi i32 [ 0, %17 ], [ %11, %10 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #12
  br label %20

20:                                               ; preds = %18, %1
  %21 = phi i32 [ 0, %1 ], [ %19, %18 ]
  ret i32 %21
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nfs_get_client(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nfs_client_initdata, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 4
  %4 = load i32, ptr @nfs_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !12
  %5 = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 37
  %6 = load volatile ptr, ptr %5, align 64
  %7 = getelementptr [0 x ptr], ptr %6, i32 0, i32 %4
  %8 = load ptr, ptr %7, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !13
  %9 = getelementptr inbounds %struct.nfs_client_initdata, ptr %0, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.nfs_subversion, ptr %10, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nfs_client_initdata, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.nfs_net, ptr %8, i32 0, i32 12
  %18 = getelementptr inbounds %struct.nfs_client_initdata, ptr %0, i32 0, i32 2
  %19 = getelementptr inbounds %struct.nfs_client_initdata, ptr %0, i32 0, i32 7
  %20 = getelementptr inbounds %struct.nfs_client_initdata, ptr %0, i32 0, i32 8
  %21 = getelementptr inbounds %struct.nfs_rpc_ops, ptr %12, i32 0, i32 48
  br label %23

22:                                               ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 406, i32 noundef 9, ptr noundef null) #12
  br label %210

23:                                               ; preds = %204, %16
  %24 = phi ptr [ %208, %204 ], [ null, %16 ]
  tail call void @_raw_spin_lock(ptr noundef %17) #12
  %25 = load ptr, ptr %18, align 4
  %26 = load ptr, ptr %2, align 4
  %27 = load i32, ptr @nfs_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !12
  %28 = getelementptr inbounds %struct.net, ptr %26, i32 0, i32 37
  %29 = load volatile ptr, ptr %28, align 64
  %30 = getelementptr [0 x ptr], ptr %29, i32 0, i32 %27
  %31 = load ptr, ptr %30, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !13
  %32 = getelementptr inbounds %struct.nfs_net, ptr %31, i32 0, i32 5
  %33 = getelementptr inbounds %struct.nfs_net, ptr %31, i32 0, i32 12
  %34 = getelementptr inbounds %struct.sockaddr_in6, ptr %25, i32 0, i32 3
  %35 = getelementptr %struct.sockaddr_in6, ptr %25, i32 0, i32 3, i32 0, i32 0, i32 1
  %36 = getelementptr %struct.sockaddr_in6, ptr %25, i32 0, i32 3, i32 0, i32 0, i32 2
  %37 = getelementptr %struct.sockaddr_in6, ptr %25, i32 0, i32 3, i32 0, i32 0, i32 3
  %38 = getelementptr inbounds %struct.sockaddr_in6, ptr %25, i32 0, i32 4
  %39 = getelementptr inbounds %struct.sockaddr_in, ptr %25, i32 0, i32 2
  %40 = getelementptr inbounds %struct.sockaddr_in6, ptr %25, i32 0, i32 1
  br label %41

41:                                               ; preds = %63, %23
  %42 = load ptr, ptr %32, align 4
  %43 = icmp eq ptr %42, %32
  br i1 %43, label %191, label %44

44:                                               ; preds = %163, %41
  %45 = phi ptr [ %164, %163 ], [ %42, %41 ]
  %46 = getelementptr i8, ptr %45, i32 -140
  %47 = getelementptr i8, ptr %45, i32 -152
  %48 = load i32, ptr %47, align 8
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %163, label %50

50:                                               ; preds = %44
  %51 = icmp eq i32 %48, 0
  br i1 %51, label %70, label %52

52:                                               ; preds = %50
  %53 = getelementptr i8, ptr %45, i32 -160
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %53) #12, !srcloc !17
  %54 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %53, ptr %53, i32 1, ptr elementtype(i32) %53) #12, !srcloc !18
  %55 = extractvalue { i32, i32, i32 } %54, 0
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %61, label %57, !prof !14

57:                                               ; preds = %52
  %58 = add i32 %55, 1
  %59 = or i32 %58, %55
  %60 = icmp sgt i32 %59, -1
  br i1 %60, label %63, label %61, !prof !15

61:                                               ; preds = %57, %52
  %62 = phi i32 [ 2, %52 ], [ 1, %57 ]
  tail call void @refcount_warn_saturate(ptr noundef %53, i32 noundef %62) #12
  br label %63

63:                                               ; preds = %61, %57
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !8
  %64 = load i16, ptr %33, align 4
  %65 = add i16 %64, 1
  store i16 %65, ptr %33, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  %66 = tail call i32 @nfs_wait_client_init_complete(ptr noundef %53) #12
  tail call void @nfs_put_client(ptr noundef %53) #12
  tail call void @_raw_spin_lock(ptr noundef %33) #12
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %41

68:                                               ; preds = %63
  %69 = inttoptr i32 %66 to ptr
  br label %166

70:                                               ; preds = %50
  %71 = getelementptr i8, ptr %45, i32 20
  %72 = load ptr, ptr %71, align 4
  %73 = load ptr, ptr %9, align 4
  %74 = getelementptr inbounds %struct.nfs_subversion, ptr %73, i32 0, i32 3
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %72, %75
  br i1 %76, label %77, label %163

77:                                               ; preds = %70
  %78 = getelementptr i8, ptr %45, i32 24
  %79 = load i32, ptr %78, align 8
  %80 = load i32, ptr %19, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %163

82:                                               ; preds = %77
  %83 = getelementptr i8, ptr %45, i32 32
  %84 = load i32, ptr %83, align 8
  %85 = load i32, ptr %20, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %163

87:                                               ; preds = %82
  %88 = load volatile i32, ptr %0, align 4
  %89 = getelementptr i8, ptr %45, i32 -144
  %90 = load volatile i32, ptr %89, align 4
  %91 = xor i32 %90, %88
  %92 = and i32 %91, 128
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %163

94:                                               ; preds = %87
  %95 = load i16, ptr %25, align 2
  %96 = load i16, ptr %46, align 2
  %97 = icmp eq i16 %95, %96
  br i1 %97, label %98, label %146

98:                                               ; preds = %94
  switch i16 %95, label %146 [
    i16 2, label %124
    i16 10, label %99
  ]

99:                                               ; preds = %98
  %100 = getelementptr i8, ptr %45, i32 -132
  %101 = load i32, ptr %34, align 4
  %102 = load i32, ptr %100, align 4
  %103 = xor i32 %102, %101
  %104 = load i32, ptr %35, align 4
  %105 = getelementptr i8, ptr %45, i32 -128
  %106 = load i32, ptr %105, align 4
  %107 = xor i32 %106, %104
  %108 = or i32 %107, %103
  %109 = load i32, ptr %36, align 4
  %110 = getelementptr i8, ptr %45, i32 -124
  %111 = load i32, ptr %110, align 4
  %112 = xor i32 %111, %109
  %113 = or i32 %108, %112
  %114 = load i32, ptr %37, align 4
  %115 = getelementptr i8, ptr %45, i32 -120
  %116 = load i32, ptr %115, align 4
  %117 = xor i32 %116, %114
  %118 = or i32 %113, %117
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %146

120:                                              ; preds = %99
  %121 = tail call i32 @__ipv6_addr_type(ptr noundef %34) #12
  %122 = and i32 %121, 32
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %131, label %124

124:                                              ; preds = %120, %98
  %125 = phi i32 [ -136, %98 ], [ -116, %120 ]
  %126 = phi ptr [ %39, %98 ], [ %38, %120 ]
  %127 = getelementptr i8, ptr %45, i32 %125
  %128 = load i32, ptr %126, align 4
  %129 = load i32, ptr %127, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %146

131:                                              ; preds = %124, %120
  %132 = load i16, ptr %25, align 2
  switch i16 %132, label %136 [
    i16 2, label %133
    i16 10, label %133
  ]

133:                                              ; preds = %131, %131
  %134 = load i16, ptr %40, align 2
  %135 = tail call i16 @llvm.bswap.i16(i16 %134) #12
  br label %136

136:                                              ; preds = %133, %131
  %137 = phi i16 [ 0, %131 ], [ %135, %133 ]
  %138 = load i16, ptr %46, align 2
  switch i16 %138, label %143 [
    i16 2, label %139
    i16 10, label %139
  ]

139:                                              ; preds = %136, %136
  %140 = getelementptr i8, ptr %45, i32 -138
  %141 = load i16, ptr %140, align 2
  %142 = tail call i16 @llvm.bswap.i16(i16 %141) #12
  br label %143

143:                                              ; preds = %139, %136
  %144 = phi i16 [ 0, %136 ], [ %142, %139 ]
  %145 = icmp eq i16 %137, %144
  br i1 %145, label %152, label %146

146:                                              ; preds = %143, %124, %99, %98, %94
  %147 = getelementptr i8, ptr %45, i32 16
  %148 = load ptr, ptr %147, align 8
  %149 = icmp ugt ptr %148, inttoptr (i32 -4096 to ptr)
  br i1 %149, label %163, label %150

150:                                              ; preds = %146
  %151 = tail call zeroext i1 @rpc_clnt_xprt_switch_has_addr(ptr noundef %148, ptr noundef %25) #12
  br i1 %151, label %152, label %163

152:                                              ; preds = %150, %143
  %153 = getelementptr i8, ptr %45, i32 -160
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %153) #12, !srcloc !17
  %154 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %153, ptr %153, i32 1, ptr elementtype(i32) %153) #12, !srcloc !18
  %155 = extractvalue { i32, i32, i32 } %154, 0
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %161, label %157, !prof !14

157:                                              ; preds = %152
  %158 = add i32 %155, 1
  %159 = or i32 %158, %155
  %160 = icmp sgt i32 %159, -1
  br i1 %160, label %166, label %161, !prof !15

161:                                              ; preds = %157, %152
  %162 = phi i32 [ 2, %152 ], [ 1, %157 ]
  tail call void @refcount_warn_saturate(ptr noundef %153, i32 noundef %162) #12
  br label %166

163:                                              ; preds = %150, %146, %87, %82, %77, %70, %44
  %164 = load ptr, ptr %45, align 4
  %165 = icmp eq ptr %164, %32
  br i1 %165, label %191, label %44

166:                                              ; preds = %161, %157, %68
  %167 = phi ptr [ %153, %161 ], [ %153, %157 ], [ %69, %68 ]
  %168 = icmp eq ptr %167, null
  br i1 %168, label %191, label %169

169:                                              ; preds = %166
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !8
  %170 = load i16, ptr %17, align 4
  %171 = add i16 %170, 1
  store i16 %171, ptr %17, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  %172 = icmp eq ptr %24, null
  br i1 %172, label %178, label %173

173:                                              ; preds = %169
  %174 = getelementptr inbounds %struct.nfs_client, ptr %24, i32 0, i32 12
  %175 = load ptr, ptr %174, align 4
  %176 = getelementptr inbounds %struct.nfs_rpc_ops, ptr %175, i32 0, i32 50
  %177 = load ptr, ptr %176, align 4
  tail call void %177(ptr noundef nonnull %24) #12
  br label %178

178:                                              ; preds = %173, %169
  %179 = icmp ugt ptr %167, inttoptr (i32 -4096 to ptr)
  br i1 %179, label %210, label %180

180:                                              ; preds = %178
  %181 = tail call i32 @nfs_wait_client_init_complete(ptr noundef nonnull %167) #12
  %182 = icmp slt i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %180
  tail call void @nfs_put_client(ptr noundef nonnull %167) #12
  br label %210

184:                                              ; preds = %180
  %185 = getelementptr inbounds %struct.nfs_client, ptr %167, i32 0, i32 2
  %186 = load i32, ptr %185, align 8
  %187 = icmp slt i32 %186, 0
  br i1 %187, label %188, label %190

188:                                              ; preds = %184
  tail call void @nfs_put_client(ptr noundef nonnull %167) #12
  %189 = inttoptr i32 %186 to ptr
  br label %210

190:                                              ; preds = %184
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !19
  br label %210

191:                                              ; preds = %166, %163, %41
  %192 = icmp eq ptr %24, null
  br i1 %192, label %204, label %193

193:                                              ; preds = %191
  %194 = getelementptr inbounds %struct.nfs_client, ptr %24, i32 0, i32 9
  %195 = getelementptr inbounds %struct.nfs_net, ptr %8, i32 0, i32 5
  %196 = getelementptr inbounds %struct.nfs_net, ptr %8, i32 0, i32 5, i32 1
  %197 = load ptr, ptr %196, align 4
  store ptr %194, ptr %196, align 4
  store ptr %195, ptr %194, align 4
  %198 = getelementptr inbounds %struct.nfs_client, ptr %24, i32 0, i32 9, i32 1
  store ptr %197, ptr %198, align 4
  store volatile ptr %194, ptr %197, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !8
  %199 = load i16, ptr %17, align 4
  %200 = add i16 %199, 1
  store i16 %200, ptr %17, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  %201 = getelementptr inbounds %struct.nfs_rpc_ops, ptr %12, i32 0, i32 49
  %202 = load ptr, ptr %201, align 4
  %203 = tail call ptr %202(ptr noundef nonnull %24, ptr noundef %0) #12
  br label %210

204:                                              ; preds = %191
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !8
  %205 = load i16, ptr %17, align 4
  %206 = add i16 %205, 1
  store i16 %206, ptr %17, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  %207 = load ptr, ptr %21, align 4
  %208 = tail call ptr %207(ptr noundef %0) #12
  %209 = icmp ugt ptr %208, inttoptr (i32 -4096 to ptr)
  br i1 %209, label %210, label %23

210:                                              ; preds = %204, %193, %190, %188, %183, %178, %22
  %211 = phi ptr [ inttoptr (i32 -22 to ptr), %22 ], [ %203, %193 ], [ %167, %178 ], [ inttoptr (i32 -512 to ptr), %183 ], [ %189, %188 ], [ %167, %190 ], [ %208, %204 ]
  ret ptr %211
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs_mark_client_ready(ptr nocapture noundef writeonly %0, i32 noundef %1) #0 {
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !20
  %3 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 2
  store i32 %1, ptr %3, align 8
  tail call void @__wake_up(ptr noundef nonnull @nfs_client_active_wq, i32 noundef 3, i32 noundef 0, ptr noundef null) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs_init_timeout_values(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = mul i32 %2, 100
  %6 = sdiv i32 %5, 10
  store i32 %6, ptr %0, align 4
  %7 = getelementptr inbounds %struct.rpc_timeout, ptr %0, i32 0, i32 3
  store i32 %3, ptr %7, align 4
  switch i32 %1, label %43 [
    i32 6, label %8
    i32 256, label %8
    i32 17, label %29
  ]

8:                                                ; preds = %4, %4
  %9 = icmp eq i32 %3, -1
  br i1 %9, label %10, label %11

10:                                               ; preds = %8
  store i32 2, ptr %7, align 4
  br label %11

11:                                               ; preds = %10, %8
  %12 = phi i32 [ 2, %10 ], [ %3, %8 ]
  %13 = icmp eq i32 %2, -1
  %14 = add i32 %5, 9
  %15 = icmp ult i32 %14, 19
  %16 = or i1 %13, %15
  br i1 %16, label %19, label %17

17:                                               ; preds = %11
  %18 = icmp ugt i32 %6, 60000
  br i1 %18, label %19, label %21

19:                                               ; preds = %17, %11
  %20 = phi i32 [ 6000, %11 ], [ 60000, %17 ]
  store i32 %20, ptr %0, align 4
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %6, %17 ], [ %20, %19 ]
  %23 = getelementptr inbounds %struct.rpc_timeout, ptr %0, i32 0, i32 2
  store i32 %22, ptr %23, align 4
  %24 = mul i32 %12, %22
  %25 = add i32 %24, %22
  %26 = getelementptr inbounds %struct.rpc_timeout, ptr %0, i32 0, i32 1
  %27 = tail call i32 @llvm.umin.i32(i32 %25, i32 60000)
  %28 = tail call i32 @llvm.umax.i32(i32 %27, i32 %22)
  store i32 %28, ptr %26, align 4
  br label %44

29:                                               ; preds = %4
  %30 = icmp eq i32 %3, -1
  br i1 %30, label %31, label %32

31:                                               ; preds = %29
  store i32 3, ptr %7, align 4
  br label %32

32:                                               ; preds = %31, %29
  %33 = icmp eq i32 %2, -1
  %34 = add i32 %5, 9
  %35 = icmp ult i32 %34, 19
  %36 = or i1 %33, %35
  br i1 %36, label %39, label %37

37:                                               ; preds = %32
  %38 = icmp ugt i32 %6, 6000
  br i1 %38, label %39, label %41

39:                                               ; preds = %37, %32
  %40 = phi i32 [ 110, %32 ], [ 6000, %37 ]
  store i32 %40, ptr %0, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = getelementptr inbounds %struct.rpc_timeout, ptr %0, i32 0, i32 1
  store i32 6000, ptr %42, align 4
  br label %44

43:                                               ; preds = %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfs/client.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 487, 0\0A.popsection", ""() #12, !srcloc !21
  unreachable

44:                                               ; preds = %41, %21
  %45 = phi i8 [ 1, %41 ], [ 0, %21 ]
  %46 = getelementptr inbounds %struct.rpc_timeout, ptr %0, i32 0, i32 4
  store i8 %45, ptr %46, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs_create_rpc_client(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca %struct.rpc_create_args, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #12
  %5 = getelementptr inbounds i8, ptr %4, i32 40
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %5, i8 0, i32 32, i1 false), !annotation !16
  %6 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 44
  %7 = load ptr, ptr %6, align 8
  store ptr %7, ptr %4, align 4
  %8 = getelementptr inbounds %struct.rpc_create_args, ptr %4, i32 0, i32 1
  %9 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 13
  %10 = load i32, ptr %9, align 8
  store i32 %10, ptr %8, align 4
  %11 = getelementptr inbounds %struct.rpc_create_args, ptr %4, i32 0, i32 2
  %12 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 5
  store ptr %12, ptr %11, align 4
  %13 = getelementptr inbounds %struct.rpc_create_args, ptr %4, i32 0, i32 3
  %14 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 6
  %15 = load i32, ptr %14, align 4
  store i32 %15, ptr %13, align 4
  %16 = getelementptr inbounds %struct.rpc_create_args, ptr %4, i32 0, i32 4
  store ptr null, ptr %16, align 4
  %17 = getelementptr inbounds %struct.rpc_create_args, ptr %4, i32 0, i32 5
  %18 = getelementptr inbounds %struct.nfs_client_initdata, ptr %1, i32 0, i32 12
  %19 = load ptr, ptr %18, align 4
  store ptr %19, ptr %17, align 4
  %20 = getelementptr inbounds %struct.rpc_create_args, ptr %4, i32 0, i32 6
  %21 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 7
  %22 = load ptr, ptr %21, align 8
  store ptr %22, ptr %20, align 4
  %23 = getelementptr inbounds %struct.rpc_create_args, ptr %4, i32 0, i32 7
  %24 = getelementptr inbounds %struct.nfs_client_initdata, ptr %1, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  store ptr %25, ptr %23, align 4
  %26 = getelementptr inbounds %struct.rpc_create_args, ptr %4, i32 0, i32 8
  store ptr @nfs_program, ptr %26, align 4
  %27 = getelementptr inbounds %struct.rpc_create_args, ptr %4, i32 0, i32 9
  store i32 0, ptr %27, align 4
  %28 = getelementptr inbounds %struct.rpc_create_args, ptr %4, i32 0, i32 10
  %29 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 12
  %30 = load ptr, ptr %29, align 4
  %31 = load i32, ptr %30, align 4
  store i32 %31, ptr %28, align 4
  %32 = getelementptr inbounds %struct.rpc_create_args, ptr %4, i32 0, i32 11
  store i32 %2, ptr %32, align 4
  %33 = getelementptr inbounds %struct.rpc_create_args, ptr %4, i32 0, i32 12
  %34 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 16
  %35 = load i32, ptr %34, align 4
  store i32 %35, ptr %33, align 4
  %36 = getelementptr inbounds %struct.rpc_create_args, ptr %4, i32 0, i32 13
  store i32 0, ptr %36, align 4
  %37 = getelementptr inbounds %struct.rpc_create_args, ptr %4, i32 0, i32 14
  store ptr null, ptr %37, align 4
  %38 = getelementptr inbounds %struct.rpc_create_args, ptr %4, i32 0, i32 15
  store ptr null, ptr %38, align 4
  %39 = getelementptr inbounds %struct.rpc_create_args, ptr %4, i32 0, i32 16
  %40 = getelementptr inbounds %struct.nfs_client_initdata, ptr %1, i32 0, i32 13
  %41 = load ptr, ptr %40, align 4
  store ptr %41, ptr %39, align 4
  %42 = getelementptr inbounds %struct.rpc_create_args, ptr %4, i32 0, i32 17
  store i32 0, ptr %42, align 4
  %43 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 4
  %44 = load volatile i32, ptr %43, align 4
  %45 = and i32 %44, 2
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %3
  store i32 32, ptr %36, align 4
  br label %48

48:                                               ; preds = %47, %3
  %49 = phi i32 [ 32, %47 ], [ 0, %3 ]
  %50 = load volatile i32, ptr %43, align 4
  %51 = and i32 %50, 16
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %48
  %54 = or i32 %49, 512
  store i32 %54, ptr %36, align 4
  br label %55

55:                                               ; preds = %53, %48
  %56 = phi i32 [ %54, %53 ], [ %49, %48 ]
  %57 = load volatile i32, ptr %43, align 4
  %58 = and i32 %57, 1
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %55
  %61 = or i32 %56, 8
  store i32 %61, ptr %36, align 4
  br label %62

62:                                               ; preds = %60, %55
  %63 = phi i32 [ %61, %60 ], [ %56, %55 ]
  %64 = load volatile i32, ptr %43, align 4
  %65 = and i32 %64, 8
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %62
  %68 = or i32 %63, 128
  store i32 %68, ptr %36, align 4
  br label %69

69:                                               ; preds = %67, %62
  %70 = phi i32 [ %68, %67 ], [ %63, %62 ]
  %71 = load volatile i32, ptr %43, align 4
  %72 = and i32 %71, 64
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %69
  %75 = or i32 %70, 16
  store i32 %75, ptr %36, align 4
  br label %76

76:                                               ; preds = %74, %69
  %77 = phi i32 [ %75, %74 ], [ %70, %69 ]
  %78 = load volatile i32, ptr %43, align 4
  %79 = and i32 %78, 256
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %76
  %82 = or i32 %77, 2048
  store i32 %82, ptr %36, align 4
  br label %83

83:                                               ; preds = %81, %76
  %84 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 11
  %85 = load ptr, ptr %84, align 8
  %86 = icmp ugt ptr %85, inttoptr (i32 -4096 to ptr)
  br i1 %86, label %87, label %99

87:                                               ; preds = %83
  %88 = call ptr @rpc_create(ptr noundef nonnull %4) #12
  %89 = icmp ugt ptr %88, inttoptr (i32 -4096 to ptr)
  br i1 %89, label %90, label %92

90:                                               ; preds = %87
  %91 = ptrtoint ptr %88 to i32
  br label %99

92:                                               ; preds = %87
  %93 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 18
  %94 = load ptr, ptr %93, align 4
  %95 = getelementptr inbounds %struct.rpc_clnt, ptr %88, i32 0, i32 25
  store ptr %94, ptr %95, align 4
  store ptr %88, ptr %84, align 8
  %96 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 17
  %97 = load i32, ptr %96, align 8
  %98 = getelementptr inbounds %struct.rpc_clnt, ptr %88, i32 0, i32 29
  store i32 %97, ptr %98, align 4
  br label %99

99:                                               ; preds = %92, %90, %83
  %100 = phi i32 [ %91, %90 ], [ 0, %92 ], [ 0, %83 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #12
  ret i32 %100
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rpc_create(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs_init_server_rpcclient(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.nfs_client, ptr %4, i32 0, i32 11
  %6 = load ptr, ptr %5, align 8
  %7 = tail call ptr @rpc_clone_client_set_auth(ptr noundef %6, i32 noundef %2) #12
  %8 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 3
  store ptr %7, ptr %8, align 4
  %9 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = ptrtoint ptr %7 to i32
  br label %40

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.rpc_clnt, ptr %7, i32 0, i32 23
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(20) %13, ptr noundef align 4 dereferenceable(20) %1, i32 20, i1 false)
  %14 = load ptr, ptr %8, align 4
  %15 = getelementptr inbounds %struct.rpc_clnt, ptr %14, i32 0, i32 23
  %16 = getelementptr inbounds %struct.rpc_clnt, ptr %14, i32 0, i32 16
  store ptr %15, ptr %16, align 4
  %17 = load ptr, ptr %8, align 4
  %18 = getelementptr inbounds %struct.rpc_clnt, ptr %17, i32 0, i32 14
  %19 = load i8, ptr %18, align 4
  %20 = and i8 %19, -2
  store i8 %20, ptr %18, align 4
  %21 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 8
  %22 = load i32, ptr %21, align 8
  %23 = and i32 %22, 4194304
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %12
  %26 = load ptr, ptr %8, align 4
  %27 = getelementptr inbounds %struct.rpc_clnt, ptr %26, i32 0, i32 14
  %28 = load i8, ptr %27, align 4
  %29 = or i8 %28, 2
  store i8 %29, ptr %27, align 4
  %30 = load i32, ptr %21, align 8
  br label %31

31:                                               ; preds = %25, %12
  %32 = phi i32 [ %30, %25 ], [ %22, %12 ]
  %33 = and i32 %32, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %31
  %36 = load ptr, ptr %8, align 4
  %37 = getelementptr inbounds %struct.rpc_clnt, ptr %36, i32 0, i32 14
  %38 = load i8, ptr %37, align 4
  %39 = or i8 %38, 1
  store i8 %39, ptr %37, align 4
  br label %40

40:                                               ; preds = %35, %31, %10
  %41 = phi i32 [ %11, %10 ], [ 0, %35 ], [ 0, %31 ]
  ret i32 %41
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rpc_clone_client_set_auth(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nfs_init_client(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = tail call i32 @nfs_create_rpc_client(ptr noundef %0, ptr noundef %1, i32 noundef 1)
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !20
  store i32 %7, ptr %3, align 8
  tail call void @__wake_up(ptr noundef nonnull @nfs_client_active_wq, i32 noundef 3, i32 noundef 0, ptr noundef null) #12
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  tail call void @nfs_put_client(ptr noundef %0)
  %10 = inttoptr i32 %7 to ptr
  br label %11

11:                                               ; preds = %9, %6, %2
  %12 = phi ptr [ %0, %2 ], [ %10, %9 ], [ %0, %6 ]
  ret ptr %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs_probe_server(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @nfs_alloc_fattr() #12
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc i32 @nfs_probe_fsinfo(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3)
  tail call void @kfree(ptr noundef nonnull %3) #12
  br label %7

7:                                                ; preds = %5, %2
  %8 = phi i32 [ %6, %5 ], [ -12, %2 ]
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs_alloc_fattr() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @nfs_probe_fsinfo(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.nfs_fsinfo, align 8
  %5 = alloca %struct.nfs_pathconf, align 4
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(112) %4, i8 0, i32 112, i1 false), !annotation !16
  %6 = load ptr, ptr %0, align 8
  %7 = getelementptr inbounds %struct.nfs_client, ptr %6, i32 0, i32 12
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nfs_rpc_ops, ptr %8, i32 0, i32 32
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %3
  %13 = tail call i32 %10(ptr noundef %0, ptr noundef %1) #12
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %269, label %15

15:                                               ; preds = %12
  %16 = load ptr, ptr %7, align 4
  br label %17

17:                                               ; preds = %15, %3
  %18 = phi ptr [ %16, %15 ], [ %8, %3 ]
  store ptr %2, ptr %4, align 8
  %19 = getelementptr inbounds %struct.nfs_fsinfo, ptr %4, i32 0, i32 11
  %20 = getelementptr inbounds %struct.nfs_rpc_ops, ptr %18, i32 0, i32 30
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(36) %19, i8 0, i64 36, i1 false)
  %21 = load ptr, ptr %20, align 4
  %22 = call i32 %21(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4) #12
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %269, label %24

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 11
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %48

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.nfs_fsinfo, ptr %4, i32 0, i32 2
  %30 = load i32, ptr %29, align 8
  %31 = icmp ult i32 %30, 1024
  %32 = call i32 @llvm.umin.i32(i32 %30, i32 1048576) #12
  %33 = select i1 %31, i32 4096, i32 %32
  %34 = call i32 @llvm.ctpop.i32(i32 %33) #12, !range !22
  %35 = icmp ugt i32 %34, 1
  br i1 %35, label %40, label %46

36:                                               ; preds = %40
  %37 = add nsw i8 %42, -1
  %38 = zext i8 %37 to i32
  %39 = icmp eq i8 %37, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %36, %28
  %41 = phi i32 [ %38, %36 ], [ 31, %28 ]
  %42 = phi i8 [ %37, %36 ], [ 31, %28 ]
  %43 = shl nuw i32 1, %41
  %44 = and i32 %43, %33
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %36, label %46

46:                                               ; preds = %40, %36, %28
  %47 = phi i32 [ %33, %28 ], [ %43, %40 ], [ 1, %36 ]
  store i32 %47, ptr %25, align 4
  br label %48

48:                                               ; preds = %46, %24
  %49 = phi i32 [ %47, %46 ], [ %26, %24 ]
  %50 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 13
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %73

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.nfs_fsinfo, ptr %4, i32 0, i32 5
  %55 = load i32, ptr %54, align 4
  %56 = icmp ult i32 %55, 1024
  %57 = call i32 @llvm.umin.i32(i32 %55, i32 1048576) #12
  %58 = select i1 %56, i32 4096, i32 %57
  %59 = call i32 @llvm.ctpop.i32(i32 %58) #12, !range !22
  %60 = icmp ugt i32 %59, 1
  br i1 %60, label %65, label %71

61:                                               ; preds = %65
  %62 = add nsw i8 %67, -1
  %63 = zext i8 %62 to i32
  %64 = icmp eq i8 %62, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %61, %53
  %66 = phi i32 [ %63, %61 ], [ 31, %53 ]
  %67 = phi i8 [ %62, %61 ], [ 31, %53 ]
  %68 = shl nuw i32 1, %66
  %69 = and i32 %68, %58
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %61, label %71

71:                                               ; preds = %65, %61, %53
  %72 = phi i32 [ %58, %53 ], [ %68, %65 ], [ 1, %61 ]
  store i32 %72, ptr %50, align 4
  br label %73

73:                                               ; preds = %71, %48
  %74 = phi i32 [ %72, %71 ], [ %51, %48 ]
  %75 = getelementptr inbounds %struct.nfs_fsinfo, ptr %4, i32 0, i32 1
  %76 = load i32, ptr %75, align 4
  %77 = icmp ugt i32 %76, 511
  %78 = icmp ugt i32 %49, %76
  %79 = select i1 %77, i1 %78, i1 false
  br i1 %79, label %80, label %98

80:                                               ; preds = %73
  %81 = icmp ult i32 %76, 1024
  %82 = call i32 @llvm.umin.i32(i32 %76, i32 1048576) #12
  %83 = select i1 %81, i32 4096, i32 %82
  %84 = call i32 @llvm.ctpop.i32(i32 %83) #12, !range !22
  %85 = icmp ugt i32 %84, 1
  br i1 %85, label %90, label %96

86:                                               ; preds = %90
  %87 = add nsw i8 %92, -1
  %88 = zext i8 %87 to i32
  %89 = icmp eq i8 %87, 0
  br i1 %89, label %96, label %90

90:                                               ; preds = %86, %80
  %91 = phi i32 [ %88, %86 ], [ 31, %80 ]
  %92 = phi i8 [ %87, %86 ], [ 31, %80 ]
  %93 = shl nuw i32 1, %91
  %94 = and i32 %93, %83
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %86, label %96

96:                                               ; preds = %90, %86, %80
  %97 = phi i32 [ %83, %80 ], [ %93, %90 ], [ 1, %86 ]
  store i32 %97, ptr %25, align 4
  br label %98

98:                                               ; preds = %96, %73
  %99 = getelementptr inbounds %struct.nfs_fsinfo, ptr %4, i32 0, i32 4
  %100 = load i32, ptr %99, align 8
  %101 = icmp ugt i32 %100, 511
  %102 = icmp ugt i32 %74, %100
  %103 = select i1 %101, i1 %102, i1 false
  br i1 %103, label %104, label %122

104:                                              ; preds = %98
  %105 = icmp ult i32 %100, 1024
  %106 = call i32 @llvm.umin.i32(i32 %100, i32 1048576) #12
  %107 = select i1 %105, i32 4096, i32 %106
  %108 = call i32 @llvm.ctpop.i32(i32 %107) #12, !range !22
  %109 = icmp ugt i32 %108, 1
  br i1 %109, label %114, label %120

110:                                              ; preds = %114
  %111 = add nsw i8 %116, -1
  %112 = zext i8 %111 to i32
  %113 = icmp eq i8 %111, 0
  br i1 %113, label %120, label %114

114:                                              ; preds = %110, %104
  %115 = phi i32 [ %112, %110 ], [ 31, %104 ]
  %116 = phi i8 [ %111, %110 ], [ 31, %104 ]
  %117 = shl nuw i32 1, %115
  %118 = and i32 %117, %107
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %110, label %120

120:                                              ; preds = %114, %110, %104
  %121 = phi i32 [ %107, %104 ], [ %117, %114 ], [ 1, %110 ]
  store i32 %121, ptr %50, align 4
  br label %122

122:                                              ; preds = %120, %98
  %123 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 3
  %124 = load ptr, ptr %123, align 4
  %125 = call i32 @rpc_max_payload(ptr noundef %124) #12
  %126 = icmp ult i32 %125, 1024
  %127 = call i32 @llvm.umin.i32(i32 %125, i32 1048576) #12
  %128 = select i1 %126, i32 4096, i32 %127
  %129 = call i32 @llvm.ctpop.i32(i32 %128) #12, !range !22
  %130 = icmp ugt i32 %129, 1
  br i1 %130, label %135, label %141

131:                                              ; preds = %135
  %132 = add nsw i8 %137, -1
  %133 = zext i8 %132 to i32
  %134 = icmp eq i8 %132, 0
  br i1 %134, label %141, label %135

135:                                              ; preds = %131, %122
  %136 = phi i32 [ %133, %131 ], [ 31, %122 ]
  %137 = phi i8 [ %132, %131 ], [ 31, %122 ]
  %138 = shl nuw i32 1, %136
  %139 = and i32 %138, %128
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %131, label %141

141:                                              ; preds = %135, %131, %122
  %142 = phi i32 [ %128, %122 ], [ %138, %135 ], [ 1, %131 ]
  %143 = load i32, ptr %25, align 4
  %144 = icmp ugt i32 %143, %142
  %145 = call i32 @llvm.umin.i32(i32 %143, i32 %142) #12
  %146 = icmp ugt i32 %145, 1048576
  %147 = or i1 %144, %146
  br i1 %147, label %148, label %150

148:                                              ; preds = %141
  %149 = call i32 @llvm.umin.i32(i32 %145, i32 1048576) #12
  store i32 %149, ptr %25, align 4
  br label %150

150:                                              ; preds = %148, %141
  %151 = phi i32 [ %143, %141 ], [ %149, %148 ]
  %152 = add i32 %151, 4095
  %153 = lshr i32 %152, 12
  %154 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 12
  store i32 %153, ptr %154, align 8
  %155 = load i32, ptr %50, align 4
  %156 = icmp ugt i32 %155, %142
  %157 = call i32 @llvm.umin.i32(i32 %155, i32 %142) #12
  %158 = icmp ugt i32 %157, 1048576
  %159 = or i1 %156, %158
  br i1 %159, label %160, label %162

160:                                              ; preds = %150
  %161 = call i32 @llvm.umin.i32(i32 %157, i32 1048576) #12
  store i32 %161, ptr %50, align 4
  br label %162

162:                                              ; preds = %160, %150
  %163 = phi i32 [ %155, %150 ], [ %161, %160 ]
  %164 = add i32 %163, 4095
  %165 = lshr i32 %164, 12
  %166 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 14
  store i32 %165, ptr %166, align 8
  %167 = getelementptr inbounds %struct.nfs_fsinfo, ptr %4, i32 0, i32 6
  %168 = load i32, ptr %167, align 8
  %169 = call i32 @llvm.ctpop.i32(i32 %168) #12, !range !22
  %170 = icmp ugt i32 %169, 1
  br i1 %170, label %175, label %181

171:                                              ; preds = %175
  %172 = add nsw i8 %177, -1
  %173 = zext i8 %172 to i32
  %174 = icmp eq i8 %172, 0
  br i1 %174, label %181, label %175

175:                                              ; preds = %171, %162
  %176 = phi i32 [ %173, %171 ], [ 31, %162 ]
  %177 = phi i8 [ %172, %171 ], [ 31, %162 ]
  %178 = shl nuw i32 1, %176
  %179 = and i32 %178, %168
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %171, label %181

181:                                              ; preds = %175, %171, %162
  %182 = phi i32 [ %168, %162 ], [ 1, %171 ], [ %178, %175 ]
  %183 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 15
  store i32 %182, ptr %183, align 4
  %184 = getelementptr inbounds %struct.nfs_fsinfo, ptr %4, i32 0, i32 7
  %185 = load i32, ptr %184, align 4
  %186 = icmp ult i32 %185, 1024
  %187 = call i32 @llvm.umin.i32(i32 %185, i32 1048576) #12
  %188 = select i1 %186, i32 4096, i32 %187
  %189 = call i32 @llvm.ctpop.i32(i32 %188) #12, !range !22
  %190 = icmp ugt i32 %189, 1
  br i1 %190, label %195, label %203

191:                                              ; preds = %195
  %192 = add nsw i8 %197, -1
  %193 = zext i8 %192 to i32
  %194 = icmp eq i8 %192, 0
  br i1 %194, label %203, label %195

195:                                              ; preds = %191, %181
  %196 = phi i32 [ %193, %191 ], [ 31, %181 ]
  %197 = phi i8 [ %192, %191 ], [ 31, %181 ]
  %198 = shl nuw i32 1, %196
  %199 = and i32 %198, %188
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %191, label %201

201:                                              ; preds = %195
  %202 = call i32 @llvm.umin.i32(i32 %198, i32 1048576) #12
  br label %203

203:                                              ; preds = %201, %191, %181
  %204 = phi i32 [ %202, %201 ], [ %188, %181 ], [ 1, %191 ]
  %205 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 16
  %206 = call i32 @llvm.umin.i32(i32 %204, i32 %151) #12
  store i32 %206, ptr %205, align 8
  %207 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 8
  %208 = load i32, ptr %207, align 8
  %209 = and i32 %208, 32
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %213, label %211

211:                                              ; preds = %203
  %212 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 22
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %212, i8 0, i64 16, i1 false) #12
  br label %213

213:                                              ; preds = %211, %203
  %214 = getelementptr inbounds %struct.nfs_fsinfo, ptr %4, i32 0, i32 8
  %215 = load i64, ptr %214, align 8
  %216 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 31
  store i64 %215, ptr %216, align 8
  %217 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 32
  %218 = getelementptr inbounds %struct.nfs_fsinfo, ptr %4, i32 0, i32 9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %217, ptr noundef align 8 dereferenceable(16) %218, i32 16, i1 false) #12
  %219 = getelementptr inbounds %struct.nfs_fsinfo, ptr %4, i32 0, i32 15
  %220 = load i32, ptr %219, align 8
  %221 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 29
  store i32 %220, ptr %221, align 4
  %222 = getelementptr inbounds %struct.nfs_fsinfo, ptr %4, i32 0, i32 14
  %223 = load i32, ptr %222, align 4
  %224 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 28
  store i32 %223, ptr %224, align 8
  %225 = load ptr, ptr %123, align 4
  %226 = add i32 %163, 100
  %227 = add i32 %151, 100
  call void @rpc_setbufsize(ptr noundef %225, i32 noundef %226, i32 noundef %227) #12
  %228 = call i32 @llvm.umin.i32(i32 %125, i32 65536) #12
  %229 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 19
  store i32 %228, ptr %229, align 4
  %230 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 20
  store i32 %228, ptr %230, align 8
  %231 = call i32 @llvm.umin.i32(i32 %125, i32 74900) #12
  %232 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 21
  store i32 %231, ptr %232, align 4
  %233 = getelementptr inbounds %struct.nfs_fsinfo, ptr %4, i32 0, i32 16
  %234 = load i32, ptr %233, align 4
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %240, label %236

236:                                              ; preds = %213
  %237 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 10
  %238 = load i32, ptr %237, align 8
  %239 = or i32 %238, 268435456
  store i32 %239, ptr %237, align 8
  br label %240

240:                                              ; preds = %236, %213
  %241 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 26
  %242 = load i32, ptr %241, align 8
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %244, label %255

244:                                              ; preds = %240
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #12
  %245 = getelementptr inbounds i8, ptr %5, i32 4
  store i64 0, ptr %245, align 4, !annotation !16
  store ptr %2, ptr %5, align 4
  call void @nfs_fattr_init(ptr noundef %2) #12
  %246 = load ptr, ptr %7, align 4
  %247 = getelementptr inbounds %struct.nfs_rpc_ops, ptr %246, i32 0, i32 31
  %248 = load ptr, ptr %247, align 4
  %249 = call i32 %248(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5) #12
  %250 = icmp sgt i32 %249, -1
  br i1 %250, label %251, label %254

251:                                              ; preds = %244
  %252 = getelementptr inbounds %struct.nfs_pathconf, ptr %5, i32 0, i32 2
  %253 = load i32, ptr %252, align 4
  store i32 %253, ptr %241, align 8
  br label %254

254:                                              ; preds = %251, %244
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #12
  br label %255

255:                                              ; preds = %254, %240
  %256 = load ptr, ptr %7, align 4
  %257 = getelementptr inbounds %struct.nfs_rpc_ops, ptr %256, i32 0, i32 53
  %258 = load ptr, ptr %257, align 4
  %259 = icmp eq ptr %258, null
  br i1 %259, label %268, label %260

260:                                              ; preds = %255
  %261 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 10
  %262 = load i32, ptr %261, align 8
  %263 = and i32 %262, 1073741824
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %268, label %265

265:                                              ; preds = %260
  %266 = call i32 %258(ptr noundef %0, ptr noundef %1) #12
  %267 = icmp slt i32 %266, 0
  br i1 %267, label %269, label %268

268:                                              ; preds = %265, %260, %255
  br label %269

269:                                              ; preds = %268, %265, %17, %12
  %270 = phi i32 [ 0, %268 ], [ %13, %12 ], [ %22, %17 ], [ %266, %265 ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %4) #12
  ret i32 %270
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @nfs_server_copy_userdata(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) #6 {
  %3 = getelementptr inbounds %struct.nfs_server, ptr %1, i32 0, i32 8
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 8
  store i32 %4, ptr %5, align 8
  %6 = getelementptr inbounds %struct.nfs_server, ptr %1, i32 0, i32 11
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 11
  store i32 %7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.nfs_server, ptr %1, i32 0, i32 13
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 13
  store i32 %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.nfs_server, ptr %1, i32 0, i32 22
  %13 = load i32, ptr %12, align 8
  %14 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 22
  store i32 %13, ptr %14, align 8
  %15 = getelementptr inbounds %struct.nfs_server, ptr %1, i32 0, i32 23
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 23
  store i32 %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.nfs_server, ptr %1, i32 0, i32 24
  %19 = load i32, ptr %18, align 8
  %20 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 24
  store i32 %19, ptr %20, align 8
  %21 = getelementptr inbounds %struct.nfs_server, ptr %1, i32 0, i32 25
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 25
  store i32 %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.nfs_server, ptr %1, i32 0, i32 10
  %25 = load i32, ptr %24, align 8
  %26 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 10
  store i32 %25, ptr %26, align 8
  %27 = getelementptr inbounds %struct.nfs_server, ptr %1, i32 0, i32 27
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 27
  store i32 %28, ptr %29, align 4
  %30 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 36
  %31 = getelementptr inbounds %struct.nfs_server, ptr %1, i32 0, i32 36
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(52) %30, ptr noundef align 4 dereferenceable(52) %31, i32 52, i1 false)
  %32 = getelementptr inbounds %struct.nfs_server, ptr %1, i32 0, i32 17
  %33 = load i16, ptr %32, align 4
  %34 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 17
  store i16 %33, ptr %34, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs_server_insert_lists(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.nfs_client, ptr %2, i32 0, i32 44
  %4 = load ptr, ptr %3, align 8
  %5 = load i32, ptr @nfs_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !12
  %6 = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 37
  %7 = load volatile ptr, ptr %6, align 64
  %8 = getelementptr [0 x ptr], ptr %7, i32 0, i32 %5
  %9 = load ptr, ptr %8, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !13
  %10 = getelementptr inbounds %struct.nfs_net, ptr %9, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %10) #12
  %11 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 1
  %12 = getelementptr inbounds %struct.nfs_client, ptr %2, i32 0, i32 10
  %13 = getelementptr inbounds %struct.nfs_client, ptr %2, i32 0, i32 10, i32 1
  %14 = load ptr, ptr %13, align 4
  store ptr %12, ptr %11, align 4
  %15 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 1, i32 1
  store ptr %14, ptr %15, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !23
  store volatile ptr %11, ptr %14, align 4
  store ptr %11, ptr %13, align 4
  %16 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 2
  %17 = getelementptr inbounds %struct.nfs_net, ptr %9, i32 0, i32 6
  %18 = getelementptr inbounds %struct.nfs_net, ptr %9, i32 0, i32 6, i32 1
  %19 = load ptr, ptr %18, align 4
  store ptr %16, ptr %18, align 4
  store ptr %17, ptr %16, align 4
  %20 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 2, i32 1
  store ptr %19, ptr %20, align 4
  store volatile ptr %16, ptr %19, align 4
  %21 = getelementptr inbounds %struct.nfs_client, ptr %2, i32 0, i32 3
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %21) #12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !8
  %22 = load i16, ptr %10, align 4
  %23 = add i16 %22, 1
  store i16 %23, ptr %10, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs_server_remove_lists(ptr nocapture noundef %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %31, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.nfs_client, ptr %2, i32 0, i32 44
  %6 = load ptr, ptr %5, align 8
  %7 = load i32, ptr @nfs_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !12
  %8 = getelementptr inbounds %struct.net, ptr %6, i32 0, i32 37
  %9 = load volatile ptr, ptr %8, align 64
  %10 = getelementptr [0 x ptr], ptr %9, i32 0, i32 %7
  %11 = load ptr, ptr %10, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !13
  %12 = getelementptr inbounds %struct.nfs_net, ptr %11, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %12) #12
  %13 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 1
  %14 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 1, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = load ptr, ptr %13, align 4
  %17 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  store ptr %15, ptr %17, align 4
  store volatile ptr %16, ptr %15, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %14, align 4
  %18 = getelementptr inbounds %struct.nfs_client, ptr %2, i32 0, i32 10
  %19 = load volatile ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, %18
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = getelementptr inbounds %struct.nfs_client, ptr %2, i32 0, i32 3
  tail call void @_set_bit(i32 noundef 4, ptr noundef %22) #12
  br label %23

23:                                               ; preds = %21, %4
  %24 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 2
  %25 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 2, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = load ptr, ptr %24, align 4
  %28 = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  store ptr %26, ptr %28, align 4
  store volatile ptr %27, ptr %26, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %24, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %25, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !8
  %29 = load i16, ptr %12, align 4
  %30 = add i16 %29, 1
  store i16 %30, ptr %12, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  tail call void @synchronize_rcu() #12
  br label %31

31:                                               ; preds = %23, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nfs_alloc_server() #0 {
  %1 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %2 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 736) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %34, label %4

4:                                                ; preds = %0
  %5 = getelementptr inbounds %struct.nfs_server, ptr %2, i32 0, i32 4
  store ptr inttoptr (i32 -22 to ptr), ptr %5, align 8
  %6 = getelementptr inbounds %struct.nfs_server, ptr %2, i32 0, i32 3
  store ptr inttoptr (i32 -22 to ptr), ptr %6, align 4
  %7 = getelementptr inbounds %struct.nfs_server, ptr %2, i32 0, i32 1
  store volatile ptr %7, ptr %7, align 4
  %8 = getelementptr inbounds %struct.nfs_server, ptr %2, i32 0, i32 1, i32 1
  store ptr %7, ptr %8, align 8
  %9 = getelementptr inbounds %struct.nfs_server, ptr %2, i32 0, i32 2
  store volatile ptr %9, ptr %9, align 4
  %10 = getelementptr inbounds %struct.nfs_server, ptr %2, i32 0, i32 2, i32 1
  store ptr %9, ptr %10, align 8
  %11 = getelementptr inbounds %struct.nfs_server, ptr %2, i32 0, i32 52
  store volatile ptr %11, ptr %11, align 8
  %12 = getelementptr inbounds %struct.nfs_server, ptr %2, i32 0, i32 52, i32 1
  store ptr %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.nfs_server, ptr %2, i32 0, i32 51
  store volatile ptr %13, ptr %13, align 8
  %14 = getelementptr inbounds %struct.nfs_server, ptr %2, i32 0, i32 51, i32 1
  store ptr %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.nfs_server, ptr %2, i32 0, i32 50
  store volatile ptr %15, ptr %15, align 8
  %16 = getelementptr inbounds %struct.nfs_server, ptr %2, i32 0, i32 50, i32 1
  store ptr %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.nfs_server, ptr %2, i32 0, i32 53
  store volatile ptr %17, ptr %17, align 8
  %18 = getelementptr inbounds %struct.nfs_server, ptr %2, i32 0, i32 53, i32 1
  store ptr %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.nfs_server, ptr %2, i32 0, i32 57
  store volatile i32 0, ptr %19, align 4
  %20 = tail call noalias ptr @__alloc_percpu(i32 noundef 192, i32 noundef 64) #14
  %21 = getelementptr inbounds %struct.nfs_server, ptr %2, i32 0, i32 6
  store ptr %20, ptr %21, align 8
  %22 = icmp eq ptr %20, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  tail call void @kfree(ptr noundef nonnull %2) #12
  br label %34

24:                                               ; preds = %4
  %25 = getelementptr inbounds %struct.nfs_server, ptr %2, i32 0, i32 29
  store i32 4, ptr %25, align 4
  %26 = getelementptr inbounds %struct.nfs_server, ptr %2, i32 0, i32 48
  store i32 0, ptr %26, align 8
  %27 = getelementptr inbounds %struct.nfs_server, ptr %2, i32 0, i32 48, i32 0, i32 1
  store i32 33554437, ptr %27, align 4
  %28 = getelementptr inbounds %struct.nfs_server, ptr %2, i32 0, i32 48, i32 0, i32 2
  store ptr null, ptr %28, align 8
  %29 = getelementptr inbounds %struct.nfs_server, ptr %2, i32 0, i32 49
  store i32 0, ptr %29, align 4
  %30 = getelementptr inbounds %struct.nfs_server, ptr %2, i32 0, i32 49, i32 0, i32 1
  store i32 33554437, ptr %30, align 8
  %31 = getelementptr inbounds %struct.nfs_server, ptr %2, i32 0, i32 49, i32 0, i32 2
  store ptr null, ptr %31, align 4
  %32 = getelementptr inbounds %struct.nfs_server, ptr %2, i32 0, i32 45
  tail call void @rpc_init_wait_queue(ptr noundef %32, ptr noundef nonnull @.str.14) #12
  %33 = getelementptr inbounds %struct.nfs_server, ptr %2, i32 0, i32 63
  tail call void @rpc_init_wait_queue(ptr noundef %33, ptr noundef nonnull @.str.4) #12
  br label %34

34:                                               ; preds = %24, %23, %0
  %35 = phi ptr [ %2, %24 ], [ null, %23 ], [ null, %0 ]
  ret ptr %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_init_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs_free_server(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %31, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.nfs_client, ptr %2, i32 0, i32 44
  %6 = load ptr, ptr %5, align 8
  %7 = load i32, ptr @nfs_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !12
  %8 = getelementptr inbounds %struct.net, ptr %6, i32 0, i32 37
  %9 = load volatile ptr, ptr %8, align 64
  %10 = getelementptr [0 x ptr], ptr %9, i32 0, i32 %7
  %11 = load ptr, ptr %10, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !13
  %12 = getelementptr inbounds %struct.nfs_net, ptr %11, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %12) #12
  %13 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 1
  %14 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 1, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = load ptr, ptr %13, align 4
  %17 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  store ptr %15, ptr %17, align 4
  store volatile ptr %16, ptr %15, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %14, align 4
  %18 = getelementptr inbounds %struct.nfs_client, ptr %2, i32 0, i32 10
  %19 = load volatile ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, %18
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = getelementptr inbounds %struct.nfs_client, ptr %2, i32 0, i32 3
  tail call void @_set_bit(i32 noundef 4, ptr noundef %22) #12
  br label %23

23:                                               ; preds = %21, %4
  %24 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 2
  %25 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 2, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = load ptr, ptr %24, align 4
  %28 = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  store ptr %26, ptr %28, align 4
  store volatile ptr %27, ptr %26, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %24, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %25, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !8
  %29 = load i16, ptr %12, align 4
  %30 = add i16 %29, 1
  store i16 %30, ptr %12, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  tail call void @synchronize_rcu() #12
  br label %31

31:                                               ; preds = %23, %1
  %32 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 56
  %33 = load ptr, ptr %32, align 8
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  tail call void %33(ptr noundef %0) #12
  br label %36

36:                                               ; preds = %35, %31
  %37 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 4
  %38 = load ptr, ptr %37, align 8
  %39 = icmp ugt ptr %38, inttoptr (i32 -4096 to ptr)
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  tail call void @rpc_shutdown_client(ptr noundef %38) #12
  br label %41

41:                                               ; preds = %40, %36
  %42 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 3
  %43 = load ptr, ptr %42, align 4
  %44 = icmp ugt ptr %43, inttoptr (i32 -4096 to ptr)
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  tail call void @rpc_shutdown_client(ptr noundef %43) #12
  br label %46

46:                                               ; preds = %45, %41
  %47 = load ptr, ptr %0, align 8
  tail call void @nfs_put_client(ptr noundef %47)
  %48 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 49
  tail call void @ida_destroy(ptr noundef %48) #12
  %49 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 48
  tail call void @ida_destroy(ptr noundef %49) #12
  %50 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 6
  %51 = load ptr, ptr %50, align 8
  %52 = icmp eq ptr %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %46
  tail call void @free_percpu(ptr noundef nonnull %51) #12
  br label %54

54:                                               ; preds = %53, %46
  %55 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 65
  %56 = load ptr, ptr %55, align 8
  %57 = icmp eq ptr %56, null
  br i1 %57, label %63, label %58

58:                                               ; preds = %54
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !24
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %56) #12, !srcloc !17
  %59 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %56, ptr nonnull %56, i32 1, ptr nonnull elementtype(i32) %56) #12, !srcloc !25
  %60 = extractvalue { i32, i32 } %59, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !26
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  tail call void @__put_cred(ptr noundef nonnull %56) #12
  br label %63

63:                                               ; preds = %62, %58, %54
  tail call void @kfree(ptr noundef %0) #12
  tail call void @nfs_release_automount_timer() #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_release_automount_timer() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nfs_create_server(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.nlmclnt_initdata, align 4
  %3 = alloca %struct.rpc_timeout, align 4
  %4 = alloca %struct.nfs_client_initdata, align 4
  %5 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = tail call ptr @nfs_alloc_server()
  %8 = icmp eq ptr %7, null
  br i1 %8, label %369, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 8
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.cred, ptr %11, i32 0, i32 24
  store i32 0, ptr %14, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %11) #12, !srcloc !17
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %11, ptr nonnull %11, i32 1, ptr nonnull elementtype(i32) %11) #12, !srcloc !27
  br label %16

16:                                               ; preds = %13, %9
  %17 = getelementptr inbounds %struct.nfs_server, ptr %7, i32 0, i32 65
  store ptr %11, ptr %17, align 8
  %18 = tail call ptr @nfs_alloc_fattr() #12
  %19 = icmp eq ptr %18, null
  br i1 %19, label %366, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #12
  %22 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %22, i8 0, i32 16, i1 false) #12, !annotation !16
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #12
  store i32 256, ptr %4, align 4
  %23 = getelementptr inbounds %struct.nfs_client_initdata, ptr %4, i32 0, i32 1
  %24 = getelementptr inbounds %struct.nfs_fs_context, ptr %21, i32 0, i32 26
  %25 = getelementptr inbounds %struct.nfs_fs_context, ptr %21, i32 0, i32 26, i32 2
  %26 = load ptr, ptr %25, align 4
  store ptr %26, ptr %23, align 4
  %27 = getelementptr inbounds %struct.nfs_client_initdata, ptr %4, i32 0, i32 2
  store ptr %24, ptr %27, align 4
  %28 = getelementptr inbounds %struct.nfs_client_initdata, ptr %4, i32 0, i32 3
  store ptr null, ptr %28, align 4
  %29 = getelementptr inbounds %struct.nfs_client_initdata, ptr %4, i32 0, i32 4
  store ptr null, ptr %29, align 4
  %30 = getelementptr inbounds %struct.nfs_client_initdata, ptr %4, i32 0, i32 5
  %31 = getelementptr inbounds %struct.nfs_fs_context, ptr %21, i32 0, i32 26, i32 1
  %32 = load i32, ptr %31, align 4
  store i32 %32, ptr %30, align 4
  %33 = getelementptr inbounds %struct.nfs_client_initdata, ptr %4, i32 0, i32 6
  %34 = getelementptr inbounds %struct.nfs_fs_context, ptr %21, i32 0, i32 29
  %35 = load ptr, ptr %34, align 4
  store ptr %35, ptr %33, align 4
  %36 = getelementptr inbounds %struct.nfs_client_initdata, ptr %4, i32 0, i32 7
  %37 = getelementptr inbounds %struct.nfs_fs_context, ptr %21, i32 0, i32 26, i32 5
  %38 = load i16, ptr %37, align 4
  %39 = zext i16 %38 to i32
  store i32 %39, ptr %36, align 4
  %40 = getelementptr inbounds %struct.nfs_client_initdata, ptr %4, i32 0, i32 8
  store i32 0, ptr %40, align 4
  %41 = getelementptr inbounds %struct.nfs_client_initdata, ptr %4, i32 0, i32 9
  %42 = getelementptr inbounds %struct.nfs_fs_context, ptr %21, i32 0, i32 26, i32 6
  %43 = load i16, ptr %42, align 2
  %44 = zext i16 %43 to i32
  store i32 %44, ptr %41, align 4
  %45 = getelementptr inbounds %struct.nfs_client_initdata, ptr %4, i32 0, i32 10
  store i32 0, ptr %45, align 4
  %46 = getelementptr inbounds %struct.nfs_client_initdata, ptr %4, i32 0, i32 11
  %47 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 7
  %48 = load ptr, ptr %47, align 4
  store ptr %48, ptr %46, align 4
  %49 = getelementptr inbounds %struct.nfs_client_initdata, ptr %4, i32 0, i32 12
  store ptr %3, ptr %49, align 4
  %50 = getelementptr inbounds %struct.nfs_client_initdata, ptr %4, i32 0, i32 13
  %51 = load ptr, ptr %17, align 8
  store ptr %51, ptr %50, align 4
  %52 = getelementptr inbounds %struct.nfs_fs_context, ptr %21, i32 0, i32 7
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr inbounds %struct.nfs_fs_context, ptr %21, i32 0, i32 8
  %55 = load i32, ptr %54, align 4
  %56 = mul i32 %53, 100
  %57 = sdiv i32 %56, 10
  store i32 %57, ptr %3, align 4
  %58 = getelementptr inbounds %struct.rpc_timeout, ptr %3, i32 0, i32 3
  store i32 %55, ptr %58, align 4
  switch i16 %38, label %91 [
    i16 6, label %59
    i16 256, label %59
    i16 17, label %79
  ]

59:                                               ; preds = %20, %20
  %60 = icmp eq i32 %55, -1
  br i1 %60, label %61, label %62

61:                                               ; preds = %59
  store i32 2, ptr %58, align 4
  br label %62

62:                                               ; preds = %61, %59
  %63 = phi i32 [ 2, %61 ], [ %55, %59 ]
  %64 = icmp eq i32 %53, -1
  %65 = add i32 %56, 9
  %66 = icmp ult i32 %65, 19
  %67 = or i1 %64, %66
  br i1 %67, label %70, label %68

68:                                               ; preds = %62
  %69 = icmp ugt i32 %57, 60000
  br i1 %69, label %70, label %72

70:                                               ; preds = %68, %62
  %71 = phi i32 [ 6000, %62 ], [ 60000, %68 ]
  store i32 %71, ptr %3, align 4
  br label %72

72:                                               ; preds = %70, %68
  %73 = phi i32 [ %57, %68 ], [ %71, %70 ]
  %74 = getelementptr inbounds %struct.rpc_timeout, ptr %3, i32 0, i32 2
  store i32 %73, ptr %74, align 4
  %75 = mul i32 %73, %63
  %76 = add i32 %75, %73
  %77 = call i32 @llvm.umin.i32(i32 %76, i32 60000) #12
  %78 = call i32 @llvm.umax.i32(i32 %77, i32 %73) #12
  br label %92

79:                                               ; preds = %20
  %80 = icmp eq i32 %55, -1
  br i1 %80, label %81, label %82

81:                                               ; preds = %79
  store i32 3, ptr %58, align 4
  br label %82

82:                                               ; preds = %81, %79
  %83 = icmp eq i32 %53, -1
  %84 = add i32 %56, 9
  %85 = icmp ult i32 %84, 19
  %86 = or i1 %83, %85
  br i1 %86, label %89, label %87

87:                                               ; preds = %82
  %88 = icmp ugt i32 %57, 6000
  br i1 %88, label %89, label %92

89:                                               ; preds = %87, %82
  %90 = phi i32 [ 110, %82 ], [ 6000, %87 ]
  store i32 %90, ptr %3, align 4
  br label %92

91:                                               ; preds = %20
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfs/client.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 487, 0\0A.popsection", ""() #12, !srcloc !21
  unreachable

92:                                               ; preds = %89, %87, %72
  %93 = phi i32 [ %78, %72 ], [ 6000, %89 ], [ 6000, %87 ]
  %94 = phi i8 [ 0, %72 ], [ 1, %89 ], [ 1, %87 ]
  store i32 %93, ptr %22, align 4
  %95 = getelementptr inbounds %struct.rpc_timeout, ptr %3, i32 0, i32 4
  store i8 %94, ptr %95, align 4
  %96 = getelementptr inbounds %struct.nfs_fs_context, ptr %21, i32 0, i32 4
  %97 = load i32, ptr %96, align 4
  %98 = and i32 %97, 262144
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %92
  call void @_set_bit(i32 noundef 0, ptr noundef nonnull %4) #12
  br label %101

101:                                              ; preds = %100, %92
  %102 = call ptr @nfs_get_client(ptr noundef nonnull %4) #12
  %103 = icmp ugt ptr %102, inttoptr (i32 -4096 to ptr)
  br i1 %103, label %291, label %104

104:                                              ; preds = %101
  store ptr %102, ptr %7, align 8
  %105 = load i32, ptr %96, align 4
  %106 = getelementptr inbounds %struct.nfs_server, ptr %7, i32 0, i32 8
  store i32 %105, ptr %106, align 8
  %107 = getelementptr inbounds %struct.nfs_fs_context, ptr %21, i32 0, i32 14
  %108 = load i32, ptr %107, align 4
  %109 = getelementptr inbounds %struct.nfs_server, ptr %7, i32 0, i32 27
  store i32 %108, ptr %109, align 4
  %110 = getelementptr inbounds %struct.nfs_server, ptr %7, i32 0, i32 10
  %111 = load i32, ptr %110, align 8
  %112 = or i32 %111, 6
  store i32 %112, ptr %110, align 8
  %113 = getelementptr inbounds %struct.nfs_client, ptr %102, i32 0, i32 12
  %114 = load ptr, ptr %113, align 4
  %115 = load i32, ptr %114, align 4
  %116 = icmp eq i32 %115, 3
  %117 = select i1 %116, i32 163455, i32 33717887
  %118 = icmp eq i32 %115, 2
  %119 = select i1 %118, i32 163199, i32 %117
  %120 = getelementptr inbounds %struct.nfs_server, ptr %7, i32 0, i32 9
  store i32 %119, ptr %120, align 4
  %121 = getelementptr inbounds %struct.nfs_fs_context, ptr %21, i32 0, i32 5
  %122 = load i32, ptr %121, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %143, label %124

124:                                              ; preds = %104
  %125 = icmp ult i32 %122, 1024
  %126 = call i32 @llvm.umin.i32(i32 %122, i32 1048576) #12
  %127 = select i1 %125, i32 4096, i32 %126
  %128 = call i32 @llvm.ctpop.i32(i32 %127) #12, !range !22
  %129 = icmp ugt i32 %128, 1
  br i1 %129, label %134, label %140

130:                                              ; preds = %134
  %131 = add nsw i8 %136, -1
  %132 = zext i8 %131 to i32
  %133 = icmp eq i8 %131, 0
  br i1 %133, label %140, label %134

134:                                              ; preds = %130, %124
  %135 = phi i32 [ %132, %130 ], [ 31, %124 ]
  %136 = phi i8 [ %131, %130 ], [ 31, %124 ]
  %137 = shl nuw i32 1, %135
  %138 = and i32 %137, %127
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %130, label %140

140:                                              ; preds = %134, %130, %124
  %141 = phi i32 [ %127, %124 ], [ %137, %134 ], [ 1, %130 ]
  %142 = getelementptr inbounds %struct.nfs_server, ptr %7, i32 0, i32 11
  store i32 %141, ptr %142, align 4
  br label %143

143:                                              ; preds = %140, %104
  %144 = getelementptr inbounds %struct.nfs_fs_context, ptr %21, i32 0, i32 6
  %145 = load i32, ptr %144, align 4
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %166, label %147

147:                                              ; preds = %143
  %148 = icmp ult i32 %145, 1024
  %149 = call i32 @llvm.umin.i32(i32 %145, i32 1048576) #12
  %150 = select i1 %148, i32 4096, i32 %149
  %151 = call i32 @llvm.ctpop.i32(i32 %150) #12, !range !22
  %152 = icmp ugt i32 %151, 1
  br i1 %152, label %157, label %163

153:                                              ; preds = %157
  %154 = add nsw i8 %159, -1
  %155 = zext i8 %154 to i32
  %156 = icmp eq i8 %154, 0
  br i1 %156, label %163, label %157

157:                                              ; preds = %153, %147
  %158 = phi i32 [ %155, %153 ], [ 31, %147 ]
  %159 = phi i8 [ %154, %153 ], [ 31, %147 ]
  %160 = shl nuw i32 1, %158
  %161 = and i32 %160, %150
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %153, label %163

163:                                              ; preds = %157, %153, %147
  %164 = phi i32 [ %150, %147 ], [ %160, %157 ], [ 1, %153 ]
  %165 = getelementptr inbounds %struct.nfs_server, ptr %7, i32 0, i32 13
  store i32 %164, ptr %165, align 4
  br label %166

166:                                              ; preds = %163, %143
  %167 = getelementptr inbounds %struct.nfs_fs_context, ptr %21, i32 0, i32 9
  %168 = load i32, ptr %167, align 4
  %169 = mul i32 %168, 100
  %170 = getelementptr inbounds %struct.nfs_server, ptr %7, i32 0, i32 22
  store i32 %169, ptr %170, align 8
  %171 = getelementptr inbounds %struct.nfs_fs_context, ptr %21, i32 0, i32 10
  %172 = load i32, ptr %171, align 4
  %173 = mul i32 %172, 100
  %174 = getelementptr inbounds %struct.nfs_server, ptr %7, i32 0, i32 23
  store i32 %173, ptr %174, align 4
  %175 = getelementptr inbounds %struct.nfs_fs_context, ptr %21, i32 0, i32 11
  %176 = load i32, ptr %175, align 4
  %177 = mul i32 %176, 100
  %178 = getelementptr inbounds %struct.nfs_server, ptr %7, i32 0, i32 24
  store i32 %177, ptr %178, align 8
  %179 = getelementptr inbounds %struct.nfs_fs_context, ptr %21, i32 0, i32 12
  %180 = load i32, ptr %179, align 4
  %181 = mul i32 %180, 100
  %182 = getelementptr inbounds %struct.nfs_server, ptr %7, i32 0, i32 25
  store i32 %181, ptr %182, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %2) #12
  %183 = getelementptr inbounds i8, ptr %2, i32 12
  store i32 6, ptr %183, align 4, !annotation !16
  %184 = getelementptr inbounds %struct.nfs_client, ptr %102, i32 0, i32 7
  %185 = load ptr, ptr %184, align 8
  store ptr %185, ptr %2, align 4
  %186 = getelementptr inbounds %struct.nlmclnt_initdata, ptr %2, i32 0, i32 1
  %187 = getelementptr inbounds %struct.nfs_client, ptr %102, i32 0, i32 5
  store ptr %187, ptr %186, align 4
  %188 = getelementptr inbounds %struct.nlmclnt_initdata, ptr %2, i32 0, i32 2
  %189 = getelementptr inbounds %struct.nfs_client, ptr %102, i32 0, i32 6
  %190 = load i32, ptr %189, align 4
  store i32 %190, ptr %188, align 4
  %191 = getelementptr inbounds %struct.nlmclnt_initdata, ptr %2, i32 0, i32 4
  %192 = load ptr, ptr %113, align 4
  %193 = load i32, ptr %192, align 4
  store i32 %193, ptr %191, align 4
  %194 = getelementptr inbounds %struct.nlmclnt_initdata, ptr %2, i32 0, i32 5
  %195 = lshr i32 %105, 18
  %196 = and i32 %195, 1
  store i32 %196, ptr %194, align 4
  %197 = getelementptr inbounds %struct.nlmclnt_initdata, ptr %2, i32 0, i32 6
  %198 = getelementptr inbounds %struct.nfs_client, ptr %102, i32 0, i32 44
  %199 = load ptr, ptr %198, align 8
  store ptr %199, ptr %197, align 4
  %200 = getelementptr inbounds %struct.nlmclnt_initdata, ptr %2, i32 0, i32 7
  %201 = getelementptr inbounds %struct.nfs_client, ptr %102, i32 0, i32 14
  %202 = load ptr, ptr %201, align 4
  %203 = getelementptr inbounds %struct.nfs_subversion, ptr %202, i32 0, i32 3
  %204 = load ptr, ptr %203, align 4
  %205 = getelementptr inbounds %struct.nfs_rpc_ops, ptr %204, i32 0, i32 5
  %206 = load ptr, ptr %205, align 4
  store ptr %206, ptr %200, align 4
  %207 = getelementptr inbounds %struct.nlmclnt_initdata, ptr %2, i32 0, i32 8
  %208 = load ptr, ptr %17, align 8
  store ptr %208, ptr %207, align 4
  %209 = icmp ugt i32 %193, 3
  %210 = and i32 %105, 3145728
  %211 = icmp eq i32 %210, 3145728
  %212 = select i1 %209, i1 true, i1 %211
  br i1 %212, label %219, label %213

213:                                              ; preds = %166
  %214 = call ptr @nlmclnt_init(ptr noundef nonnull %2) #12
  %215 = icmp ugt ptr %214, inttoptr (i32 -4096 to ptr)
  br i1 %215, label %220, label %216

216:                                              ; preds = %213
  %217 = getelementptr inbounds %struct.nfs_server, ptr %7, i32 0, i32 5
  store ptr %214, ptr %217, align 4
  %218 = getelementptr inbounds %struct.nfs_server, ptr %7, i32 0, i32 56
  store ptr @nfs_destroy_server, ptr %218, align 8
  br label %219

219:                                              ; preds = %216, %166
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %2) #12
  br label %222

220:                                              ; preds = %213
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %2) #12
  %221 = icmp slt ptr %214, null
  br i1 %221, label %289, label %222

222:                                              ; preds = %220, %219
  %223 = getelementptr inbounds %struct.nfs_fs_context, ptr %21, i32 0, i32 26, i32 4
  %224 = load i32, ptr %223, align 4
  %225 = trunc i32 %224 to i16
  %226 = getelementptr inbounds %struct.nfs_server, ptr %7, i32 0, i32 17
  store i16 %225, ptr %226, align 4
  %227 = getelementptr inbounds %struct.nfs_server, ptr %7, i32 0, i32 36
  %228 = getelementptr inbounds %struct.nfs_fs_context, ptr %21, i32 0, i32 16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(52) %227, ptr noundef align 4 dereferenceable(52) %228, i32 52, i1 false) #12
  %229 = getelementptr inbounds %struct.nfs_fs_context, ptr %21, i32 0, i32 17
  %230 = load i32, ptr %229, align 4
  %231 = load ptr, ptr %7, align 8
  %232 = getelementptr inbounds %struct.nfs_client, ptr %231, i32 0, i32 11
  %233 = load ptr, ptr %232, align 8
  %234 = call ptr @rpc_clone_client_set_auth(ptr noundef %233, i32 noundef %230) #12
  %235 = getelementptr inbounds %struct.nfs_server, ptr %7, i32 0, i32 3
  store ptr %234, ptr %235, align 4
  %236 = icmp ugt ptr %234, inttoptr (i32 -4096 to ptr)
  br i1 %236, label %264, label %237

237:                                              ; preds = %222
  %238 = getelementptr inbounds %struct.rpc_clnt, ptr %234, i32 0, i32 23
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(20) %238, ptr noundef nonnull align 4 dereferenceable(20) %3, i32 20, i1 false) #12
  %239 = load ptr, ptr %235, align 4
  %240 = getelementptr inbounds %struct.rpc_clnt, ptr %239, i32 0, i32 23
  %241 = getelementptr inbounds %struct.rpc_clnt, ptr %239, i32 0, i32 16
  store ptr %240, ptr %241, align 4
  %242 = load ptr, ptr %235, align 4
  %243 = getelementptr inbounds %struct.rpc_clnt, ptr %242, i32 0, i32 14
  %244 = load i8, ptr %243, align 4
  %245 = and i8 %244, -2
  store i8 %245, ptr %243, align 4
  %246 = load i32, ptr %106, align 8
  %247 = and i32 %246, 4194304
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %255, label %249

249:                                              ; preds = %237
  %250 = load ptr, ptr %235, align 4
  %251 = getelementptr inbounds %struct.rpc_clnt, ptr %250, i32 0, i32 14
  %252 = load i8, ptr %251, align 4
  %253 = or i8 %252, 2
  store i8 %253, ptr %251, align 4
  %254 = load i32, ptr %106, align 8
  br label %255

255:                                              ; preds = %249, %237
  %256 = phi i32 [ %254, %249 ], [ %246, %237 ]
  %257 = and i32 %256, 1
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %266, label %259

259:                                              ; preds = %255
  %260 = load ptr, ptr %235, align 4
  %261 = getelementptr inbounds %struct.rpc_clnt, ptr %260, i32 0, i32 14
  %262 = load i8, ptr %261, align 4
  %263 = or i8 %262, 1
  store i8 %263, ptr %261, align 4
  br label %266

264:                                              ; preds = %222
  %265 = icmp slt ptr %234, null
  br i1 %265, label %289, label %266

266:                                              ; preds = %264, %259, %255
  %267 = getelementptr inbounds %struct.nfs_fs_context, ptr %21, i32 0, i32 25, i32 1
  %268 = load i32, ptr %267, align 4
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %275, label %270

270:                                              ; preds = %266
  %271 = getelementptr inbounds %struct.nfs_fs_context, ptr %21, i32 0, i32 25
  %272 = getelementptr inbounds %struct.nfs_server, ptr %7, i32 0, i32 58
  call void @llvm.memcpy.p0.p0.i32(ptr align 8 %272, ptr align 4 %271, i32 %268, i1 false) #12
  %273 = load i32, ptr %267, align 4
  %274 = getelementptr inbounds %struct.nfs_server, ptr %7, i32 0, i32 59
  store i32 %273, ptr %274, align 8
  br label %275

275:                                              ; preds = %270, %266
  %276 = getelementptr inbounds %struct.nfs_fs_context, ptr %21, i32 0, i32 25, i32 3
  %277 = load i32, ptr %276, align 4
  %278 = getelementptr inbounds %struct.nfs_server, ptr %7, i32 0, i32 60
  store i32 %277, ptr %278, align 4
  %279 = getelementptr inbounds %struct.nfs_fs_context, ptr %21, i32 0, i32 25, i32 4
  %280 = load i32, ptr %279, align 4
  %281 = trunc i32 %280 to i16
  %282 = getelementptr inbounds %struct.nfs_server, ptr %7, i32 0, i32 61
  store i16 %281, ptr %282, align 8
  %283 = getelementptr inbounds %struct.nfs_fs_context, ptr %21, i32 0, i32 25, i32 5
  %284 = load i16, ptr %283, align 4
  %285 = getelementptr inbounds %struct.nfs_server, ptr %7, i32 0, i32 62
  store i16 %284, ptr %285, align 2
  %286 = getelementptr inbounds %struct.nfs_fs_context, ptr %21, i32 0, i32 13
  %287 = load i32, ptr %286, align 4
  %288 = getelementptr inbounds %struct.nfs_server, ptr %7, i32 0, i32 26
  store i32 %287, ptr %288, align 8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #12
  br label %295

289:                                              ; preds = %264, %220
  %290 = phi ptr [ %214, %220 ], [ %234, %264 ]
  store ptr null, ptr %7, align 8
  call void @nfs_put_client(ptr noundef %102) #12
  br label %291

291:                                              ; preds = %289, %101
  %292 = phi ptr [ %290, %289 ], [ %102, %101 ]
  %293 = ptrtoint ptr %292 to i32
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #12
  %294 = icmp slt ptr %292, null
  br i1 %294, label %366, label %295

295:                                              ; preds = %291, %275
  %296 = getelementptr inbounds %struct.nfs_fs_context, ptr %6, i32 0, i32 27
  %297 = load ptr, ptr %296, align 4
  %298 = call fastcc i32 @nfs_probe_fsinfo(ptr noundef nonnull %7, ptr noundef %297, ptr noundef nonnull %18)
  %299 = icmp slt i32 %298, 0
  br i1 %299, label %366, label %300

300:                                              ; preds = %295
  %301 = load ptr, ptr %7, align 8
  %302 = getelementptr inbounds %struct.nfs_client, ptr %301, i32 0, i32 12
  %303 = load ptr, ptr %302, align 4
  %304 = load i32, ptr %303, align 4
  %305 = icmp eq i32 %304, 3
  %306 = getelementptr inbounds %struct.nfs_server, ptr %7, i32 0, i32 26
  %307 = load i32, ptr %306, align 8
  %308 = add i32 %307, -256
  %309 = icmp ult i32 %308, -255
  br i1 %305, label %310, label %321

310:                                              ; preds = %300
  br i1 %309, label %311, label %312

311:                                              ; preds = %310
  store i32 255, ptr %306, align 8
  br label %312

312:                                              ; preds = %311, %310
  %313 = getelementptr inbounds %struct.nfs_fs_context, ptr %6, i32 0, i32 4
  %314 = load i32, ptr %313, align 4
  %315 = and i32 %314, 16384
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %317, label %323

317:                                              ; preds = %312
  %318 = getelementptr inbounds %struct.nfs_server, ptr %7, i32 0, i32 10
  %319 = load i32, ptr %318, align 8
  %320 = or i32 %319, 1
  store i32 %320, ptr %318, align 8
  br label %323

321:                                              ; preds = %300
  br i1 %309, label %322, label %323

322:                                              ; preds = %321
  store i32 255, ptr %306, align 8
  br label %323

323:                                              ; preds = %322, %321, %317, %312
  %324 = load i32, ptr %18, align 8
  %325 = and i32 %324, 162943
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %327, label %339

327:                                              ; preds = %323
  %328 = getelementptr inbounds %struct.nfs_fs_context, ptr %6, i32 0, i32 29
  %329 = load ptr, ptr %328, align 4
  %330 = getelementptr inbounds %struct.nfs_subversion, ptr %329, i32 0, i32 3
  %331 = load ptr, ptr %330, align 4
  %332 = getelementptr inbounds %struct.nfs_rpc_ops, ptr %331, i32 0, i32 9
  %333 = load ptr, ptr %332, align 4
  %334 = load ptr, ptr %296, align 4
  %335 = call i32 %333(ptr noundef nonnull %7, ptr noundef %334, ptr noundef nonnull %18, ptr noundef null) #12
  %336 = icmp slt i32 %335, 0
  br i1 %336, label %366, label %337

337:                                              ; preds = %327
  %338 = load ptr, ptr %7, align 8
  br label %339

339:                                              ; preds = %337, %323
  %340 = phi ptr [ %338, %337 ], [ %301, %323 ]
  %341 = getelementptr inbounds %struct.nfs_server, ptr %7, i32 0, i32 30
  %342 = getelementptr inbounds %struct.nfs_fattr, ptr %18, i32 0, i32 8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %341, ptr noundef align 8 dereferenceable(16) %342, i32 16, i1 false)
  %343 = getelementptr inbounds %struct.nfs_client, ptr %340, i32 0, i32 44
  %344 = load ptr, ptr %343, align 8
  %345 = load i32, ptr @nfs_net_id, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !12
  %346 = getelementptr inbounds %struct.net, ptr %344, i32 0, i32 37
  %347 = load volatile ptr, ptr %346, align 64
  %348 = getelementptr [0 x ptr], ptr %347, i32 0, i32 %345
  %349 = load ptr, ptr %348, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !13
  %350 = getelementptr inbounds %struct.nfs_net, ptr %349, i32 0, i32 12
  call void @_raw_spin_lock(ptr noundef %350) #12
  %351 = getelementptr inbounds %struct.nfs_server, ptr %7, i32 0, i32 1
  %352 = getelementptr inbounds %struct.nfs_client, ptr %340, i32 0, i32 10
  %353 = getelementptr inbounds %struct.nfs_client, ptr %340, i32 0, i32 10, i32 1
  %354 = load ptr, ptr %353, align 4
  store ptr %352, ptr %351, align 4
  %355 = getelementptr inbounds %struct.nfs_server, ptr %7, i32 0, i32 1, i32 1
  store ptr %354, ptr %355, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !23
  store volatile ptr %351, ptr %354, align 4
  store ptr %351, ptr %353, align 4
  %356 = getelementptr inbounds %struct.nfs_server, ptr %7, i32 0, i32 2
  %357 = getelementptr inbounds %struct.nfs_net, ptr %349, i32 0, i32 6
  %358 = getelementptr inbounds %struct.nfs_net, ptr %349, i32 0, i32 6, i32 1
  %359 = load ptr, ptr %358, align 4
  store ptr %356, ptr %358, align 4
  store ptr %357, ptr %356, align 4
  %360 = getelementptr inbounds %struct.nfs_server, ptr %7, i32 0, i32 2, i32 1
  store ptr %359, ptr %360, align 4
  store volatile ptr %356, ptr %359, align 4
  %361 = getelementptr inbounds %struct.nfs_client, ptr %340, i32 0, i32 3
  call void @_clear_bit(i32 noundef 4, ptr noundef %361) #12
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !8
  %362 = load i16, ptr %350, align 4
  %363 = add i16 %362, 1
  store i16 %363, ptr %350, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !10
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  %364 = load volatile i32, ptr @jiffies, align 64
  %365 = getelementptr inbounds %struct.nfs_server, ptr %7, i32 0, i32 33
  store i32 %364, ptr %365, align 8
  call void @kfree(ptr noundef nonnull %18) #12
  br label %369

366:                                              ; preds = %327, %295, %291, %16
  %367 = phi i32 [ -12, %16 ], [ %293, %291 ], [ %298, %295 ], [ %335, %327 ]
  call void @kfree(ptr noundef %18) #12
  call void @nfs_free_server(ptr noundef nonnull %7)
  %368 = inttoptr i32 %367 to ptr
  br label %369

369:                                              ; preds = %366, %339, %1
  %370 = phi ptr [ %368, %366 ], [ %7, %339 ], [ inttoptr (i32 -12 to ptr), %1 ]
  ret ptr %370
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nfs_clone_server(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = alloca %struct.nlmclnt_initdata, align 4
  %6 = tail call ptr @nfs_alloc_server()
  %7 = icmp eq ptr %6, null
  br i1 %7, label %188, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 65
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.cred, ptr %10, i32 0, i32 24
  store i32 0, ptr %13, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %10) #12, !srcloc !17
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %10, ptr nonnull %10, i32 1, ptr nonnull elementtype(i32) %10) #12, !srcloc !27
  br label %15

15:                                               ; preds = %12, %8
  %16 = getelementptr inbounds %struct.nfs_server, ptr %6, i32 0, i32 65
  store ptr %10, ptr %16, align 8
  %17 = load ptr, ptr %0, align 8
  store ptr %17, ptr %6, align 8
  %18 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 56
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.nfs_server, ptr %6, i32 0, i32 56
  store ptr %19, ptr %20, align 8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %17) #12, !srcloc !17
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %17, ptr %17, i32 1, ptr elementtype(i32) %17) #12, !srcloc !18
  %22 = extractvalue { i32, i32, i32 } %21, 0
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24, !prof !14

24:                                               ; preds = %15
  %25 = add i32 %22, 1
  %26 = or i32 %25, %22
  %27 = icmp sgt i32 %26, -1
  br i1 %27, label %30, label %28, !prof !15

28:                                               ; preds = %24, %15
  %29 = phi i32 [ 2, %15 ], [ 1, %24 ]
  tail call void @refcount_warn_saturate(ptr noundef %17, i32 noundef %29) #12
  br label %30

30:                                               ; preds = %28, %24
  %31 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 8
  %32 = load i32, ptr %31, align 8
  %33 = getelementptr inbounds %struct.nfs_server, ptr %6, i32 0, i32 8
  store i32 %32, ptr %33, align 8
  %34 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 11
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.nfs_server, ptr %6, i32 0, i32 11
  store i32 %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 13
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.nfs_server, ptr %6, i32 0, i32 13
  store i32 %38, ptr %39, align 4
  %40 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 22
  %41 = load i32, ptr %40, align 8
  %42 = getelementptr inbounds %struct.nfs_server, ptr %6, i32 0, i32 22
  store i32 %41, ptr %42, align 8
  %43 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 23
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr inbounds %struct.nfs_server, ptr %6, i32 0, i32 23
  store i32 %44, ptr %45, align 4
  %46 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 24
  %47 = load i32, ptr %46, align 8
  %48 = getelementptr inbounds %struct.nfs_server, ptr %6, i32 0, i32 24
  store i32 %47, ptr %48, align 8
  %49 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 25
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr inbounds %struct.nfs_server, ptr %6, i32 0, i32 25
  store i32 %50, ptr %51, align 4
  %52 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 10
  %53 = load i32, ptr %52, align 8
  %54 = getelementptr inbounds %struct.nfs_server, ptr %6, i32 0, i32 10
  store i32 %53, ptr %54, align 8
  %55 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 27
  %56 = load i32, ptr %55, align 4
  %57 = getelementptr inbounds %struct.nfs_server, ptr %6, i32 0, i32 27
  store i32 %56, ptr %57, align 4
  %58 = getelementptr inbounds %struct.nfs_server, ptr %6, i32 0, i32 36
  %59 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 36
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(52) %58, ptr noundef align 4 dereferenceable(52) %59, i32 52, i1 false) #12
  %60 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 17
  %61 = load i16, ptr %60, align 4
  %62 = getelementptr inbounds %struct.nfs_server, ptr %6, i32 0, i32 17
  store i16 %61, ptr %62, align 4
  %63 = getelementptr inbounds %struct.nfs_server, ptr %6, i32 0, i32 30
  %64 = getelementptr inbounds %struct.nfs_fattr, ptr %2, i32 0, i32 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %63, ptr noundef align 8 dereferenceable(16) %64, i32 16, i1 false)
  %65 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 3
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.rpc_clnt, ptr %66, i32 0, i32 16
  %68 = load ptr, ptr %67, align 4
  %69 = load ptr, ptr %6, align 8
  %70 = getelementptr inbounds %struct.nfs_client, ptr %69, i32 0, i32 11
  %71 = load ptr, ptr %70, align 8
  %72 = tail call ptr @rpc_clone_client_set_auth(ptr noundef %71, i32 noundef %3) #12
  %73 = getelementptr inbounds %struct.nfs_server, ptr %6, i32 0, i32 3
  store ptr %72, ptr %73, align 4
  %74 = icmp ugt ptr %72, inttoptr (i32 -4096 to ptr)
  br i1 %74, label %102, label %75

75:                                               ; preds = %30
  %76 = getelementptr inbounds %struct.rpc_clnt, ptr %72, i32 0, i32 23
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(20) %76, ptr noundef align 4 dereferenceable(20) %68, i32 20, i1 false) #12
  %77 = load ptr, ptr %73, align 4
  %78 = getelementptr inbounds %struct.rpc_clnt, ptr %77, i32 0, i32 23
  %79 = getelementptr inbounds %struct.rpc_clnt, ptr %77, i32 0, i32 16
  store ptr %78, ptr %79, align 4
  %80 = load ptr, ptr %73, align 4
  %81 = getelementptr inbounds %struct.rpc_clnt, ptr %80, i32 0, i32 14
  %82 = load i8, ptr %81, align 4
  %83 = and i8 %82, -2
  store i8 %83, ptr %81, align 4
  %84 = load i32, ptr %33, align 8
  %85 = and i32 %84, 4194304
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %93, label %87

87:                                               ; preds = %75
  %88 = load ptr, ptr %73, align 4
  %89 = getelementptr inbounds %struct.rpc_clnt, ptr %88, i32 0, i32 14
  %90 = load i8, ptr %89, align 4
  %91 = or i8 %90, 2
  store i8 %91, ptr %89, align 4
  %92 = load i32, ptr %33, align 8
  br label %93

93:                                               ; preds = %87, %75
  %94 = phi i32 [ %92, %87 ], [ %84, %75 ]
  %95 = and i32 %94, 1
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %105, label %97

97:                                               ; preds = %93
  %98 = load ptr, ptr %73, align 4
  %99 = getelementptr inbounds %struct.rpc_clnt, ptr %98, i32 0, i32 14
  %100 = load i8, ptr %99, align 4
  %101 = or i8 %100, 1
  store i8 %101, ptr %99, align 4
  br label %105

102:                                              ; preds = %30
  %103 = ptrtoint ptr %72 to i32
  %104 = icmp slt ptr %72, null
  br i1 %104, label %185, label %105

105:                                              ; preds = %102, %97, %93
  %106 = tail call ptr @nfs_alloc_fattr() #12
  %107 = icmp eq ptr %106, null
  br i1 %107, label %185, label %108

108:                                              ; preds = %105
  %109 = tail call fastcc i32 @nfs_probe_fsinfo(ptr noundef nonnull %6, ptr noundef %1, ptr noundef nonnull %106) #12
  tail call void @kfree(ptr noundef nonnull %106) #12
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %185, label %111

111:                                              ; preds = %108
  %112 = getelementptr inbounds %struct.nfs_server, ptr %6, i32 0, i32 26
  %113 = load i32, ptr %112, align 8
  %114 = add i32 %113, -256
  %115 = icmp ult i32 %114, -255
  br i1 %115, label %116, label %117

116:                                              ; preds = %111
  store i32 255, ptr %112, align 8
  br label %117

117:                                              ; preds = %116, %111
  %118 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #12
  %119 = getelementptr inbounds i8, ptr %5, i32 12
  store i32 6, ptr %119, align 4, !annotation !16
  %120 = getelementptr inbounds %struct.nfs_client, ptr %118, i32 0, i32 7
  %121 = load ptr, ptr %120, align 8
  store ptr %121, ptr %5, align 4
  %122 = getelementptr inbounds %struct.nlmclnt_initdata, ptr %5, i32 0, i32 1
  %123 = getelementptr inbounds %struct.nfs_client, ptr %118, i32 0, i32 5
  store ptr %123, ptr %122, align 4
  %124 = getelementptr inbounds %struct.nlmclnt_initdata, ptr %5, i32 0, i32 2
  %125 = getelementptr inbounds %struct.nfs_client, ptr %118, i32 0, i32 6
  %126 = load i32, ptr %125, align 4
  store i32 %126, ptr %124, align 4
  %127 = getelementptr inbounds %struct.nlmclnt_initdata, ptr %5, i32 0, i32 4
  %128 = getelementptr inbounds %struct.nfs_client, ptr %118, i32 0, i32 12
  %129 = load ptr, ptr %128, align 4
  %130 = load i32, ptr %129, align 4
  store i32 %130, ptr %127, align 4
  %131 = getelementptr inbounds %struct.nlmclnt_initdata, ptr %5, i32 0, i32 5
  %132 = load i32, ptr %33, align 8
  %133 = lshr i32 %132, 18
  %134 = and i32 %133, 1
  store i32 %134, ptr %131, align 4
  %135 = getelementptr inbounds %struct.nlmclnt_initdata, ptr %5, i32 0, i32 6
  %136 = getelementptr inbounds %struct.nfs_client, ptr %118, i32 0, i32 44
  %137 = load ptr, ptr %136, align 8
  store ptr %137, ptr %135, align 4
  %138 = getelementptr inbounds %struct.nlmclnt_initdata, ptr %5, i32 0, i32 7
  %139 = getelementptr inbounds %struct.nfs_client, ptr %118, i32 0, i32 14
  %140 = load ptr, ptr %139, align 4
  %141 = getelementptr inbounds %struct.nfs_subversion, ptr %140, i32 0, i32 3
  %142 = load ptr, ptr %141, align 4
  %143 = getelementptr inbounds %struct.nfs_rpc_ops, ptr %142, i32 0, i32 5
  %144 = load ptr, ptr %143, align 4
  store ptr %144, ptr %138, align 4
  %145 = getelementptr inbounds %struct.nlmclnt_initdata, ptr %5, i32 0, i32 8
  %146 = load ptr, ptr %16, align 8
  store ptr %146, ptr %145, align 4
  %147 = icmp ugt i32 %130, 3
  %148 = and i32 %132, 3145728
  %149 = icmp eq i32 %148, 3145728
  %150 = select i1 %147, i1 true, i1 %149
  br i1 %150, label %156, label %151

151:                                              ; preds = %117
  %152 = call ptr @nlmclnt_init(ptr noundef nonnull %5) #12
  %153 = icmp ugt ptr %152, inttoptr (i32 -4096 to ptr)
  br i1 %153, label %157, label %154

154:                                              ; preds = %151
  %155 = getelementptr inbounds %struct.nfs_server, ptr %6, i32 0, i32 5
  store ptr %152, ptr %155, align 4
  store ptr @nfs_destroy_server, ptr %20, align 8
  br label %156

156:                                              ; preds = %154, %117
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #12
  br label %160

157:                                              ; preds = %151
  %158 = ptrtoint ptr %152 to i32
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #12
  %159 = icmp slt ptr %152, null
  br i1 %159, label %185, label %160

160:                                              ; preds = %157, %156
  %161 = load ptr, ptr %6, align 8
  %162 = getelementptr inbounds %struct.nfs_client, ptr %161, i32 0, i32 44
  %163 = load ptr, ptr %162, align 8
  %164 = load i32, ptr @nfs_net_id, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !12
  %165 = getelementptr inbounds %struct.net, ptr %163, i32 0, i32 37
  %166 = load volatile ptr, ptr %165, align 64
  %167 = getelementptr [0 x ptr], ptr %166, i32 0, i32 %164
  %168 = load ptr, ptr %167, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !13
  %169 = getelementptr inbounds %struct.nfs_net, ptr %168, i32 0, i32 12
  call void @_raw_spin_lock(ptr noundef %169) #12
  %170 = getelementptr inbounds %struct.nfs_server, ptr %6, i32 0, i32 1
  %171 = getelementptr inbounds %struct.nfs_client, ptr %161, i32 0, i32 10
  %172 = getelementptr inbounds %struct.nfs_client, ptr %161, i32 0, i32 10, i32 1
  %173 = load ptr, ptr %172, align 4
  store ptr %171, ptr %170, align 4
  %174 = getelementptr inbounds %struct.nfs_server, ptr %6, i32 0, i32 1, i32 1
  store ptr %173, ptr %174, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !23
  store volatile ptr %170, ptr %173, align 4
  store ptr %170, ptr %172, align 4
  %175 = getelementptr inbounds %struct.nfs_server, ptr %6, i32 0, i32 2
  %176 = getelementptr inbounds %struct.nfs_net, ptr %168, i32 0, i32 6
  %177 = getelementptr inbounds %struct.nfs_net, ptr %168, i32 0, i32 6, i32 1
  %178 = load ptr, ptr %177, align 4
  store ptr %175, ptr %177, align 4
  store ptr %176, ptr %175, align 4
  %179 = getelementptr inbounds %struct.nfs_server, ptr %6, i32 0, i32 2, i32 1
  store ptr %178, ptr %179, align 4
  store volatile ptr %175, ptr %178, align 4
  %180 = getelementptr inbounds %struct.nfs_client, ptr %161, i32 0, i32 3
  call void @_clear_bit(i32 noundef 4, ptr noundef %180) #12
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !8
  %181 = load i16, ptr %169, align 4
  %182 = add i16 %181, 1
  store i16 %182, ptr %169, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !10
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  %183 = load volatile i32, ptr @jiffies, align 64
  %184 = getelementptr inbounds %struct.nfs_server, ptr %6, i32 0, i32 33
  store i32 %183, ptr %184, align 8
  br label %188

185:                                              ; preds = %157, %108, %105, %102
  %186 = phi i32 [ %103, %102 ], [ %109, %108 ], [ %158, %157 ], [ -12, %105 ]
  call void @nfs_free_server(ptr noundef nonnull %6)
  %187 = inttoptr i32 %186 to ptr
  br label %188

188:                                              ; preds = %185, %160, %4
  %189 = phi ptr [ %187, %185 ], [ %6, %160 ], [ inttoptr (i32 -12 to ptr), %4 ]
  ret ptr %189
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs_clients_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @nfs_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !12
  %3 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 37
  %4 = load volatile ptr, ptr %3, align 64
  %5 = getelementptr [0 x ptr], ptr %4, i32 0, i32 %2
  %6 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !13
  %7 = getelementptr inbounds %struct.nfs_net, ptr %6, i32 0, i32 5
  store volatile ptr %7, ptr %7, align 4
  %8 = getelementptr inbounds %struct.nfs_net, ptr %6, i32 0, i32 5, i32 1
  store ptr %7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.nfs_net, ptr %6, i32 0, i32 6
  store volatile ptr %9, ptr %9, align 4
  %10 = getelementptr inbounds %struct.nfs_net, ptr %6, i32 0, i32 6, i32 1
  store ptr %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.nfs_net, ptr %6, i32 0, i32 7
  store i32 0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.nfs_net, ptr %6, i32 0, i32 7, i32 0, i32 1
  store i32 33554436, ptr %12, align 4
  %13 = getelementptr inbounds %struct.nfs_net, ptr %6, i32 0, i32 7, i32 0, i32 2
  store ptr null, ptr %13, align 4
  %14 = getelementptr inbounds %struct.nfs_net, ptr %6, i32 0, i32 7, i32 1
  store i32 0, ptr %14, align 4
  %15 = getelementptr inbounds %struct.nfs_net, ptr %6, i32 0, i32 7, i32 2
  store i32 0, ptr %15, align 4
  %16 = getelementptr inbounds %struct.nfs_net, ptr %6, i32 0, i32 12
  store i32 0, ptr %16, align 4
  %17 = tail call i64 @ktime_get_with_offset(i32 noundef 0) #12
  %18 = getelementptr inbounds %struct.nfs_net, ptr %6, i32 0, i32 13
  store i64 %17, ptr %18, align 8
  tail call void @nfs_netns_sysfs_setup(ptr noundef %6, ptr noundef %0) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_netns_sysfs_setup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs_clients_exit(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @nfs_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !12
  %3 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 37
  %4 = load volatile ptr, ptr %3, align 64
  %5 = getelementptr [0 x ptr], ptr %4, i32 0, i32 %2
  %6 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !13
  tail call void @nfs_netns_sysfs_destroy(ptr noundef %6) #12
  %7 = load i32, ptr @nfs_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !12
  %8 = load volatile ptr, ptr %3, align 64
  %9 = getelementptr [0 x ptr], ptr %8, i32 0, i32 %7
  %10 = load ptr, ptr %9, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !13
  %11 = getelementptr inbounds %struct.nfs_net, ptr %10, i32 0, i32 7
  tail call void @idr_destroy(ptr noundef %11) #12
  %12 = getelementptr inbounds %struct.nfs_net, ptr %6, i32 0, i32 5
  %13 = load volatile ptr, ptr %12, align 4
  %14 = icmp ne ptr %13, %12
  %15 = load i1, ptr @nfs_clients_exit.__already_done, align 1
  %16 = xor i1 %15, true
  %17 = select i1 %14, i1 %16, i1 false
  br i1 %17, label %18, label %19, !prof !14

18:                                               ; preds = %1
  store i1 true, ptr @nfs_clients_exit.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1153, i32 noundef 9, ptr noundef null) #12
  br label %19

19:                                               ; preds = %18, %1
  %20 = getelementptr inbounds %struct.nfs_net, ptr %6, i32 0, i32 6
  %21 = load volatile ptr, ptr %20, align 4
  %22 = icmp ne ptr %21, %20
  %23 = load i1, ptr @nfs_clients_exit.__already_done.5, align 1
  %24 = xor i1 %23, true
  %25 = select i1 %22, i1 %24, i1 false
  br i1 %25, label %26, label %27, !prof !14

26:                                               ; preds = %19
  store i1 true, ptr @nfs_clients_exit.__already_done.5, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1154, i32 noundef 9, ptr noundef null) #12
  br label %27

27:                                               ; preds = %26, %19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_netns_sysfs_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs_fs_proc_net_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @nfs_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !12
  %3 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 37
  %4 = load volatile ptr, ptr %3, align 64
  %5 = getelementptr [0 x ptr], ptr %4, i32 0, i32 %2
  %6 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !13
  %7 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 17
  %8 = load ptr, ptr %7, align 8
  %9 = tail call ptr @_proc_mkdir(ptr noundef nonnull @.str.6, i16 noundef zeroext 0, ptr noundef %8, ptr noundef %0, i1 noundef zeroext true) #12
  %10 = getelementptr inbounds %struct.nfs_net, ptr %6, i32 0, i32 14
  store ptr %9, ptr %10, align 8
  %11 = icmp eq ptr %9, null
  br i1 %11, label %22, label %12

12:                                               ; preds = %1
  %13 = tail call ptr @proc_create_net_data(ptr noundef nonnull @.str.7, i16 noundef zeroext -32476, ptr noundef nonnull %9, ptr noundef nonnull @nfs_server_list_ops, i32 noundef 0, ptr noundef null) #12
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  %16 = load ptr, ptr %10, align 8
  %17 = tail call ptr @proc_create_net_data(ptr noundef nonnull @.str.8, i16 noundef zeroext -32476, ptr noundef %16, ptr noundef nonnull @nfs_volume_list_ops, i32 noundef 0, ptr noundef null) #12
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %15, %12
  %20 = load ptr, ptr %7, align 8
  %21 = tail call i32 @remove_proc_subtree(ptr noundef nonnull @.str.6, ptr noundef %20) #12
  br label %22

22:                                               ; preds = %19, %15, %1
  %23 = phi i32 [ 0, %15 ], [ -12, %1 ], [ -12, %19 ]
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_net_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @remove_proc_subtree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs_fs_proc_net_exit(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 17
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @remove_proc_subtree(ptr noundef nonnull @.str.6, ptr noundef %3) #12
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @nfs_fs_proc_init() local_unnamed_addr #7 section ".init.text" {
  %1 = tail call ptr @proc_mkdir(ptr noundef nonnull @.str.9, ptr noundef null) #12
  %2 = icmp eq ptr %1, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %0
  %4 = tail call ptr @proc_symlink(ptr noundef nonnull @.str.10, ptr noundef null, ptr noundef nonnull @.str.11) #12
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = tail call ptr @proc_symlink(ptr noundef nonnull @.str.12, ptr noundef null, ptr noundef nonnull @.str.13) #12
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %6, %3
  %10 = tail call i32 @remove_proc_subtree(ptr noundef nonnull @.str.9, ptr noundef null) #12
  br label %11

11:                                               ; preds = %9, %6, %0
  %12 = phi i32 [ 0, %6 ], [ -12, %0 ], [ -12, %9 ]
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_mkdir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_symlink(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs_fs_proc_exit() local_unnamed_addr #0 {
  %1 = tail call i32 @remove_proc_subtree(ptr noundef nonnull @.str.9, ptr noundef null) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rpc_clnt_xprt_switch_has_addr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ipv6_addr_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_fattr_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpc_max_payload(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_setbufsize(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_cred(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nlmclnt_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs_destroy_server(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @nlmclnt_done(ptr noundef nonnull %3) #12
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nlmclnt_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @_proc_mkdir(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @nfs_server_list_start(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load i32, ptr @nfs_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !12
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 37), align 64
  %5 = getelementptr [0 x ptr], ptr %4, i32 0, i32 %3
  %6 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !13
  %7 = getelementptr inbounds %struct.nfs_net, ptr %6, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %7) #12
  %8 = getelementptr inbounds %struct.nfs_net, ptr %6, i32 0, i32 5
  %9 = load i64, ptr %1, align 8
  %10 = tail call ptr @seq_list_start_head(ptr noundef %8, i64 noundef %9) #12
  ret ptr %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs_server_list_stop(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #0 {
  %3 = load i32, ptr @nfs_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !12
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 37), align 64
  %5 = getelementptr [0 x ptr], ptr %4, i32 0, i32 %3
  %6 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !13
  %7 = getelementptr inbounds %struct.nfs_net, ptr %6, i32 0, i32 12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !8
  %8 = load i16, ptr %7, align 4
  %9 = add i16 %8, 1
  store i16 %9, ptr %7, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @nfs_server_list_next(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load i32, ptr @nfs_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !12
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 37), align 64
  %6 = getelementptr [0 x ptr], ptr %5, i32 0, i32 %4
  %7 = load ptr, ptr %6, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !13
  %8 = getelementptr inbounds %struct.nfs_net, ptr %7, i32 0, i32 5
  %9 = tail call ptr @seq_list_next(ptr noundef %1, ptr noundef %8, ptr noundef %2) #12
  ret ptr %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs_server_list_show(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load i32, ptr @nfs_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !12
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 37), align 64
  %5 = getelementptr [0 x ptr], ptr %4, i32 0, i32 %3
  %6 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !13
  %7 = getelementptr inbounds %struct.nfs_net, ptr %6, i32 0, i32 5
  %8 = icmp eq ptr %7, %1
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.15) #12
  br label %27

10:                                               ; preds = %2
  %11 = getelementptr i8, ptr %1, i32 -152
  %12 = load i32, ptr %11, align 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %10
  %15 = getelementptr i8, ptr %1, i32 -160
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !12
  %16 = getelementptr i8, ptr %1, i32 20
  %17 = load ptr, ptr %16, align 4
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr i8, ptr %1, i32 16
  %20 = load ptr, ptr %19, align 8
  %21 = tail call ptr @rpc_peeraddr2str(ptr noundef %20, i32 noundef 3) #12
  %22 = load ptr, ptr %19, align 8
  %23 = tail call ptr @rpc_peeraddr2str(ptr noundef %22, i32 noundef 4) #12
  %24 = load volatile i32, ptr %15, align 4
  %25 = getelementptr i8, ptr %1, i32 -8
  %26 = load ptr, ptr %25, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.16, i32 noundef %18, ptr noundef %21, ptr noundef %23, i32 noundef %24, ptr noundef %26) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !13
  br label %27

27:                                               ; preds = %14, %10, %9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @seq_list_start_head(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @seq_list_next(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rpc_peeraddr2str(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @nfs_volume_list_start(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load i32, ptr @nfs_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !12
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 37), align 64
  %5 = getelementptr [0 x ptr], ptr %4, i32 0, i32 %3
  %6 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !13
  %7 = getelementptr inbounds %struct.nfs_net, ptr %6, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %7) #12
  %8 = getelementptr inbounds %struct.nfs_net, ptr %6, i32 0, i32 6
  %9 = load i64, ptr %1, align 8
  %10 = tail call ptr @seq_list_start_head(ptr noundef %8, i64 noundef %9) #12
  ret ptr %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs_volume_list_stop(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #0 {
  %3 = load i32, ptr @nfs_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !12
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 37), align 64
  %5 = getelementptr [0 x ptr], ptr %4, i32 0, i32 %3
  %6 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !13
  %7 = getelementptr inbounds %struct.nfs_net, ptr %6, i32 0, i32 12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !8
  %8 = load i16, ptr %7, align 4
  %9 = add i16 %8, 1
  store i16 %9, ptr %7, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @nfs_volume_list_next(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load i32, ptr @nfs_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !12
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 37), align 64
  %6 = getelementptr [0 x ptr], ptr %5, i32 0, i32 %4
  %7 = load ptr, ptr %6, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !13
  %8 = getelementptr inbounds %struct.nfs_net, ptr %7, i32 0, i32 6
  %9 = tail call ptr @seq_list_next(ptr noundef %1, ptr noundef %8, ptr noundef %2) #12
  ret ptr %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs_volume_list_show(ptr noundef %0, ptr noundef readonly %1) #0 {
  %3 = alloca [13 x i8], align 1
  %4 = alloca [34 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 13, ptr nonnull %3) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(13) %3, i8 0, i32 13, i1 false), !annotation !16
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(34) %4, i8 0, i32 34, i1 false), !annotation !16
  %5 = load i32, ptr @nfs_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !12
  %6 = load volatile ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 37), align 64
  %7 = getelementptr [0 x ptr], ptr %6, i32 0, i32 %5
  %8 = load ptr, ptr %7, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !13
  %9 = getelementptr inbounds %struct.nfs_net, ptr %8, i32 0, i32 6
  %10 = icmp eq ptr %9, %1
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.17) #12
  br label %33

12:                                               ; preds = %2
  %13 = getelementptr i8, ptr %1, i32 -12
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr i8, ptr %1, i32 164
  %16 = load i32, ptr %15, align 8
  %17 = lshr i32 %16, 20
  %18 = and i32 %16, 1048575
  %19 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 13, ptr noundef nonnull @.str.18, i32 noundef %17, i32 noundef %18)
  %20 = getelementptr i8, ptr %1, i32 116
  %21 = load i64, ptr %20, align 8
  %22 = getelementptr i8, ptr %1, i32 124
  %23 = load i64, ptr %22, align 8
  %24 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 34, ptr noundef nonnull @.str.19, i64 noundef %21, i64 noundef %23)
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !12
  %25 = getelementptr inbounds %struct.nfs_client, ptr %14, i32 0, i32 12
  %26 = load ptr, ptr %25, align 4
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.nfs_client, ptr %14, i32 0, i32 11
  %29 = load ptr, ptr %28, align 8
  %30 = tail call ptr @rpc_peeraddr2str(ptr noundef %29, i32 noundef 3) #12
  %31 = load ptr, ptr %28, align 8
  %32 = tail call ptr @rpc_peeraddr2str(ptr noundef %31, i32 noundef 4) #12
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.20, i32 noundef %27, ptr noundef %30, ptr noundef %32, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull @.str.21) #12
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !13
  br label %33

33:                                               ; preds = %12, %11
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %3) #12
  ret i32 0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind allocsize(0) }

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
!8 = !{i64 2148959988}
!9 = !{i64 2148955812}
!10 = !{i64 2148955887, i64 2148955914, i64 2148955961, i64 2148955983, i64 2148956011, i64 2148956031}
!11 = !{i64 2148982991}
!12 = !{i64 2149078343}
!13 = !{i64 2149078560}
!14 = !{!"branch_weights", i32 1, i32 2000}
!15 = !{!"branch_weights", i32 2000, i32 1}
!16 = !{!"auto-init"}
!17 = !{i64 575463, i64 2148065434, i64 2148065460, i64 2148065507, i64 2148065529, i64 2148065557, i64 2148065577}
!18 = !{i64 2148078307, i64 2148078339, i64 2148078368, i64 2148078402, i64 2148078433, i64 2148078456}
!19 = !{i64 2156449036}
!20 = !{i64 2156450876}
!21 = !{i64 2156452849, i64 2156453329, i64 2156452886, i64 2156452942, i64 2156452976, i64 2156453000, i64 2156453041, i64 2156453062, i64 2156453090, i64 2156453124}
!22 = !{i32 0, i32 33}
!23 = !{i64 2150505289}
!24 = !{i64 2148177528}
!25 = !{i64 2148079890, i64 2148079922, i64 2148079951, i64 2148079985, i64 2148080016, i64 2148080039}
!26 = !{i64 2148177731}
!27 = !{i64 2148076849, i64 2148076875, i64 2148076904, i64 2148076938, i64 2148076969, i64 2148076992}
