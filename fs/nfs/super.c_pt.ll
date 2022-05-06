; ModuleID = '/llk/IR/fs/nfs/super.c_pt.bc'
source_filename = "../fs/nfs/super.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs_sops:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs_sops\22\09\09\09\09\09"
module asm "__kstrtabns_nfs_sops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs_sb_active:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs_sb_active\22\09\09\09\09\09"
module asm "__kstrtabns_nfs_sb_active:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs_sb_deactive:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs_sb_deactive\22\09\09\09\09\09"
module asm "__kstrtabns_nfs_sb_deactive:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs_client_for_each_server:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs_client_for_each_server\22\09\09\09\09\09"
module asm "__kstrtabns_nfs_client_for_each_server:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs_statfs:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs_statfs\22\09\09\09\09\09"
module asm "__kstrtabns_nfs_statfs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs_show_options:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs_show_options\22\09\09\09\09\09"
module asm "__kstrtabns_nfs_show_options:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs_show_devname:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs_show_devname\22\09\09\09\09\09"
module asm "__kstrtabns_nfs_show_devname:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs_show_path:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs_show_path\22\09\09\09\09\09"
module asm "__kstrtabns_nfs_show_path:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs_show_stats:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs_show_stats\22\09\09\09\09\09"
module asm "__kstrtabns_nfs_show_stats:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs_umount_begin:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs_umount_begin\22\09\09\09\09\09"
module asm "__kstrtabns_nfs_umount_begin:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs_auth_info_match:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs_auth_info_match\22\09\09\09\09\09"
module asm "__kstrtabns_nfs_auth_info_match:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs_try_get_tree:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs_try_get_tree\22\09\09\09\09\09"
module asm "__kstrtabns_nfs_try_get_tree:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs_reconfigure:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs_reconfigure\22\09\09\09\09\09"
module asm "__kstrtabns_nfs_reconfigure:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs_kill_super:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs_kill_super\22\09\09\09\09\09"
module asm "__kstrtabns_nfs_kill_super:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs_callback_nr_threads:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs_callback_nr_threads\22\09\09\09\09\09"
module asm "__kstrtabns_nfs_callback_nr_threads:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs_callback_set_tcpport:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs_callback_set_tcpport\22\09\09\09\09\09"
module asm "__kstrtabns_nfs_callback_set_tcpport:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs_idmap_cache_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs_idmap_cache_timeout\22\09\09\09\09\09"
module asm "__kstrtabns_nfs_idmap_cache_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs4_disable_idmapping:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs4_disable_idmapping\22\09\09\09\09\09"
module asm "__kstrtabns_nfs4_disable_idmapping:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_max_session_slots:\09\09\09\09\09"
module asm "\09.asciz \09\22max_session_slots\22\09\09\09\09\09"
module asm "__kstrtabns_max_session_slots:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_max_session_cb_slots:\09\09\09\09\09"
module asm "\09.asciz \09\22max_session_cb_slots\22\09\09\09\09\09"
module asm "__kstrtabns_max_session_cb_slots:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_send_implementation_id:\09\09\09\09\09"
module asm "\09.asciz \09\22send_implementation_id\22\09\09\09\09\09"
module asm "__kstrtabns_send_implementation_id:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs4_client_id_uniquifier:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs4_client_id_uniquifier\22\09\09\09\09\09"
module asm "__kstrtabns_nfs4_client_id_uniquifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_recover_lost_locks:\09\09\09\09\09"
module asm "\09.asciz \09\22recover_lost_locks\22\09\09\09\09\09"
module asm "__kstrtabns_recover_lost_locks:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type {}
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.83 }
%union.anon.83 = type { ptr }
%struct.kparam_string = type { i32, ptr }
%struct.nfs_ssc_client_ops = type { ptr }
%struct.anon.164 = type { i32, ptr }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [14 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.20 }
%union.anon.20 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.atomic_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.4 }
%union.anon.4 = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.30, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.30 = type { %struct.anon.31 }
%struct.anon.31 = type { ptr, i32, i32, i32 }
%struct.rb_root = type { ptr }
%struct.export_operations = type opaque
%struct.nfs_fsstat = type { ptr, i64, i64, i64, i64, i64, i64 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.151, %struct.list_head, %struct.list_head, %union.anon.152 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.0, ptr }
%union.anon.0 = type { i64 }
%struct.lockref = type { %union.anon.1 }
%union.anon.1 = type { i64 }
%union.anon.151 = type { %struct.list_head }
%union.anon.152 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.list_lru = type { ptr }
%struct.callback_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.nfs_client = type { %struct.refcount_struct, %struct.atomic_t, i32, i32, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32, i32, i32, ptr, %struct.list_head, i64, %struct.nfs4_verifier, i32, %struct.spinlock, i32, i32, %struct.delayed_work, %struct.rpc_wait_queue, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i8, ptr, ptr, ptr, i32, %struct.wait_queue_head, [48 x i8], ptr, %struct.list_head }
%struct.__kernel_sockaddr_storage = type { %union.anon.85 }
%union.anon.85 = type { ptr, [124 x i8] }
%struct.nfs4_verifier = type { [8 x i8] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.rpc_wait_queue = type { %struct.spinlock, [4 x %struct.list_head], i8, i8, i8, i16, %struct.rpc_timer, ptr }
%struct.rpc_timer = type { %struct.list_head, i32, %struct.delayed_work }
%struct.nfs_rpc_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kstatfs = type { i32, i32, i64, i64, i64, i64, i64, %struct.__kernel_fsid_t, i32, i32, i32, [4 x i32] }
%struct.__kernel_fsid_t = type { [2 x i32] }
%struct.nfs_server = type { ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.nfs_fsid, i64, %struct.timespec64, i32, ptr, i32, %struct.nfs_auth_info, i32, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, i32, ptr, %struct.rpc_wait_queue, ptr, %struct.rb_root, %struct.ida, %struct.ida, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, ptr, %struct.atomic_t, %struct.__kernel_sockaddr_storage, i32, i32, i16, i16, %struct.rpc_wait_queue, i32, ptr, i8 }
%struct.nfs_fsid = type { i64, i64 }
%struct.timespec64 = type { i64, i32 }
%struct.nfs_auth_info = type { i32, [12 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.nfs_iostats = type { [8 x i64], [27 x i32], [20 x i8] }
%struct.rpc_clnt = type { %struct.refcount_struct, i32, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.spinlock, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i8, ptr, ptr, %struct.atomic_t, i32, [65 x i8], %struct.rpc_pipe_dir_head, ptr, %struct.rpc_rtt, %struct.rpc_timeout, ptr, ptr, ptr, %union.anon.138, ptr, i32 }
%struct.rpc_pipe_dir_head = type { %struct.list_head, ptr }
%struct.rpc_rtt = type { i32, [5 x i32], [5 x i32], [5 x i32] }
%struct.rpc_timeout = type { i32, i32, i32, i32, i8 }
%union.anon.138 = type { %struct.work_struct }
%struct.nfs41_impl_id = type { [1025 x i8], [1025 x i8], %struct.nfstime4 }
%struct.nfstime4 = type { i64, i32 }
%struct.pnfs_layoutdriver_type = type { %struct.list_head, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rpc_auth = type { i32, i32, i32, i32, i32, ptr, i32, %struct.refcount_struct, ptr }
%struct.rpc_authops = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nfs_mount_request = type { ptr, i32, ptr, ptr, i32, i16, ptr, i32, ptr, ptr, ptr }
%struct.rpcsec_gss_info = type { %struct.rpcsec_gss_oid, i32, i32 }
%struct.rpcsec_gss_oid = type { i32, [32 x i8] }
%struct.fs_context = type { ptr, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.p_log, ptr, ptr, ptr, i32, i32, i32, i32, i24 }
%struct.p_log = type { ptr, ptr }
%struct.nfs_fs_context = type { i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.nfs_auth_info, i32, ptr, i32, i32, ptr, i16, i16, i8, %struct.anon.157, %struct.anon.159, ptr, ptr, ptr, %struct.nfs_clone_mount }
%struct.anon.157 = type { %union.anon.158, i32, ptr, i32, i32, i16 }
%union.anon.158 = type { %struct.__kernel_sockaddr_storage }
%struct.anon.159 = type { %union.anon.160, i32, ptr, ptr, i32, i16, i16, i16, i16 }
%union.anon.160 = type { %struct.__kernel_sockaddr_storage }
%struct.nfs_clone_mount = type { ptr, ptr, ptr, i32 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.68 }
%union.anon.68 = type { [4 x i32] }
%struct.nfs_subversion = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.backing_dev_info = type { i64, %struct.rb_node, %struct.list_head, i32, i32, %struct.kref, i32, i32, i32, i32, %struct.atomic_t, %struct.bdi_writeback, %struct.list_head, %struct.wait_queue_head, ptr, [64 x i8], ptr, %struct.timer_list, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.bdi_writeback = type { ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.atomic_t, [4 x %struct.percpu_counter], i32, i32, i32, i32, i32, i32, i32, i32, %struct.fprop_local_percpu, i32, i32, %struct.spinlock, %struct.list_head, %struct.delayed_work, %struct.delayed_work, i32, %struct.list_head }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.fprop_local_percpu = type { %struct.percpu_counter, i32, %struct.raw_spinlock }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.80 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.80 = type { %struct.callback_head }

@nfs_sops = dso_local constant %struct.super_operations { ptr @nfs_alloc_inode, ptr null, ptr @nfs_free_inode, ptr null, ptr @nfs_write_inode, ptr @nfs_drop_inode, ptr @nfs_evict_inode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nfs_statfs, ptr null, ptr @nfs_umount_begin, ptr @nfs_show_options, ptr @nfs_show_devname, ptr @nfs_show_path, ptr @nfs_show_stats, ptr null, ptr null }, align 4
@__kstrtab_nfs_sops = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs_sops = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs_sops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs_sops to i32), ptr @__kstrtab_nfs_sops, ptr @__kstrtabns_nfs_sops }, section "___ksymtab_gpl+nfs_sops", align 4
@nfs_fs_type = external dso_local global %struct.file_system_type, align 4
@acl_shrinker = internal global %struct.shrinker { ptr @nfs_access_cache_count, ptr @nfs_access_cache_scan, i32 0, i32 2, i32 0, %struct.list_head zeroinitializer, ptr null }, align 4
@__kstrtab_nfs_sb_active = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs_sb_active = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs_sb_active = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs_sb_active to i32), ptr @__kstrtab_nfs_sb_active, ptr @__kstrtabns_nfs_sb_active }, section "___ksymtab_gpl+nfs_sb_active", align 4
@__kstrtab_nfs_sb_deactive = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs_sb_deactive = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs_sb_deactive = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs_sb_deactive to i32), ptr @__kstrtab_nfs_sb_deactive, ptr @__kstrtabns_nfs_sb_deactive }, section "___ksymtab_gpl+nfs_sb_deactive", align 4
@__kstrtab_nfs_client_for_each_server = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs_client_for_each_server = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs_client_for_each_server = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs_client_for_each_server to i32), ptr @__kstrtab_nfs_client_for_each_server, ptr @__kstrtabns_nfs_client_for_each_server }, section "___ksymtab_gpl+nfs_client_for_each_server", align 4
@__kstrtab_nfs_statfs = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs_statfs = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs_statfs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs_statfs to i32), ptr @__kstrtab_nfs_statfs, ptr @__kstrtabns_nfs_statfs }, section "___ksymtab_gpl+nfs_statfs", align 4
@.str = private unnamed_addr constant [9 x i8] c",addr=%s\00", align 1
@__kstrtab_nfs_show_options = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs_show_options = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs_show_options = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs_show_options to i32), ptr @__kstrtab_nfs_show_options, ptr @__kstrtabns_nfs_show_options }, section "___ksymtab_gpl+nfs_show_options", align 4
@.str.1 = private unnamed_addr constant [5 x i8] c" \09\0A\\\00", align 1
@__kstrtab_nfs_show_devname = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs_show_devname = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs_show_devname = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs_show_devname to i32), ptr @__kstrtab_nfs_show_devname, ptr @__kstrtabns_nfs_show_devname }, section "___ksymtab_gpl+nfs_show_devname", align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@__kstrtab_nfs_show_path = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs_show_path = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs_show_path = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs_show_path to i32), ptr @__kstrtab_nfs_show_path, ptr @__kstrtabns_nfs_show_path }, section "___ksymtab_gpl+nfs_show_path", align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"statvers=%s\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"1.1\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"\0A\09opts:\09\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"ro\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"rw\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c",sync\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [9 x i8] c",noatime\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c",nodiratime\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"\0A\09age:\09%lu\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.13 = private unnamed_addr constant [9 x i8] c"\0A\09caps:\09\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"caps=0x%x\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c",wtmult=%u\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c",dtsize=%u\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c",bsize=%u\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c",namlen=%u\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"\0A\09nfsv4:\09\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"bm0=0x%x\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c",bm1=0x%x\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c",bm2=0x%x\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c",acl=0x%x\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"\0A\09sec:\09flavor=%u\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c",pseudoflavor=%u\00", align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@.str.26 = private unnamed_addr constant [11 x i8] c"\0A\09events:\09\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"%lu \00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"\0A\09bytes:\09\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"%Lu \00", align 1
@__kstrtab_nfs_show_stats = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs_show_stats = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs_show_stats = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs_show_stats to i32), ptr @__kstrtab_nfs_show_stats, ptr @__kstrtabns_nfs_show_stats }, section "___ksymtab_gpl+nfs_show_stats", align 4
@__kstrtab_nfs_umount_begin = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs_umount_begin = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs_umount_begin = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs_umount_begin to i32), ptr @__kstrtab_nfs_umount_begin, ptr @__kstrtabns_nfs_umount_begin }, section "___ksymtab_gpl+nfs_umount_begin", align 4
@__kstrtab_nfs_auth_info_match = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs_auth_info_match = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs_auth_info_match = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs_auth_info_match to i32), ptr @__kstrtab_nfs_auth_info_match, ptr @__kstrtabns_nfs_auth_info_match }, section "___ksymtab_gpl+nfs_auth_info_match", align 4
@__kstrtab_nfs_try_get_tree = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs_try_get_tree = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs_try_get_tree = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs_try_get_tree to i32), ptr @__kstrtab_nfs_try_get_tree, ptr @__kstrtabns_nfs_try_get_tree }, section "___ksymtab_gpl+nfs_try_get_tree", align 4
@__kstrtab_nfs_reconfigure = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs_reconfigure = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs_reconfigure = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs_reconfigure to i32), ptr @__kstrtab_nfs_reconfigure, ptr @__kstrtabns_nfs_reconfigure }, section "___ksymtab_gpl+nfs_reconfigure", align 4
@.str.30 = private unnamed_addr constant [29 x i8] c"NFS: Couldn't get superblock\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"%u:%u\00", align 1
@.str.32 = private unnamed_addr constant [30 x i8] c"NFS: Couldn't get root dentry\00", align 1
@__kstrtab_nfs_kill_super = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs_kill_super = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs_kill_super = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs_kill_super to i32), ptr @__kstrtab_nfs_kill_super, ptr @__kstrtabns_nfs_kill_super }, section "___ksymtab_gpl+nfs_kill_super", align 4
@nfs_idmap_cache_timeout = dso_local global i32 600, align 4
@nfs4_disable_idmapping = dso_local global i8 1, align 1
@max_session_slots = dso_local global i16 64, align 2
@max_session_cb_slots = dso_local global i16 16, align 2
@send_implementation_id = dso_local global i16 1, align 2
@nfs4_client_id_uniquifier = dso_local global [64 x i8] zeroinitializer, align 1
@recover_lost_locks = dso_local global i8 0, align 1
@nfs_callback_nr_threads = dso_local global i16 0, align 2
@__kstrtab_nfs_callback_nr_threads = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs_callback_nr_threads = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs_callback_nr_threads = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs_callback_nr_threads to i32), ptr @__kstrtab_nfs_callback_nr_threads, ptr @__kstrtabns_nfs_callback_nr_threads }, section "___ksymtab_gpl+nfs_callback_nr_threads", align 4
@nfs_callback_set_tcpport = dso_local global i32 0, align 4
@__kstrtab_nfs_callback_set_tcpport = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs_callback_set_tcpport = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs_callback_set_tcpport = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs_callback_set_tcpport to i32), ptr @__kstrtab_nfs_callback_set_tcpport, ptr @__kstrtabns_nfs_callback_set_tcpport }, section "___ksymtab_gpl+nfs_callback_set_tcpport", align 4
@__kstrtab_nfs_idmap_cache_timeout = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs_idmap_cache_timeout = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs_idmap_cache_timeout = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs_idmap_cache_timeout to i32), ptr @__kstrtab_nfs_idmap_cache_timeout, ptr @__kstrtabns_nfs_idmap_cache_timeout }, section "___ksymtab_gpl+nfs_idmap_cache_timeout", align 4
@__kstrtab_nfs4_disable_idmapping = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs4_disable_idmapping = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs4_disable_idmapping = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs4_disable_idmapping to i32), ptr @__kstrtab_nfs4_disable_idmapping, ptr @__kstrtabns_nfs4_disable_idmapping }, section "___ksymtab_gpl+nfs4_disable_idmapping", align 4
@__kstrtab_max_session_slots = external dso_local constant [0 x i8], align 1
@__kstrtabns_max_session_slots = external dso_local constant [0 x i8], align 1
@__ksymtab_max_session_slots = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @max_session_slots to i32), ptr @__kstrtab_max_session_slots, ptr @__kstrtabns_max_session_slots }, section "___ksymtab_gpl+max_session_slots", align 4
@__kstrtab_max_session_cb_slots = external dso_local constant [0 x i8], align 1
@__kstrtabns_max_session_cb_slots = external dso_local constant [0 x i8], align 1
@__ksymtab_max_session_cb_slots = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @max_session_cb_slots to i32), ptr @__kstrtab_max_session_cb_slots, ptr @__kstrtabns_max_session_cb_slots }, section "___ksymtab_gpl+max_session_cb_slots", align 4
@__kstrtab_send_implementation_id = external dso_local constant [0 x i8], align 1
@__kstrtabns_send_implementation_id = external dso_local constant [0 x i8], align 1
@__ksymtab_send_implementation_id = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @send_implementation_id to i32), ptr @__kstrtab_send_implementation_id, ptr @__kstrtabns_send_implementation_id }, section "___ksymtab_gpl+send_implementation_id", align 4
@__kstrtab_nfs4_client_id_uniquifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs4_client_id_uniquifier = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs4_client_id_uniquifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs4_client_id_uniquifier to i32), ptr @__kstrtab_nfs4_client_id_uniquifier, ptr @__kstrtabns_nfs4_client_id_uniquifier }, section "___ksymtab_gpl+nfs4_client_id_uniquifier", align 4
@__kstrtab_recover_lost_locks = external dso_local constant [0 x i8], align 1
@__kstrtabns_recover_lost_locks = external dso_local constant [0 x i8], align 1
@__ksymtab_recover_lost_locks = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @recover_lost_locks to i32), ptr @__kstrtab_recover_lost_locks, ptr @__kstrtabns_recover_lost_locks }, section "___ksymtab_gpl+recover_lost_locks", align 4
@__param_str_callback_tcpport = internal constant [21 x i8] c"nfs.callback_tcpport\00", align 1
@param_ops_portnr = internal constant %struct.kernel_param_ops { i32 0, ptr @param_set_portnr, ptr @param_get_uint, ptr null }, align 4
@__param_callback_tcpport = internal constant %struct.kernel_param { ptr @__param_str_callback_tcpport, ptr null, ptr @param_ops_portnr, i16 420, i8 -1, i8 0, %union.anon.83 { ptr @nfs_callback_set_tcpport } }, section "__param", align 4
@__UNIQUE_ID_callback_tcpporttype452 = internal constant [37 x i8] c"nfs.parmtype=callback_tcpport:portnr\00", section ".modinfo", align 1
@__param_str_callback_nr_threads = internal constant [24 x i8] c"nfs.callback_nr_threads\00", align 1
@param_ops_ushort = external dso_local constant %struct.kernel_param_ops, align 4
@__param_callback_nr_threads = internal constant %struct.kernel_param { ptr @__param_str_callback_nr_threads, ptr null, ptr @param_ops_ushort, i16 420, i8 -1, i8 0, %union.anon.83 { ptr @nfs_callback_nr_threads } }, section "__param", align 4
@__UNIQUE_ID_callback_nr_threadstype453 = internal constant [40 x i8] c"nfs.parmtype=callback_nr_threads:ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_callback_nr_threads454 = internal constant [101 x i8] c"nfs.parm=callback_nr_threads:Number of threads that will be assigned to the NFSv4 callback channels.\00", section ".modinfo", align 1
@__param_str_nfs_idmap_cache_timeout = internal constant [28 x i8] c"nfs.nfs_idmap_cache_timeout\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@__param_nfs_idmap_cache_timeout = internal constant %struct.kernel_param { ptr @__param_str_nfs_idmap_cache_timeout, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.83 { ptr @nfs_idmap_cache_timeout } }, section "__param", align 4
@__UNIQUE_ID_nfs_idmap_cache_timeouttype455 = internal constant [41 x i8] c"nfs.parmtype=nfs_idmap_cache_timeout:int\00", section ".modinfo", align 1
@__param_str_nfs4_disable_idmapping = internal constant [27 x i8] c"nfs.nfs4_disable_idmapping\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@__param_nfs4_disable_idmapping = internal constant %struct.kernel_param { ptr @__param_str_nfs4_disable_idmapping, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.83 { ptr @nfs4_disable_idmapping } }, section "__param", align 4
@__UNIQUE_ID_nfs4_disable_idmappingtype456 = internal constant [41 x i8] c"nfs.parmtype=nfs4_disable_idmapping:bool\00", section ".modinfo", align 1
@__param_str_nfs4_unique_id = internal constant [19 x i8] c"nfs.nfs4_unique_id\00", align 1
@param_ops_string = external dso_local constant %struct.kernel_param_ops, align 4
@__param_string_nfs4_unique_id = internal constant %struct.kparam_string { i32 64, ptr @nfs4_client_id_uniquifier }, align 4
@__param_nfs4_unique_id = internal constant %struct.kernel_param { ptr @__param_str_nfs4_unique_id, ptr null, ptr @param_ops_string, i16 384, i8 -1, i8 0, %union.anon.83 { ptr @__param_string_nfs4_unique_id } }, section "__param", align 4
@__UNIQUE_ID_nfs4_unique_idtype457 = internal constant [35 x i8] c"nfs.parmtype=nfs4_unique_id:string\00", section ".modinfo", align 1
@__UNIQUE_ID_nfs4_disable_idmapping458 = internal constant [78 x i8] c"nfs.parm=nfs4_disable_idmapping:Turn off NFSv4 idmapping when using 'sec=sys'\00", section ".modinfo", align 1
@__param_str_max_session_slots = internal constant [22 x i8] c"nfs.max_session_slots\00", align 1
@__param_max_session_slots = internal constant %struct.kernel_param { ptr @__param_str_max_session_slots, ptr null, ptr @param_ops_ushort, i16 420, i8 -1, i8 0, %union.anon.83 { ptr @max_session_slots } }, section "__param", align 4
@__UNIQUE_ID_max_session_slotstype459 = internal constant [38 x i8] c"nfs.parmtype=max_session_slots:ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_max_session_slots460 = internal constant [100 x i8] c"nfs.parm=max_session_slots:Maximum number of outstanding NFSv4.1 requests the client will negotiate\00", section ".modinfo", align 1
@__param_str_max_session_cb_slots = internal constant [25 x i8] c"nfs.max_session_cb_slots\00", align 1
@__param_max_session_cb_slots = internal constant %struct.kernel_param { ptr @__param_str_max_session_cb_slots, ptr null, ptr @param_ops_ushort, i16 420, i8 -1, i8 0, %union.anon.83 { ptr @max_session_cb_slots } }, section "__param", align 4
@__UNIQUE_ID_max_session_cb_slotstype461 = internal constant [41 x i8] c"nfs.parmtype=max_session_cb_slots:ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_max_session_cb_slots462 = internal constant [118 x i8] c"nfs.parm=max_session_cb_slots:Maximum number of parallel NFSv4.1 callbacks the client will process for a given server\00", section ".modinfo", align 1
@__param_str_send_implementation_id = internal constant [27 x i8] c"nfs.send_implementation_id\00", align 1
@__param_send_implementation_id = internal constant %struct.kernel_param { ptr @__param_str_send_implementation_id, ptr null, ptr @param_ops_ushort, i16 420, i8 -1, i8 0, %union.anon.83 { ptr @send_implementation_id } }, section "__param", align 4
@__UNIQUE_ID_send_implementation_idtype463 = internal constant [43 x i8] c"nfs.parmtype=send_implementation_id:ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_send_implementation_id464 = internal constant [80 x i8] c"nfs.parm=send_implementation_id:Send implementation ID with NFSv4.1 exchange_id\00", section ".modinfo", align 1
@__UNIQUE_ID_nfs4_unique_id465 = internal constant [57 x i8] c"nfs.parm=nfs4_unique_id:nfs_client_id4 uniquifier string\00", section ".modinfo", align 1
@__param_str_recover_lost_locks = internal constant [23 x i8] c"nfs.recover_lost_locks\00", align 1
@__param_recover_lost_locks = internal constant %struct.kernel_param { ptr @__param_str_recover_lost_locks, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.83 { ptr @recover_lost_locks } }, section "__param", align 4
@__UNIQUE_ID_recover_lost_lockstype466 = internal constant [37 x i8] c"nfs.parmtype=recover_lost_locks:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_recover_lost_locks467 = internal constant [120 x i8] c"nfs.parm=recover_lost_locks:If the server reports that a lock might be lost, try to recover it risking data corruption.\00", section ".modinfo", align 1
@nfs4_fs_type = external dso_local global %struct.file_system_type, align 4
@nfs_ssc_clnt_ops_tbl = internal constant %struct.nfs_ssc_client_ops { ptr @nfs_sb_deactive }, align 4
@.str.33 = private unnamed_addr constant [6 x i8] c",soft\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c",softerr\00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c",softreval\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c",posix\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c",nocto\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c",noac\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c",nolock\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c",noacl\00", align 1
@.str.41 = private unnamed_addr constant [12 x i8] c",nordirplus\00", align 1
@.str.42 = private unnamed_addr constant [14 x i8] c",nosharecache\00", align 1
@.str.43 = private unnamed_addr constant [12 x i8] c",noresvport\00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c",rsize=%u\00", align 1
@.str.45 = private unnamed_addr constant [10 x i8] c",wsize=%u\00", align 1
@.str.46 = private unnamed_addr constant [13 x i8] c",acregmin=%u\00", align 1
@.str.47 = private unnamed_addr constant [13 x i8] c",acregmax=%u\00", align 1
@.str.48 = private unnamed_addr constant [13 x i8] c",acdirmin=%u\00", align 1
@.str.49 = private unnamed_addr constant [13 x i8] c",acdirmax=%u\00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c",hard\00", align 1
@.str.51 = private unnamed_addr constant [10 x i8] c",proto=%s\00", align 1
@.str.52 = private unnamed_addr constant [13 x i8] c",nconnect=%u\00", align 1
@.str.53 = private unnamed_addr constant [16 x i8] c",max_connect=%u\00", align 1
@.str.54 = private unnamed_addr constant [9 x i8] c",port=%u\00", align 1
@.str.55 = private unnamed_addr constant [11 x i8] c",timeo=%lu\00", align 1
@.str.56 = private unnamed_addr constant [12 x i8] c",retrans=%u\00", align 1
@.str.57 = private unnamed_addr constant [8 x i8] c",sec=%s\00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c",fsc\00", align 1
@.str.59 = private unnamed_addr constant [11 x i8] c",migration\00", align 1
@.str.60 = private unnamed_addr constant [18 x i8] c",lookupcache=none\00", align 1
@.str.61 = private unnamed_addr constant [17 x i8] c",lookupcache=pos\00", align 1
@.str.62 = private unnamed_addr constant [17 x i8] c",local_lock=none\00", align 1
@.str.63 = private unnamed_addr constant [16 x i8] c",local_lock=all\00", align 1
@.str.64 = private unnamed_addr constant [18 x i8] c",local_lock=flock\00", align 1
@.str.65 = private unnamed_addr constant [18 x i8] c",local_lock=posix\00", align 1
@.str.66 = private unnamed_addr constant [12 x i8] c",write=wait\00", align 1
@.str.67 = private unnamed_addr constant [13 x i8] c",write=eager\00", align 1
@.str.68 = private unnamed_addr constant [9 x i8] c",vers=%u\00", align 1
@.str.69 = private unnamed_addr constant [4 x i8] c".%u\00", align 1
@nfs_pseudoflavour_to_name.sec_flavours = internal unnamed_addr constant [12 x %struct.anon.164] [%struct.anon.164 { i32 0, ptr @.str.70 }, %struct.anon.164 { i32 1, ptr @.str.71 }, %struct.anon.164 { i32 390003, ptr @.str.72 }, %struct.anon.164 { i32 390004, ptr @.str.73 }, %struct.anon.164 { i32 390005, ptr @.str.74 }, %struct.anon.164 { i32 390006, ptr @.str.75 }, %struct.anon.164 { i32 390007, ptr @.str.76 }, %struct.anon.164 { i32 390008, ptr @.str.77 }, %struct.anon.164 { i32 390009, ptr @.str.78 }, %struct.anon.164 { i32 390010, ptr @.str.79 }, %struct.anon.164 { i32 390011, ptr @.str.80 }, %struct.anon.164 { i32 -1, ptr @.str.81 }], align 4
@.str.70 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.71 = private unnamed_addr constant [4 x i8] c"sys\00", align 1
@.str.72 = private unnamed_addr constant [5 x i8] c"krb5\00", align 1
@.str.73 = private unnamed_addr constant [6 x i8] c"krb5i\00", align 1
@.str.74 = private unnamed_addr constant [6 x i8] c"krb5p\00", align 1
@.str.75 = private unnamed_addr constant [5 x i8] c"lkey\00", align 1
@.str.76 = private unnamed_addr constant [6 x i8] c"lkeyi\00", align 1
@.str.77 = private unnamed_addr constant [6 x i8] c"lkeyp\00", align 1
@.str.78 = private unnamed_addr constant [5 x i8] c"spkm\00", align 1
@.str.79 = private unnamed_addr constant [6 x i8] c"spkmi\00", align 1
@.str.80 = private unnamed_addr constant [6 x i8] c"spkmp\00", align 1
@.str.81 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.82 = private unnamed_addr constant [16 x i8] c",mountaddr=%pI4\00", align 1
@.str.83 = private unnamed_addr constant [17 x i8] c",mountaddr=%pI6c\00", align 1
@.str.84 = private unnamed_addr constant [23 x i8] c",mountaddr=unspecified\00", align 1
@.str.85 = private unnamed_addr constant [14 x i8] c",mountvers=%u\00", align 1
@.str.86 = private unnamed_addr constant [14 x i8] c",mountport=%u\00", align 1
@.str.87 = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@.str.88 = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@.str.89 = private unnamed_addr constant [5 x i8] c"udp6\00", align 1
@.str.90 = private unnamed_addr constant [5 x i8] c"tcp6\00", align 1
@.str.91 = private unnamed_addr constant [15 x i8] c",mountproto=%s\00", align 1
@.str.92 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.93 = private unnamed_addr constant [15 x i8] c",clientaddr=%s\00", align 1
@.str.94 = private unnamed_addr constant [48 x i8] c"\0A\09impl_id:\09name='%s',domain='%s',date='%llu,%u'\00", align 1
@.str.95 = private unnamed_addr constant [10 x i8] c",sessions\00", align 1
@.str.96 = private unnamed_addr constant [7 x i8] c",pnfs=\00", align 1
@.str.97 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.98 = private unnamed_addr constant [15 x i8] c"not configured\00", align 1
@.str.99 = private unnamed_addr constant [16 x i8] c",lease_time=%ld\00", align 1
@.str.100 = private unnamed_addr constant [19 x i8] c",lease_expired=%ld\00", align 1
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@nfs_export_ops = external dso_local constant %struct.export_operations, align 1
@llvm.compiler.used = appending global [49 x ptr] [ptr @__UNIQUE_ID_callback_nr_threads454, ptr @__UNIQUE_ID_callback_nr_threadstype453, ptr @__UNIQUE_ID_callback_tcpporttype452, ptr @__UNIQUE_ID_max_session_cb_slots462, ptr @__UNIQUE_ID_max_session_cb_slotstype461, ptr @__UNIQUE_ID_max_session_slots460, ptr @__UNIQUE_ID_max_session_slotstype459, ptr @__UNIQUE_ID_nfs4_disable_idmapping458, ptr @__UNIQUE_ID_nfs4_disable_idmappingtype456, ptr @__UNIQUE_ID_nfs4_unique_id465, ptr @__UNIQUE_ID_nfs4_unique_idtype457, ptr @__UNIQUE_ID_nfs_idmap_cache_timeouttype455, ptr @__UNIQUE_ID_recover_lost_locks467, ptr @__UNIQUE_ID_recover_lost_lockstype466, ptr @__UNIQUE_ID_send_implementation_id464, ptr @__UNIQUE_ID_send_implementation_idtype463, ptr @__ksymtab_max_session_cb_slots, ptr @__ksymtab_max_session_slots, ptr @__ksymtab_nfs4_client_id_uniquifier, ptr @__ksymtab_nfs4_disable_idmapping, ptr @__ksymtab_nfs_auth_info_match, ptr @__ksymtab_nfs_callback_nr_threads, ptr @__ksymtab_nfs_callback_set_tcpport, ptr @__ksymtab_nfs_client_for_each_server, ptr @__ksymtab_nfs_idmap_cache_timeout, ptr @__ksymtab_nfs_kill_super, ptr @__ksymtab_nfs_reconfigure, ptr @__ksymtab_nfs_sb_active, ptr @__ksymtab_nfs_sb_deactive, ptr @__ksymtab_nfs_show_devname, ptr @__ksymtab_nfs_show_options, ptr @__ksymtab_nfs_show_path, ptr @__ksymtab_nfs_show_stats, ptr @__ksymtab_nfs_sops, ptr @__ksymtab_nfs_statfs, ptr @__ksymtab_nfs_try_get_tree, ptr @__ksymtab_nfs_umount_begin, ptr @__ksymtab_recover_lost_locks, ptr @__ksymtab_send_implementation_id, ptr @__param_callback_nr_threads, ptr @__param_callback_tcpport, ptr @__param_max_session_cb_slots, ptr @__param_max_session_slots, ptr @__param_nfs4_disable_idmapping, ptr @__param_nfs4_unique_id, ptr @__param_nfs_idmap_cache_timeout, ptr @__param_recover_lost_locks, ptr @__param_send_implementation_id, ptr @unregister_nfs_fs], section "llvm.metadata"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs_alloc_inode(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_free_inode(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_write_inode(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_drop_inode(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_evict_inode(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs_statfs(ptr noundef %0, ptr nocapture noundef writeonly %1) #1 {
  %3 = alloca %struct.nfs_fsstat, align 8
  %4 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 27
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5
  %9 = load ptr, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i32 56, i1 false), !annotation !8
  %10 = tail call ptr @nfs_alloc_fattr() #14
  store ptr %10, ptr %3, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %70, label %12

12:                                               ; preds = %2
  %13 = getelementptr i8, ptr %9, i32 -288
  %14 = load ptr, ptr %7, align 8
  %15 = getelementptr inbounds %struct.nfs_client, ptr %14, i32 0, i32 12
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.nfs_rpc_ops, ptr %16, i32 0, i32 29
  %18 = load ptr, ptr %17, align 4
  %19 = call i32 %18(ptr noundef %7, ptr noundef %13, ptr noundef nonnull %3) #14
  %20 = icmp eq i32 %19, -116
  br i1 %20, label %21, label %26, !prof !9

21:                                               ; preds = %12
  %22 = call ptr @dget_parent(ptr noundef %0) #14
  %23 = getelementptr inbounds %struct.dentry, ptr %22, i32 0, i32 5
  %24 = load ptr, ptr %23, align 8
  call void @nfs_zap_caches(ptr noundef %24) #14
  call void @dput(ptr noundef %22) #14
  %25 = load ptr, ptr %3, align 8
  call void @kfree(ptr noundef %25) #14
  br label %70

26:                                               ; preds = %12
  %27 = load ptr, ptr %3, align 8
  call void @kfree(ptr noundef %27) #14
  %28 = icmp slt i32 %19, 0
  br i1 %28, label %70, label %29

29:                                               ; preds = %26
  store i32 26985, ptr %1, align 8
  %30 = load ptr, ptr %4, align 4
  %31 = getelementptr inbounds %struct.super_block, ptr %30, i32 0, i32 3
  %32 = load i32, ptr %31, align 16
  %33 = getelementptr inbounds %struct.kstatfs, ptr %1, i32 0, i32 9
  store i32 %32, ptr %33, align 4
  %34 = load ptr, ptr %4, align 4
  %35 = getelementptr inbounds %struct.super_block, ptr %34, i32 0, i32 3
  %36 = load i32, ptr %35, align 16
  %37 = getelementptr inbounds %struct.kstatfs, ptr %1, i32 0, i32 1
  store i32 %36, ptr %37, align 4
  %38 = load ptr, ptr %4, align 4
  %39 = getelementptr inbounds %struct.super_block, ptr %38, i32 0, i32 2
  %40 = load i8, ptr %39, align 4
  %41 = zext i8 %40 to i32
  %42 = shl nsw i32 -1, %41
  %43 = xor i32 %42, -1
  %44 = getelementptr inbounds %struct.nfs_fsstat, ptr %3, i32 0, i32 1
  %45 = load i64, ptr %44, align 8
  %46 = zext i32 %43 to i64
  %47 = add i64 %45, %46
  %48 = zext i8 %40 to i64
  %49 = lshr i64 %47, %48
  %50 = getelementptr inbounds %struct.kstatfs, ptr %1, i32 0, i32 2
  store i64 %49, ptr %50, align 8
  %51 = getelementptr inbounds %struct.nfs_fsstat, ptr %3, i32 0, i32 2
  %52 = load i64, ptr %51, align 8
  %53 = add i64 %52, %46
  %54 = lshr i64 %53, %48
  %55 = getelementptr inbounds %struct.kstatfs, ptr %1, i32 0, i32 3
  store i64 %54, ptr %55, align 8
  %56 = getelementptr inbounds %struct.nfs_fsstat, ptr %3, i32 0, i32 3
  %57 = load i64, ptr %56, align 8
  %58 = add i64 %57, %46
  %59 = lshr i64 %58, %48
  %60 = getelementptr inbounds %struct.kstatfs, ptr %1, i32 0, i32 4
  store i64 %59, ptr %60, align 8
  %61 = getelementptr inbounds %struct.nfs_fsstat, ptr %3, i32 0, i32 4
  %62 = load i64, ptr %61, align 8
  %63 = getelementptr inbounds %struct.kstatfs, ptr %1, i32 0, i32 5
  store i64 %62, ptr %63, align 8
  %64 = getelementptr inbounds %struct.nfs_fsstat, ptr %3, i32 0, i32 6
  %65 = load i64, ptr %64, align 8
  %66 = getelementptr inbounds %struct.kstatfs, ptr %1, i32 0, i32 6
  store i64 %65, ptr %66, align 8
  %67 = getelementptr inbounds %struct.nfs_server, ptr %7, i32 0, i32 26
  %68 = load i32, ptr %67, align 8
  %69 = getelementptr inbounds %struct.kstatfs, ptr %1, i32 0, i32 8
  store i32 %68, ptr %69, align 8
  br label %70

70:                                               ; preds = %29, %26, %21, %2
  %71 = phi i32 [ 0, %29 ], [ -12, %2 ], [ %19, %26 ], [ -116, %21 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #14
  ret i32 %71
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs_umount_begin(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nfs_server, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 8
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void @rpc_killall_tasks(ptr noundef %5) #14
  br label %8

8:                                                ; preds = %7, %1
  %9 = getelementptr inbounds %struct.nfs_server, ptr %3, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @rpc_killall_tasks(ptr noundef %10) #14
  br label %13

13:                                               ; preds = %12, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs_show_options(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 9
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 27
  %6 = load ptr, ptr %5, align 4
  tail call fastcc void @nfs_show_mount_options(ptr noundef %0, ptr noundef %6, i32 noundef 0)
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !10
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.nfs_client, ptr %7, i32 0, i32 11
  %9 = load ptr, ptr %8, align 8
  %10 = tail call ptr @rpc_peeraddr2str(ptr noundef %9, i32 noundef 0) #14
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef %10) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs_show_devname(ptr noundef %0, ptr noundef %1) #1 {
  %3 = alloca ptr, align 4
  %4 = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  store ptr null, ptr %3, align 4, !annotation !8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %16, label %6

6:                                                ; preds = %2
  %7 = inttoptr i32 %4 to ptr
  %8 = call ptr @nfs_path(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull %7, i32 noundef 4096, i32 noundef 0) #14
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = ptrtoint ptr %8 to i32
  br label %14

12:                                               ; preds = %6
  %13 = call i32 @strlen(ptr noundef %8) #14
  call void @seq_escape_mem(ptr noundef %0, ptr noundef %8, i32 noundef %13, i32 noundef 8, ptr noundef nonnull @.str.1) #14
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi i32 [ %11, %10 ], [ 0, %12 ]
  call void @free_pages(i32 noundef %4, i32 noundef 0) #14
  br label %16

16:                                               ; preds = %14, %2
  %17 = phi i32 [ %15, %14 ], [ -12, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs_show_path(ptr noundef %0, ptr nocapture readnone %1) #1 {
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.2) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs_show_stats(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = alloca %struct.nfs_iostats, align 64
  %4 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 27
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nfs_server, ptr %7, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.rpc_clnt, ptr %9, i32 0, i32 11
  %11 = load ptr, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %3) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 64 dereferenceable(192) %3, i8 0, i32 192, i1 false)
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #14
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.5) #14
  %12 = load ptr, ptr %4, align 4
  %13 = getelementptr inbounds %struct.super_block, ptr %12, i32 0, i32 10
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  %17 = select i1 %16, ptr @.str.7, ptr @.str.6
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull %17) #14
  %18 = load ptr, ptr %4, align 4
  %19 = getelementptr inbounds %struct.super_block, ptr %18, i32 0, i32 10
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 16
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %22, ptr @.str.9, ptr @.str.8
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull %23) #14
  %24 = load ptr, ptr %4, align 4
  %25 = getelementptr inbounds %struct.super_block, ptr %24, i32 0, i32 10
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, 1024
  %28 = icmp eq i32 %27, 0
  %29 = select i1 %28, ptr @.str.9, ptr @.str.10
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull %29) #14
  %30 = load ptr, ptr %4, align 4
  %31 = getelementptr inbounds %struct.super_block, ptr %30, i32 0, i32 10
  %32 = load i32, ptr %31, align 4
  %33 = and i32 %32, 2048
  %34 = icmp eq i32 %33, 0
  %35 = select i1 %34, ptr @.str.9, ptr @.str.11
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull %35) #14
  tail call fastcc void @nfs_show_mount_options(ptr noundef %0, ptr noundef %7, i32 noundef 1)
  %36 = load volatile i32, ptr @jiffies, align 64
  %37 = getelementptr inbounds %struct.nfs_server, ptr %7, i32 0, i32 33
  %38 = load i32, ptr %37, align 8
  %39 = sub i32 %36, %38
  %40 = udiv i32 %39, 100
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.12, i32 noundef %40) #14
  %41 = load ptr, ptr %7, align 8
  %42 = icmp eq ptr %41, null
  br i1 %42, label %53, label %43

43:                                               ; preds = %2
  %44 = getelementptr inbounds %struct.nfs_client, ptr %41, i32 0, i32 40
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %53, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.nfs41_impl_id, ptr %45, i32 0, i32 1
  %49 = getelementptr inbounds %struct.nfs41_impl_id, ptr %45, i32 0, i32 2
  %50 = load i64, ptr %49, align 8
  %51 = getelementptr inbounds %struct.nfs41_impl_id, ptr %45, i32 0, i32 2, i32 1
  %52 = load i32, ptr %51, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.94, ptr noundef %48, ptr noundef nonnull %45, i64 noundef %50, i32 noundef %52) #14
  br label %53

53:                                               ; preds = %47, %43, %2
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.13) #14
  %54 = getelementptr inbounds %struct.nfs_server, ptr %7, i32 0, i32 10
  %55 = load i32, ptr %54, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.14, i32 noundef %55) #14
  %56 = getelementptr inbounds %struct.nfs_server, ptr %7, i32 0, i32 15
  %57 = load i32, ptr %56, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.15, i32 noundef %57) #14
  %58 = getelementptr inbounds %struct.nfs_server, ptr %7, i32 0, i32 16
  %59 = load i32, ptr %58, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.16, i32 noundef %59) #14
  %60 = getelementptr inbounds %struct.nfs_server, ptr %7, i32 0, i32 18
  %61 = load i32, ptr %60, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.17, i32 noundef %61) #14
  %62 = getelementptr inbounds %struct.nfs_server, ptr %7, i32 0, i32 26
  %63 = load i32, ptr %62, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.18, i32 noundef %63) #14
  %64 = load ptr, ptr %7, align 8
  %65 = getelementptr inbounds %struct.nfs_client, ptr %64, i32 0, i32 12
  %66 = load ptr, ptr %65, align 4
  %67 = load i32, ptr %66, align 4
  %68 = icmp eq i32 %67, 4
  br i1 %68, label %69, label %109

69:                                               ; preds = %53
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.19) #14
  %70 = getelementptr inbounds %struct.nfs_server, ptr %7, i32 0, i32 38
  %71 = load i32, ptr %70, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.20, i32 noundef %71) #14
  %72 = getelementptr %struct.nfs_server, ptr %7, i32 0, i32 38, i32 1
  %73 = load i32, ptr %72, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.21, i32 noundef %73) #14
  %74 = getelementptr %struct.nfs_server, ptr %7, i32 0, i32 38, i32 2
  %75 = load i32, ptr %74, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.22, i32 noundef %75) #14
  %76 = getelementptr inbounds %struct.nfs_server, ptr %7, i32 0, i32 42
  %77 = load i32, ptr %76, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.23, i32 noundef %77) #14
  %78 = load ptr, ptr %7, align 8
  %79 = getelementptr inbounds %struct.nfs_client, ptr %78, i32 0, i32 36
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %83, label %82

82:                                               ; preds = %69
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.95) #14
  br label %83

83:                                               ; preds = %82, %69
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.96) #14
  %84 = getelementptr inbounds %struct.nfs_server, ptr %7, i32 0, i32 44
  %85 = load ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %90, label %87

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.pnfs_layoutdriver_type, ptr %85, i32 0, i32 2
  %89 = load ptr, ptr %88, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.97, ptr noundef %89) #14
  br label %91

90:                                               ; preds = %83
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.98) #14
  br label %91

91:                                               ; preds = %90, %87
  %92 = load ptr, ptr %7, align 8
  %93 = getelementptr inbounds %struct.nfs_client, ptr %92, i32 0, i32 24
  %94 = load i32, ptr %93, align 8
  %95 = udiv i32 %94, 100
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.99, i32 noundef %95) #14
  %96 = getelementptr inbounds %struct.nfs_client, ptr %92, i32 0, i32 25
  %97 = load i32, ptr %96, align 4
  %98 = load i32, ptr %93, align 8
  %99 = add i32 %98, %97
  %100 = load volatile i32, ptr @jiffies, align 64
  %101 = sub i32 %100, %99
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %107, label %103

103:                                              ; preds = %91
  %104 = load volatile i32, ptr @jiffies, align 64
  %105 = sub i32 %104, %99
  %106 = udiv i32 %105, 100
  br label %107

107:                                              ; preds = %103, %91
  %108 = phi i32 [ %106, %103 ], [ 0, %91 ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.100, i32 noundef %108) #14
  br label %109

109:                                              ; preds = %107, %53
  %110 = getelementptr inbounds %struct.rpc_auth, ptr %11, i32 0, i32 5
  %111 = load ptr, ptr %110, align 4
  %112 = getelementptr inbounds %struct.rpc_authops, ptr %111, i32 0, i32 1
  %113 = load i32, ptr %112, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.24, i32 noundef %113) #14
  %114 = getelementptr inbounds %struct.rpc_auth, ptr %11, i32 0, i32 6
  %115 = load i32, ptr %114, align 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %109
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.25, i32 noundef %115) #14
  br label %118

118:                                              ; preds = %117, %109
  %119 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #15
  %120 = load i32, ptr @nr_cpu_ids, align 4
  %121 = icmp ult i32 %119, %120
  br i1 %121, label %122, label %183

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct.nfs_server, ptr %7, i32 0, i32 6
  %124 = getelementptr inbounds [8 x i64], ptr %3, i32 0, i32 1
  %125 = getelementptr inbounds [8 x i64], ptr %3, i32 0, i32 2
  %126 = getelementptr inbounds [8 x i64], ptr %3, i32 0, i32 3
  %127 = getelementptr inbounds [8 x i64], ptr %3, i32 0, i32 4
  %128 = getelementptr inbounds [8 x i64], ptr %3, i32 0, i32 5
  %129 = getelementptr inbounds [8 x i64], ptr %3, i32 0, i32 6
  %130 = getelementptr inbounds [8 x i64], ptr %3, i32 0, i32 7
  br label %131

131:                                              ; preds = %148, %122
  %132 = phi i32 [ %119, %122 ], [ %180, %148 ]
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !12
  %133 = load ptr, ptr %123, align 8
  %134 = ptrtoint ptr %133 to i32
  %135 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %132
  %136 = load i32, ptr %135, align 4
  %137 = add i32 %136, %134
  %138 = inttoptr i32 %137 to ptr
  br label %139

139:                                              ; preds = %139, %131
  %140 = phi i32 [ 0, %131 ], [ %146, %139 ]
  %141 = getelementptr %struct.nfs_iostats, ptr %138, i32 0, i32 1, i32 %140
  %142 = load i32, ptr %141, align 4
  %143 = getelementptr %struct.nfs_iostats, ptr %3, i32 0, i32 1, i32 %140
  %144 = load i32, ptr %143, align 4
  %145 = add i32 %144, %142
  store i32 %145, ptr %143, align 4
  %146 = add nuw nsw i32 %140, 1
  %147 = icmp eq i32 %146, 27
  br i1 %147, label %148, label %139

148:                                              ; preds = %139
  %149 = load i64, ptr %138, align 8
  %150 = load i64, ptr %3, align 64
  %151 = add i64 %150, %149
  store i64 %151, ptr %3, align 64
  %152 = getelementptr [8 x i64], ptr %138, i32 0, i32 1
  %153 = load i64, ptr %152, align 8
  %154 = load i64, ptr %124, align 8
  %155 = add i64 %154, %153
  store i64 %155, ptr %124, align 8
  %156 = getelementptr [8 x i64], ptr %138, i32 0, i32 2
  %157 = load i64, ptr %156, align 8
  %158 = load i64, ptr %125, align 16
  %159 = add i64 %158, %157
  store i64 %159, ptr %125, align 16
  %160 = getelementptr [8 x i64], ptr %138, i32 0, i32 3
  %161 = load i64, ptr %160, align 8
  %162 = load i64, ptr %126, align 8
  %163 = add i64 %162, %161
  store i64 %163, ptr %126, align 8
  %164 = getelementptr [8 x i64], ptr %138, i32 0, i32 4
  %165 = load i64, ptr %164, align 8
  %166 = load i64, ptr %127, align 32
  %167 = add i64 %166, %165
  store i64 %167, ptr %127, align 32
  %168 = getelementptr [8 x i64], ptr %138, i32 0, i32 5
  %169 = load i64, ptr %168, align 8
  %170 = load i64, ptr %128, align 8
  %171 = add i64 %170, %169
  store i64 %171, ptr %128, align 8
  %172 = getelementptr [8 x i64], ptr %138, i32 0, i32 6
  %173 = load i64, ptr %172, align 8
  %174 = load i64, ptr %129, align 16
  %175 = add i64 %174, %173
  store i64 %175, ptr %129, align 16
  %176 = getelementptr [8 x i64], ptr %138, i32 0, i32 7
  %177 = load i64, ptr %176, align 8
  %178 = load i64, ptr %130, align 8
  %179 = add i64 %178, %177
  store i64 %179, ptr %130, align 8
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !13
  %180 = tail call i32 @cpumask_next(i32 noundef %132, ptr noundef nonnull @__cpu_possible_mask) #15
  %181 = load i32, ptr @nr_cpu_ids, align 4
  %182 = icmp ult i32 %180, %181
  br i1 %182, label %131, label %183

183:                                              ; preds = %148, %118
  %184 = phi i64 [ 0, %118 ], [ %179, %148 ]
  %185 = phi i64 [ 0, %118 ], [ %175, %148 ]
  %186 = phi i64 [ 0, %118 ], [ %171, %148 ]
  %187 = phi i64 [ 0, %118 ], [ %167, %148 ]
  %188 = phi i64 [ 0, %118 ], [ %163, %148 ]
  %189 = phi i64 [ 0, %118 ], [ %159, %148 ]
  %190 = phi i64 [ 0, %118 ], [ %155, %148 ]
  %191 = phi i64 [ 0, %118 ], [ %151, %148 ]
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.26) #14
  br label %192

192:                                              ; preds = %192, %183
  %193 = phi i32 [ 0, %183 ], [ %196, %192 ]
  %194 = getelementptr %struct.nfs_iostats, ptr %3, i32 0, i32 1, i32 %193
  %195 = load i32, ptr %194, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.27, i32 noundef %195) #14
  %196 = add nuw nsw i32 %193, 1
  %197 = icmp eq i32 %196, 27
  br i1 %197, label %198, label %192

198:                                              ; preds = %192
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.28) #14
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.29, i64 noundef %191) #14
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.29, i64 noundef %190) #14
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.29, i64 noundef %189) #14
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.29, i64 noundef %188) #14
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.29, i64 noundef %187) #14
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.29, i64 noundef %186) #14
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.29, i64 noundef %185) #14
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.29, i64 noundef %184) #14
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #14
  %199 = load ptr, ptr %8, align 4
  tail call void @rpc_clnt_show_stats(ptr noundef %0, ptr noundef %199) #14
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %3) #14
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @register_nfs_fs() local_unnamed_addr #2 section ".init.text" {
  %1 = tail call i32 @register_filesystem(ptr noundef nonnull @nfs_fs_type) #14
  %2 = icmp slt i32 %1, 0
  br i1 %2, label %20, label %3

3:                                                ; preds = %0
  %4 = tail call i32 @register_filesystem(ptr noundef nonnull @nfs4_fs_type) #14
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %17, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @nfs_register_sysctl() #14
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %6
  %10 = tail call i32 @register_shrinker(ptr noundef nonnull @acl_shrinker) #14
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  tail call void @nfs_ssc_register(ptr noundef nonnull @nfs_ssc_clnt_ops_tbl) #14
  br label %20

13:                                               ; preds = %9
  tail call void @nfs_unregister_sysctl() #14
  br label %14

14:                                               ; preds = %13, %6
  %15 = phi i32 [ %7, %6 ], [ %10, %13 ]
  %16 = tail call i32 @unregister_filesystem(ptr noundef nonnull @nfs4_fs_type) #14
  br label %17

17:                                               ; preds = %14, %3
  %18 = phi i32 [ %4, %3 ], [ %15, %14 ]
  %19 = tail call i32 @unregister_filesystem(ptr noundef nonnull @nfs_fs_type) #14
  br label %20

20:                                               ; preds = %17, %12, %0
  %21 = phi i32 [ 0, %12 ], [ %1, %0 ], [ %18, %17 ]
  ret i32 %21
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_filesystem(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_register_sysctl() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_shrinker(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_unregister_sysctl() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_filesystem(ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @unregister_nfs_fs() #2 section ".exit.text" {
  tail call void @unregister_shrinker(ptr noundef nonnull @acl_shrinker) #14
  tail call void @nfs_unregister_sysctl() #14
  %1 = tail call i32 @unregister_filesystem(ptr noundef nonnull @nfs4_fs_type) #14
  tail call void @nfs_ssc_unregister(ptr noundef nonnull @nfs_ssc_clnt_ops_tbl) #14
  %2 = tail call i32 @unregister_filesystem(ptr noundef nonnull @nfs_fs_type) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_shrinker(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @nfs_sb_active(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #14, !srcloc !15
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 0, i32 1, ptr elementtype(i32) %4) #14, !srcloc !16
  %6 = extractvalue { i32, i32, i32 } %5, 0
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %15, label %8

8:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !17
  %9 = getelementptr inbounds %struct.nfs_server, ptr %3, i32 0, i32 57
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #14, !srcloc !15
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %9, ptr %9, i32 1, ptr elementtype(i32) %9) #14, !srcloc !19
  %11 = extractvalue { i32, i32 } %10, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !20
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %15, label %13

13:                                               ; preds = %8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #14, !srcloc !15
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #14, !srcloc !21
  br label %15

15:                                               ; preds = %13, %8, %1
  %16 = xor i1 %7, true
  ret i1 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs_sb_deactive(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nfs_server, ptr %3, i32 0, i32 57
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !22
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #14, !srcloc !15
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #14, !srcloc !23
  %6 = extractvalue { i32, i32 } %5, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !24
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  tail call void @deactivate_super(ptr noundef %0) #14
  br label %9

9:                                                ; preds = %8, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @deactivate_super(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs_client_for_each_server(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #1 {
  %4 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 10
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !10
  %5 = load volatile ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %48, label %7

7:                                                ; preds = %44, %3
  %8 = phi ptr [ %46, %44 ], [ %5, %3 ]
  %9 = phi ptr [ %45, %44 ], [ null, %3 ]
  %10 = getelementptr i8, ptr %8, i32 -4
  %11 = getelementptr i8, ptr %8, i32 168
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %44, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.super_block, ptr %12, i32 0, i32 27
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.super_block, ptr %12, i32 0, i32 16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %17) #14, !srcloc !15
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %17, ptr %17, i32 0, i32 1, ptr elementtype(i32) %17) #14, !srcloc !16
  %19 = extractvalue { i32, i32, i32 } %18, 0
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %44, label %21

21:                                               ; preds = %14
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !17
  %22 = getelementptr inbounds %struct.nfs_server, ptr %16, i32 0, i32 57
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %22) #14, !srcloc !15
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %22, ptr %22, i32 1, ptr elementtype(i32) %22) #14, !srcloc !19
  %24 = extractvalue { i32, i32 } %23, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !20
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %28, label %26

26:                                               ; preds = %21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %17) #14, !srcloc !15
  %27 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %17, ptr %17, i32 1, ptr elementtype(i32) %17) #14, !srcloc !21
  br label %28

28:                                               ; preds = %26, %21
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !11
  %29 = icmp eq ptr %9, null
  br i1 %29, label %40, label %30

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.nfs_server, ptr %9, i32 0, i32 34
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.super_block, ptr %32, i32 0, i32 27
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.nfs_server, ptr %34, i32 0, i32 57
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !22
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %35) #14, !srcloc !15
  %36 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %35, ptr %35, i32 1, ptr elementtype(i32) %35) #14, !srcloc !23
  %37 = extractvalue { i32, i32 } %36, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !24
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  tail call void @deactivate_super(ptr noundef %32) #14
  br label %40

40:                                               ; preds = %39, %30, %28
  %41 = tail call i32 %1(ptr noundef %10, ptr noundef %2) #14
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %40
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !10
  br label %44

44:                                               ; preds = %43, %14, %7
  %45 = phi ptr [ %10, %43 ], [ %9, %7 ], [ %9, %14 ]
  %46 = load volatile ptr, ptr %8, align 4
  %47 = icmp eq ptr %46, %4
  br i1 %47, label %48, label %7

48:                                               ; preds = %44, %3
  %49 = phi ptr [ null, %3 ], [ %45, %44 ]
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !11
  br label %50

50:                                               ; preds = %48, %40
  %51 = phi i32 [ 0, %48 ], [ %41, %40 ]
  %52 = phi ptr [ %49, %48 ], [ %10, %40 ]
  %53 = icmp eq ptr %52, null
  br i1 %53, label %64, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.nfs_server, ptr %52, i32 0, i32 34
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.super_block, ptr %56, i32 0, i32 27
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.nfs_server, ptr %58, i32 0, i32 57
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !22
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %59) #14, !srcloc !15
  %60 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %59, ptr %59, i32 1, ptr elementtype(i32) %59) #14, !srcloc !23
  %61 = extractvalue { i32, i32 } %60, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !24
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %54
  tail call void @deactivate_super(ptr noundef %56) #14
  br label %64

64:                                               ; preds = %63, %54, %50
  ret i32 %51
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs_alloc_fattr() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dget_parent(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_zap_caches(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nfs_show_mount_options(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 {
  %4 = load ptr, ptr %1, align 8
  %5 = getelementptr inbounds %struct.nfs_client, ptr %4, i32 0, i32 12
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nfs_client, ptr %4, i32 0, i32 15
  %9 = load i32, ptr %8, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.68, i32 noundef %7) #14
  %10 = icmp eq i32 %7, 4
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.69, i32 noundef %9) #14
  br label %12

12:                                               ; preds = %11, %3
  %13 = getelementptr inbounds %struct.nfs_server, ptr %1, i32 0, i32 11
  %14 = load i32, ptr %13, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.44, i32 noundef %14) #14
  %15 = getelementptr inbounds %struct.nfs_server, ptr %1, i32 0, i32 13
  %16 = load i32, ptr %15, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.45, i32 noundef %16) #14
  %17 = getelementptr inbounds %struct.nfs_server, ptr %1, i32 0, i32 18
  %18 = load i32, ptr %17, align 8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.17, i32 noundef %18) #14
  br label %21

21:                                               ; preds = %20, %12
  %22 = getelementptr inbounds %struct.nfs_server, ptr %1, i32 0, i32 26
  %23 = load i32, ptr %22, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.18, i32 noundef %23) #14
  %24 = getelementptr inbounds %struct.nfs_server, ptr %1, i32 0, i32 22
  %25 = load i32, ptr %24, align 8
  %26 = icmp ne i32 %25, 300
  %27 = icmp ne i32 %2, 0
  %28 = or i1 %27, %26
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = udiv i32 %25, 100
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.46, i32 noundef %30) #14
  br label %31

31:                                               ; preds = %29, %21
  %32 = getelementptr inbounds %struct.nfs_server, ptr %1, i32 0, i32 23
  %33 = load i32, ptr %32, align 4
  %34 = icmp ne i32 %33, 6000
  %35 = or i1 %27, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = udiv i32 %33, 100
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.47, i32 noundef %37) #14
  br label %38

38:                                               ; preds = %36, %31
  %39 = getelementptr inbounds %struct.nfs_server, ptr %1, i32 0, i32 24
  %40 = load i32, ptr %39, align 8
  %41 = icmp ne i32 %40, 3000
  %42 = or i1 %27, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = udiv i32 %40, 100
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.48, i32 noundef %44) #14
  br label %45

45:                                               ; preds = %43, %38
  %46 = getelementptr inbounds %struct.nfs_server, ptr %1, i32 0, i32 25
  %47 = load i32, ptr %46, align 4
  %48 = icmp ne i32 %47, 6000
  %49 = or i1 %27, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = udiv i32 %47, 100
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.49, i32 noundef %51) #14
  br label %52

52:                                               ; preds = %50, %45
  %53 = getelementptr inbounds %struct.nfs_server, ptr %1, i32 0, i32 8
  %54 = load i32, ptr %53, align 8
  %55 = and i32 %54, 4194305
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.50) #14
  br label %58

58:                                               ; preds = %57, %52
  %59 = load i32, ptr %53, align 8
  %60 = and i32 %59, 1
  %61 = icmp eq i32 %60, 0
  %62 = select i1 %61, ptr @.str.9, ptr @.str.33
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull %62) #14
  %63 = load i32, ptr %53, align 8
  %64 = and i32 %63, 4194304
  %65 = icmp eq i32 %64, 0
  %66 = select i1 %65, ptr @.str.9, ptr @.str.34
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull %66) #14
  %67 = load i32, ptr %53, align 8
  %68 = and i32 %67, 8388608
  %69 = icmp eq i32 %68, 0
  %70 = select i1 %69, ptr @.str.9, ptr @.str.35
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull %70) #14
  %71 = load i32, ptr %53, align 8
  %72 = and i32 %71, 8
  %73 = icmp eq i32 %72, 0
  %74 = select i1 %73, ptr @.str.9, ptr @.str.36
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull %74) #14
  %75 = load i32, ptr %53, align 8
  %76 = and i32 %75, 16
  %77 = icmp eq i32 %76, 0
  %78 = select i1 %77, ptr @.str.9, ptr @.str.37
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull %78) #14
  %79 = load i32, ptr %53, align 8
  %80 = and i32 %79, 32
  %81 = icmp eq i32 %80, 0
  %82 = select i1 %81, ptr @.str.9, ptr @.str.38
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull %82) #14
  %83 = load i32, ptr %53, align 8
  %84 = and i32 %83, 512
  %85 = icmp eq i32 %84, 0
  %86 = select i1 %85, ptr @.str.9, ptr @.str.39
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull %86) #14
  %87 = load i32, ptr %53, align 8
  %88 = and i32 %87, 2048
  %89 = icmp eq i32 %88, 0
  %90 = select i1 %89, ptr @.str.9, ptr @.str.40
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull %90) #14
  %91 = load i32, ptr %53, align 8
  %92 = and i32 %91, 16384
  %93 = icmp eq i32 %92, 0
  %94 = select i1 %93, ptr @.str.9, ptr @.str.41
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull %94) #14
  %95 = load i32, ptr %53, align 8
  %96 = and i32 %95, 32768
  %97 = icmp eq i32 %96, 0
  %98 = select i1 %97, ptr @.str.9, ptr @.str.42
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull %98) #14
  %99 = load i32, ptr %53, align 8
  %100 = and i32 %99, 262144
  %101 = icmp eq i32 %100, 0
  %102 = select i1 %101, ptr @.str.9, ptr @.str.43
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull %102) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !10
  %103 = getelementptr inbounds %struct.nfs_server, ptr %1, i32 0, i32 3
  %104 = load ptr, ptr %103, align 4
  %105 = tail call ptr @rpc_peeraddr2str(ptr noundef %104, i32 noundef 5) #14
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.51, ptr noundef %105) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !11
  %106 = getelementptr inbounds %struct.nfs_client, ptr %4, i32 0, i32 16
  %107 = load i32, ptr %106, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %58
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.52, i32 noundef %107) #14
  br label %110

110:                                              ; preds = %109, %58
  br i1 %10, label %111, label %120

111:                                              ; preds = %110
  %112 = getelementptr inbounds %struct.nfs_client, ptr %4, i32 0, i32 17
  %113 = load i32, ptr %112, align 8
  %114 = icmp ugt i32 %113, 1
  br i1 %114, label %115, label %116

115:                                              ; preds = %111
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.53, i32 noundef %113) #14
  br label %116

116:                                              ; preds = %115, %111
  %117 = getelementptr inbounds %struct.nfs_server, ptr %1, i32 0, i32 17
  %118 = load i16, ptr %117, align 4
  %119 = icmp eq i16 %118, 2049
  br i1 %119, label %127, label %124

120:                                              ; preds = %110
  %121 = getelementptr inbounds %struct.nfs_server, ptr %1, i32 0, i32 17
  %122 = load i16, ptr %121, align 4
  %123 = icmp eq i16 %122, 0
  br i1 %123, label %127, label %124

124:                                              ; preds = %120, %116
  %125 = phi i16 [ %118, %116 ], [ %122, %120 ]
  %126 = zext i16 %125 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.54, i32 noundef %126) #14
  br label %127

127:                                              ; preds = %124, %120, %116
  %128 = load ptr, ptr %103, align 4
  %129 = getelementptr inbounds %struct.rpc_clnt, ptr %128, i32 0, i32 16
  %130 = load ptr, ptr %129, align 4
  %131 = load i32, ptr %130, align 4
  %132 = mul i32 %131, 10
  %133 = udiv i32 %132, 100
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.55, i32 noundef %133) #14
  %134 = load ptr, ptr %103, align 4
  %135 = getelementptr inbounds %struct.rpc_clnt, ptr %134, i32 0, i32 16
  %136 = load ptr, ptr %135, align 4
  %137 = getelementptr inbounds %struct.rpc_timeout, ptr %136, i32 0, i32 3
  %138 = load i32, ptr %137, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.56, i32 noundef %138) #14
  %139 = load ptr, ptr %103, align 4
  %140 = getelementptr inbounds %struct.rpc_clnt, ptr %139, i32 0, i32 11
  %141 = load ptr, ptr %140, align 4
  %142 = getelementptr inbounds %struct.rpc_auth, ptr %141, i32 0, i32 6
  %143 = load i32, ptr %142, align 4
  br label %144

144:                                              ; preds = %144, %127
  %145 = phi i32 [ 0, %127 ], [ %151, %144 ]
  %146 = getelementptr [12 x %struct.anon.164], ptr @nfs_pseudoflavour_to_name.sec_flavours, i32 0, i32 %145
  %147 = load i32, ptr %146, align 4
  %148 = icmp eq i32 %147, -1
  %149 = icmp eq i32 %147, %143
  %150 = or i1 %148, %149
  %151 = add nuw nsw i32 %145, 1
  br i1 %150, label %152, label %144

152:                                              ; preds = %144
  %153 = getelementptr [12 x %struct.anon.164], ptr @nfs_pseudoflavour_to_name.sec_flavours, i32 0, i32 %145, i32 1
  %154 = load ptr, ptr %153, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.57, ptr noundef %154) #14
  br i1 %10, label %199, label %155

155:                                              ; preds = %152
  %156 = load i32, ptr %53, align 8
  %157 = and i32 %156, 524288
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %202

159:                                              ; preds = %155
  %160 = getelementptr inbounds %struct.nfs_server, ptr %1, i32 0, i32 58
  %161 = load i16, ptr %160, align 2
  switch i16 %161, label %166 [
    i16 2, label %162
    i16 10, label %164
  ]

162:                                              ; preds = %159
  %163 = getelementptr inbounds %struct.nfs_server, ptr %1, i32 0, i32 58, i32 0, i32 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.82, ptr noundef %163) #14
  br label %169

164:                                              ; preds = %159
  %165 = getelementptr inbounds %struct.nfs_server, ptr %1, i32 0, i32 58, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.83, ptr noundef %165) #14
  br label %169

166:                                              ; preds = %159
  %167 = icmp eq i32 %2, 0
  br i1 %167, label %169, label %168

168:                                              ; preds = %166
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.84) #14
  br label %169

169:                                              ; preds = %168, %166, %164, %162
  %170 = getelementptr inbounds %struct.nfs_server, ptr %1, i32 0, i32 60
  %171 = load i32, ptr %170, align 4
  %172 = or i32 %171, %2
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %175, label %174

174:                                              ; preds = %169
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.85, i32 noundef %171) #14
  br label %175

175:                                              ; preds = %174, %169
  %176 = getelementptr inbounds %struct.nfs_server, ptr %1, i32 0, i32 61
  %177 = load i16, ptr %176, align 8
  %178 = icmp eq i16 %177, 0
  br i1 %178, label %182, label %179

179:                                              ; preds = %175
  %180 = icmp ne i16 %177, -1
  %181 = or i1 %27, %180
  br i1 %181, label %183, label %185

182:                                              ; preds = %175
  br i1 %27, label %183, label %185

183:                                              ; preds = %182, %179
  %184 = zext i16 %177 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.86, i32 noundef %184) #14
  br label %185

185:                                              ; preds = %183, %182, %179
  %186 = load i16, ptr %160, align 2
  switch i16 %186, label %195 [
    i16 2, label %187
    i16 10, label %191
  ]

187:                                              ; preds = %185
  %188 = getelementptr inbounds %struct.nfs_server, ptr %1, i32 0, i32 62
  %189 = load i16, ptr %188, align 2
  switch i16 %189, label %195 [
    i16 17, label %197
    i16 6, label %190
  ]

190:                                              ; preds = %187
  br label %197

191:                                              ; preds = %185
  %192 = getelementptr inbounds %struct.nfs_server, ptr %1, i32 0, i32 62
  %193 = load i16, ptr %192, align 2
  switch i16 %193, label %195 [
    i16 17, label %197
    i16 6, label %194
  ]

194:                                              ; preds = %191
  br label %197

195:                                              ; preds = %191, %187, %185
  %196 = icmp eq i32 %2, 0
  br i1 %196, label %202, label %197

197:                                              ; preds = %195, %194, %191, %190, %187
  %198 = phi ptr [ @.str.92, %195 ], [ @.str.88, %190 ], [ @.str.90, %194 ], [ @.str.87, %187 ], [ @.str.89, %191 ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.91, ptr noundef nonnull %198) #14
  br label %202

199:                                              ; preds = %152
  %200 = load ptr, ptr %1, align 8
  %201 = getelementptr inbounds %struct.nfs_client, ptr %200, i32 0, i32 43
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.93, ptr noundef %201) #14
  br label %202

202:                                              ; preds = %199, %197, %195, %155
  %203 = getelementptr inbounds %struct.nfs_server, ptr %1, i32 0, i32 27
  %204 = load i32, ptr %203, align 4
  %205 = and i32 %204, 1
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %209, label %207

207:                                              ; preds = %202
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.58) #14
  %208 = load i32, ptr %203, align 4
  br label %209

209:                                              ; preds = %207, %202
  %210 = phi i32 [ %208, %207 ], [ %204, %202 ]
  %211 = and i32 %210, 2
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %214, label %213

213:                                              ; preds = %209
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.59) #14
  br label %214

214:                                              ; preds = %213, %209
  %215 = load i32, ptr %53, align 8
  %216 = and i32 %215, 65536
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %222, label %218

218:                                              ; preds = %214
  %219 = and i32 %215, 131072
  %220 = icmp eq i32 %219, 0
  %221 = select i1 %220, ptr @.str.61, ptr @.str.60
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull %221) #14
  br label %222

222:                                              ; preds = %218, %214
  %223 = load i32, ptr %53, align 8
  %224 = and i32 %223, 3145728
  switch i32 %224, label %226 [
    i32 0, label %230
    i32 3145728, label %225
  ]

225:                                              ; preds = %222
  br label %230

226:                                              ; preds = %222
  %227 = and i32 %223, 1048576
  %228 = icmp eq i32 %227, 0
  %229 = select i1 %228, ptr @.str.65, ptr @.str.64
  br label %230

230:                                              ; preds = %226, %225, %222
  %231 = phi ptr [ @.str.63, %225 ], [ @.str.62, %222 ], [ %229, %226 ]
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull %231) #14
  %232 = load i32, ptr %53, align 8
  %233 = and i32 %232, 16777216
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %239, label %235

235:                                              ; preds = %230
  %236 = and i32 %232, 33554432
  %237 = icmp eq i32 %236, 0
  %238 = select i1 %237, ptr @.str.67, ptr @.str.66
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull %238) #14
  br label %239

239:                                              ; preds = %235, %230
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rpc_peeraddr2str(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs_path(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_clnt_show_stats(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_killall_tasks(ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local zeroext i1 @nfs_auth_info_match(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = load i32, ptr %0, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi i32 [ %10, %5 ], [ 0, %2 ]
  %7 = getelementptr %struct.nfs_auth_info, ptr %0, i32 0, i32 1, i32 %6
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, %1
  %10 = add nuw i32 %6, 1
  %11 = icmp eq i32 %10, %3
  %12 = select i1 %9, i1 true, i1 %11
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  %14 = phi i1 [ true, %2 ], [ %9, %5 ]
  ret i1 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs_try_get_tree(ptr noundef %0) #1 {
  %2 = alloca %struct.nfs_mount_request, align 4
  %3 = alloca [12 x i32], align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.rpcsec_gss_info, align 4
  %6 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nfs_fs_context, ptr %7, i32 0, i32 2
  %9 = load i8, ptr %8, align 2, !range !25
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %170, label %11

11:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %3, i8 0, i32 48, i1 false) #14, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  store i32 12, ptr %4, align 4
  %12 = getelementptr inbounds %struct.nfs_fs_context, ptr %7, i32 0, i32 27
  %13 = load ptr, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %2) #14
  %14 = getelementptr inbounds i8, ptr %2, i32 8
  %15 = getelementptr inbounds i8, ptr %2, i32 20
  store i32 0, ptr %15, align 4, !annotation !8
  %16 = getelementptr inbounds %struct.nfs_fs_context, ptr %7, i32 0, i32 25
  store ptr %16, ptr %2, align 4
  %17 = getelementptr inbounds %struct.nfs_mount_request, ptr %2, i32 0, i32 1
  %18 = getelementptr inbounds %struct.nfs_mount_request, ptr %2, i32 0, i32 3
  %19 = getelementptr inbounds %struct.nfs_fs_context, ptr %7, i32 0, i32 26
  %20 = getelementptr inbounds %struct.nfs_fs_context, ptr %7, i32 0, i32 26, i32 3
  %21 = load ptr, ptr %20, align 4
  store ptr %21, ptr %18, align 4
  %22 = getelementptr inbounds %struct.nfs_mount_request, ptr %2, i32 0, i32 4
  %23 = getelementptr inbounds %struct.nfs_fs_context, ptr %7, i32 0, i32 25, i32 5
  %24 = load i16, ptr %23, align 4
  store i16 %24, ptr %15, align 4
  %25 = getelementptr inbounds %struct.nfs_mount_request, ptr %2, i32 0, i32 6
  store ptr %13, ptr %25, align 4
  %26 = getelementptr inbounds %struct.nfs_mount_request, ptr %2, i32 0, i32 7
  %27 = getelementptr inbounds %struct.nfs_fs_context, ptr %7, i32 0, i32 4
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %28, 262144
  store i32 %29, ptr %26, align 4
  %30 = getelementptr inbounds %struct.nfs_mount_request, ptr %2, i32 0, i32 8
  store ptr %4, ptr %30, align 4
  %31 = getelementptr inbounds %struct.nfs_mount_request, ptr %2, i32 0, i32 9
  store ptr %3, ptr %31, align 4
  %32 = getelementptr inbounds %struct.nfs_mount_request, ptr %2, i32 0, i32 10
  %33 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 7
  %34 = load ptr, ptr %33, align 4
  store ptr %34, ptr %32, align 4
  %35 = getelementptr inbounds %struct.nfs_fs_context, ptr %7, i32 0, i32 25, i32 3
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %11
  %39 = getelementptr inbounds %struct.nfs_fs_context, ptr %7, i32 0, i32 19
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, 2
  %42 = select i1 %41, i32 1, i32 3
  store i32 %42, ptr %35, align 4
  br label %43

43:                                               ; preds = %38, %11
  %44 = phi i32 [ %36, %11 ], [ %42, %38 ]
  store i32 %44, ptr %22, align 4
  %45 = getelementptr inbounds %struct.nfs_fs_context, ptr %7, i32 0, i32 25, i32 2
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.nfs_fs_context, ptr %7, i32 0, i32 26, i32 2
  %50 = load ptr, ptr %49, align 4
  br label %51

51:                                               ; preds = %48, %43
  %52 = phi ptr [ %50, %48 ], [ %46, %43 ]
  store ptr %52, ptr %14, align 4
  %53 = load i16, ptr %16, align 4
  %54 = icmp eq i16 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.nfs_fs_context, ptr %7, i32 0, i32 25, i32 1
  %57 = load i32, ptr %56, align 4
  br label %63

58:                                               ; preds = %51
  %59 = getelementptr inbounds %struct.nfs_fs_context, ptr %7, i32 0, i32 26, i32 1
  %60 = load i32, ptr %59, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 2 %16, ptr align 4 %19, i32 %60, i1 false) #14
  %61 = load i32, ptr %59, align 4
  %62 = getelementptr inbounds %struct.nfs_fs_context, ptr %7, i32 0, i32 25, i32 1
  store i32 %61, ptr %62, align 4
  br label %63

63:                                               ; preds = %58, %55
  %64 = phi i32 [ %57, %55 ], [ %61, %58 ]
  store i32 %64, ptr %17, align 4
  %65 = getelementptr inbounds %struct.nfs_fs_context, ptr %7, i32 0, i32 25, i32 4
  %66 = load i32, ptr %65, align 4
  %67 = icmp eq i32 %66, -1
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  store i32 0, ptr %65, align 4
  br label %69

69:                                               ; preds = %68, %63
  %70 = phi i32 [ 0, %68 ], [ %66, %63 ]
  %71 = trunc i32 %70 to i16
  %72 = load i16, ptr %16, align 2
  switch i16 %72, label %79 [
    i16 2, label %73
    i16 10, label %76
  ]

73:                                               ; preds = %69
  %74 = call i16 @llvm.bswap.i16(i16 %71) #14
  %75 = getelementptr inbounds %struct.sockaddr_in, ptr %16, i32 0, i32 1
  store i16 %74, ptr %75, align 2
  br label %79

76:                                               ; preds = %69
  %77 = call i16 @llvm.bswap.i16(i16 %71) #14
  %78 = getelementptr inbounds %struct.sockaddr_in6, ptr %16, i32 0, i32 1
  store i16 %77, ptr %78, align 2
  br label %79

79:                                               ; preds = %76, %73, %69
  %80 = getelementptr inbounds %struct.nfs_fs_context, ptr %7, i32 0, i32 7
  %81 = load i32, ptr %80, align 4
  %82 = getelementptr inbounds %struct.nfs_fs_context, ptr %7, i32 0, i32 8
  %83 = load i32, ptr %82, align 4
  %84 = call i32 @nfs_mount(ptr noundef nonnull %2, i32 noundef %81, i32 noundef %83) #14
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %2) #14
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %79
  %87 = inttoptr i32 %84 to ptr
  br label %168

88:                                               ; preds = %79
  %89 = getelementptr inbounds %struct.nfs_fs_context, ptr %7, i32 0, i32 16
  %90 = load i32, ptr %89, align 4
  %91 = icmp eq i32 %90, 0
  %92 = load i32, ptr %4, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %91, label %94, label %98

94:                                               ; preds = %88
  br i1 %93, label %168, label %95

95:                                               ; preds = %94
  %96 = getelementptr inbounds %struct.nfs_fs_context, ptr %7, i32 0, i32 17
  %97 = getelementptr inbounds %struct.nfs_fs_context, ptr %7, i32 0, i32 29
  br label %131

98:                                               ; preds = %88
  br i1 %93, label %168, label %99

99:                                               ; preds = %112, %98
  %100 = phi i32 [ %115, %112 ], [ 0, %98 ]
  %101 = phi i1 [ %114, %112 ], [ false, %98 ]
  %102 = getelementptr i32, ptr %3, i32 %100
  %103 = load i32, ptr %102, align 4
  br label %107

104:                                              ; preds = %107
  %105 = add nuw i32 %108, 1
  %106 = icmp eq i32 %105, %90
  br i1 %106, label %112, label %107

107:                                              ; preds = %104, %99
  %108 = phi i32 [ %105, %104 ], [ 0, %99 ]
  %109 = getelementptr %struct.nfs_fs_context, ptr %7, i32 0, i32 16, i32 1, i32 %108
  %110 = load i32, ptr %109, align 4
  %111 = icmp eq i32 %110, %103
  br i1 %111, label %121, label %104

112:                                              ; preds = %104
  %113 = icmp eq i32 %103, 0
  %114 = select i1 %113, i1 true, i1 %101
  %115 = add nuw i32 %100, 1
  %116 = icmp eq i32 %115, %92
  br i1 %116, label %117, label %99

117:                                              ; preds = %112
  br i1 %114, label %118, label %168

118:                                              ; preds = %117
  %119 = getelementptr inbounds %struct.nfs_fs_context, ptr %7, i32 0, i32 16, i32 1
  %120 = load i32, ptr %119, align 4
  br label %121

121:                                              ; preds = %118, %107
  %122 = phi i32 [ %120, %118 ], [ %103, %107 ]
  %123 = getelementptr inbounds %struct.nfs_fs_context, ptr %7, i32 0, i32 17
  store i32 %122, ptr %123, align 4
  %124 = getelementptr inbounds %struct.nfs_fs_context, ptr %7, i32 0, i32 29
  %125 = load ptr, ptr %124, align 4
  %126 = getelementptr inbounds %struct.nfs_subversion, ptr %125, i32 0, i32 3
  %127 = load ptr, ptr %126, align 4
  %128 = getelementptr inbounds %struct.nfs_rpc_ops, ptr %127, i32 0, i32 51
  %129 = load ptr, ptr %128, align 4
  %130 = call ptr %129(ptr noundef %0) #14
  br label %168

131:                                              ; preds = %151, %95
  %132 = phi ptr [ inttoptr (i32 -13 to ptr), %95 ], [ %154, %151 ]
  %133 = phi i1 [ false, %95 ], [ %153, %151 ]
  %134 = phi i1 [ false, %95 ], [ %152, %151 ]
  %135 = phi i32 [ 0, %95 ], [ %155, %151 ]
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %5) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %5, i8 0, i32 44, i1 false) #14, !annotation !8
  %136 = getelementptr [12 x i32], ptr %3, i32 0, i32 %135
  %137 = load i32, ptr %136, align 4
  switch i32 %137, label %138 [
    i32 1, label %141
    i32 0, label %151
  ]

138:                                              ; preds = %131
  %139 = call i32 @rpcauth_get_gssinfo(i32 noundef %137, ptr noundef nonnull %5) #14
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %151

141:                                              ; preds = %138, %131
  %142 = phi i1 [ %134, %138 ], [ true, %131 ]
  store i32 %137, ptr %96, align 4
  %143 = load ptr, ptr %97, align 4
  %144 = getelementptr inbounds %struct.nfs_subversion, ptr %143, i32 0, i32 3
  %145 = load ptr, ptr %144, align 4
  %146 = getelementptr inbounds %struct.nfs_rpc_ops, ptr %145, i32 0, i32 51
  %147 = load ptr, ptr %146, align 4
  %148 = call ptr %147(ptr noundef %0) #14
  %149 = icmp ugt ptr %148, inttoptr (i32 -4096 to ptr)
  br i1 %149, label %151, label %150

150:                                              ; preds = %141
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %5) #14
  br label %168

151:                                              ; preds = %141, %138, %131
  %152 = phi i1 [ %134, %138 ], [ %134, %131 ], [ %142, %141 ]
  %153 = phi i1 [ %133, %138 ], [ true, %131 ], [ %133, %141 ]
  %154 = phi ptr [ %132, %138 ], [ %132, %131 ], [ %148, %141 ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %5) #14
  %155 = add nuw i32 %135, 1
  %156 = load i32, ptr %4, align 4
  %157 = icmp ult i32 %155, %156
  br i1 %157, label %131, label %158

158:                                              ; preds = %151
  %159 = xor i1 %153, true
  %160 = select i1 %152, i1 true, i1 %159
  br i1 %160, label %168, label %161

161:                                              ; preds = %158
  store i32 1, ptr %96, align 4
  %162 = load ptr, ptr %97, align 4
  %163 = getelementptr inbounds %struct.nfs_subversion, ptr %162, i32 0, i32 3
  %164 = load ptr, ptr %163, align 4
  %165 = getelementptr inbounds %struct.nfs_rpc_ops, ptr %164, i32 0, i32 51
  %166 = load ptr, ptr %165, align 4
  %167 = call ptr %166(ptr noundef %0) #14
  br label %168

168:                                              ; preds = %161, %158, %150, %121, %117, %98, %94, %86
  %169 = phi ptr [ %87, %86 ], [ %130, %121 ], [ %148, %150 ], [ %167, %161 ], [ %154, %158 ], [ inttoptr (i32 -13 to ptr), %117 ], [ inttoptr (i32 -13 to ptr), %98 ], [ inttoptr (i32 -13 to ptr), %94 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #14
  br label %178

170:                                              ; preds = %1
  %171 = getelementptr inbounds %struct.nfs_fs_context, ptr %7, i32 0, i32 29
  %172 = load ptr, ptr %171, align 4
  %173 = getelementptr inbounds %struct.nfs_subversion, ptr %172, i32 0, i32 3
  %174 = load ptr, ptr %173, align 4
  %175 = getelementptr inbounds %struct.nfs_rpc_ops, ptr %174, i32 0, i32 51
  %176 = load ptr, ptr %175, align 4
  %177 = tail call ptr %176(ptr noundef %0) #14
  br label %178

178:                                              ; preds = %170, %168
  %179 = phi ptr [ %177, %170 ], [ %169, %168 ]
  %180 = getelementptr inbounds %struct.nfs_fs_context, ptr %7, i32 0, i32 28
  store ptr %179, ptr %180, align 4
  %181 = call i32 @nfs_get_tree_common(ptr noundef %0)
  ret i32 %181
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs_get_tree_common(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 28
  %5 = load ptr, ptr %4, align 4
  store ptr null, ptr %4, align 4
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = ptrtoint ptr %5 to i32
  br label %191

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.nfs_server, ptr %5, i32 0, i32 8
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 32768
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, ptr @nfs_compare_super, ptr null
  %15 = and i32 %11, 32
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 13
  %19 = load i32, ptr %18, align 4
  %20 = or i32 %19, 16
  store i32 %20, ptr %18, align 4
  br label %21

21:                                               ; preds = %17, %9
  %22 = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 30
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %34, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.super_block, ptr %23, i32 0, i32 10
  %27 = load i32, ptr %26, align 4
  %28 = and i32 %27, 16
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 13
  %32 = load i32, ptr %31, align 4
  %33 = or i32 %32, 16
  store i32 %33, ptr %31, align 4
  br label %34

34:                                               ; preds = %30, %25, %21
  %35 = getelementptr inbounds %struct.nfs_server, ptr %5, i32 0, i32 10
  %36 = load i32, ptr %35, align 8
  %37 = and i32 %36, 262144
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 16
  %41 = load i32, ptr %40, align 4
  %42 = or i32 %41, 1
  store i32 %42, ptr %40, align 4
  br label %43

43:                                               ; preds = %39, %34
  %44 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 12
  store ptr %5, ptr %44, align 4
  %45 = tail call ptr @sget_fc(ptr noundef %0, ptr noundef %14, ptr noundef nonnull @nfs_set_super) #14
  store ptr null, ptr %44, align 4
  %46 = icmp ugt ptr %45, inttoptr (i32 -4096 to ptr)
  br i1 %46, label %47, label %53

47:                                               ; preds = %43
  %48 = ptrtoint ptr %45 to i32
  %49 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 9, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %188, label %52

52:                                               ; preds = %47
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef nonnull %50, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.30) #14
  br label %188

53:                                               ; preds = %43
  %54 = getelementptr inbounds %struct.super_block, ptr %45, i32 0, i32 27
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, %5
  br i1 %56, label %58, label %57

57:                                               ; preds = %53
  tail call void @nfs_free_server(ptr noundef %5) #14
  br label %72

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.nfs_server, ptr %5, i32 0, i32 35
  %60 = load i32, ptr %59, align 8
  %61 = lshr i32 %60, 20
  %62 = and i32 %60, 1048575
  %63 = tail call i32 (ptr, ptr, ...) @super_setup_bdi_name(ptr noundef %45, ptr noundef nonnull @.str.31, i32 noundef %61, i32 noundef %62) #14
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %189

65:                                               ; preds = %58
  %66 = getelementptr inbounds %struct.nfs_server, ptr %5, i32 0, i32 12
  %67 = load i32, ptr %66, align 8
  %68 = getelementptr inbounds %struct.super_block, ptr %45, i32 0, i32 21
  %69 = load ptr, ptr %68, align 8
  %70 = getelementptr inbounds %struct.backing_dev_info, ptr %69, i32 0, i32 4
  store i32 %67, ptr %70, align 8
  %71 = getelementptr inbounds %struct.nfs_server, ptr %5, i32 0, i32 34
  store ptr %45, ptr %71, align 4
  br label %72

72:                                               ; preds = %65, %57
  %73 = getelementptr inbounds %struct.super_block, ptr %45, i32 0, i32 13
  %74 = load ptr, ptr %73, align 64
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %176

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 30, i32 3
  %78 = load i32, ptr %77, align 4
  %79 = load ptr, ptr %54, align 4
  %80 = getelementptr inbounds %struct.super_block, ptr %45, i32 0, i32 2
  store i8 0, ptr %80, align 4
  %81 = getelementptr inbounds %struct.super_block, ptr %45, i32 0, i32 3
  store i32 0, ptr %81, align 16
  %82 = load ptr, ptr %79, align 8
  %83 = getelementptr inbounds %struct.nfs_client, ptr %82, i32 0, i32 14
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr inbounds %struct.nfs_subversion, ptr %84, i32 0, i32 5
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr inbounds %struct.super_block, ptr %45, i32 0, i32 17
  store ptr %86, ptr %87, align 4
  %88 = load ptr, ptr %79, align 8
  %89 = getelementptr inbounds %struct.nfs_client, ptr %88, i32 0, i32 14
  %90 = load ptr, ptr %89, align 4
  %91 = getelementptr inbounds %struct.nfs_subversion, ptr %90, i32 0, i32 4
  %92 = load ptr, ptr %91, align 4
  %93 = getelementptr inbounds %struct.super_block, ptr %45, i32 0, i32 6
  store ptr %92, ptr %93, align 4
  %94 = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 15
  %95 = load i32, ptr %94, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %114, label %97

97:                                               ; preds = %76
  %98 = icmp ult i32 %95, 1024
  %99 = tail call i32 @llvm.umin.i32(i32 %95, i32 1048576) #14
  %100 = select i1 %98, i32 4096, i32 %99
  br label %101

101:                                              ; preds = %107, %97
  %102 = phi i32 [ %109, %107 ], [ 31, %97 ]
  %103 = phi i8 [ %108, %107 ], [ 31, %97 ]
  %104 = shl nuw i32 1, %102
  %105 = and i32 %104, %100
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %101
  %108 = add nsw i8 %103, -1
  %109 = zext i8 %108 to i32
  %110 = icmp eq i8 %108, 0
  br i1 %110, label %111, label %101

111:                                              ; preds = %107, %101
  %112 = phi i32 [ 1, %107 ], [ %104, %101 ]
  %113 = phi i8 [ 0, %107 ], [ %103, %101 ]
  store i8 %113, ptr %80, align 1
  store i32 %112, ptr %81, align 16
  br label %114

114:                                              ; preds = %111, %76
  %115 = load ptr, ptr %79, align 8
  %116 = getelementptr inbounds %struct.nfs_client, ptr %115, i32 0, i32 12
  %117 = load ptr, ptr %116, align 4
  %118 = load i32, ptr %117, align 4
  %119 = icmp eq i32 %118, 2
  br i1 %119, label %125, label %120

120:                                              ; preds = %114
  %121 = getelementptr inbounds %struct.super_block, ptr %45, i32 0, i32 10
  %122 = load i32, ptr %121, align 4
  %123 = or i32 %122, 65536
  store i32 %123, ptr %121, align 4
  %124 = getelementptr inbounds %struct.super_block, ptr %45, i32 0, i32 9
  store ptr @nfs_export_ops, ptr %124, align 16
  br label %125

125:                                              ; preds = %120, %114
  %126 = phi i32 [ 1, %120 ], [ 1000, %114 ]
  %127 = getelementptr inbounds %struct.super_block, ptr %45, i32 0, i32 28
  store i32 %126, ptr %127, align 32
  %128 = load ptr, ptr %79, align 8
  %129 = getelementptr inbounds %struct.nfs_client, ptr %128, i32 0, i32 12
  %130 = load ptr, ptr %129, align 4
  %131 = load i32, ptr %130, align 4
  %132 = icmp eq i32 %131, 4
  %133 = select i1 %132, i64 -9223372036854775808, i64 0
  %134 = select i1 %132, i64 9223372036854775807, i64 4294967295
  %135 = getelementptr inbounds %struct.super_block, ptr %45, i32 0, i32 29
  store i64 %133, ptr %135, align 8
  %136 = getelementptr inbounds %struct.super_block, ptr %45, i32 0, i32 30
  store i64 %134, ptr %136, align 16
  %137 = getelementptr inbounds %struct.super_block, ptr %45, i32 0, i32 12
  store i32 26985, ptr %137, align 4
  %138 = getelementptr inbounds %struct.super_block, ptr %45, i32 0, i32 33
  %139 = getelementptr inbounds %struct.super_block, ptr %45, i32 0, i32 1
  %140 = load i32, ptr %139, align 8
  %141 = lshr i32 %140, 20
  %142 = and i32 %140, 1048575
  %143 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %138, i32 noundef 32, ptr noundef nonnull @.str.31, i32 noundef %141, i32 noundef %142) #14
  %144 = load i32, ptr %81, align 16
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %162

146:                                              ; preds = %125
  %147 = getelementptr inbounds %struct.nfs_server, ptr %79, i32 0, i32 13
  %148 = load i32, ptr %147, align 4
  br label %149

149:                                              ; preds = %155, %146
  %150 = phi i32 [ %157, %155 ], [ 31, %146 ]
  %151 = phi i8 [ %156, %155 ], [ 31, %146 ]
  %152 = shl nuw i32 1, %150
  %153 = and i32 %152, %148
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %149
  %156 = add nsw i8 %151, -1
  %157 = zext i8 %156 to i32
  %158 = icmp eq i8 %156, 0
  br i1 %158, label %159, label %149

159:                                              ; preds = %155, %149
  %160 = phi i32 [ 1, %155 ], [ %152, %149 ]
  %161 = phi i8 [ 0, %155 ], [ %151, %149 ]
  store i8 %161, ptr %80, align 1
  store i32 %160, ptr %81, align 16
  br label %162

162:                                              ; preds = %159, %125
  %163 = getelementptr inbounds %struct.nfs_server, ptr %79, i32 0, i32 31
  %164 = load i64, ptr %163, align 8
  %165 = getelementptr inbounds %struct.super_block, ptr %45, i32 0, i32 4
  %166 = add i64 %164, -17592186040321
  %167 = icmp ult i64 %166, -17592186040320
  %168 = select i1 %167, i64 17592186040320, i64 %164
  store i64 %168, ptr %165, align 8
  %169 = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 24
  %170 = load i8, ptr %169, align 4, !range !25
  %171 = getelementptr inbounds %struct.nfs_server, ptr %79, i32 0, i32 66
  store i8 %170, ptr %171, align 4
  %172 = icmp eq i32 %78, 0
  br i1 %172, label %176, label %173

173:                                              ; preds = %162
  %174 = trunc i32 %78 to i8
  store i8 %174, ptr %80, align 4
  %175 = shl nuw i32 1, %78
  store i32 %175, ptr %81, align 16
  br label %176

176:                                              ; preds = %173, %162, %72
  %177 = tail call i32 @nfs_get_root(ptr noundef %45, ptr noundef %0) #14
  %178 = icmp slt i32 %177, 0
  br i1 %178, label %179, label %184

179:                                              ; preds = %176
  %180 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 9, i32 1
  %181 = load ptr, ptr %180, align 4
  %182 = icmp eq ptr %181, null
  br i1 %182, label %189, label %183

183:                                              ; preds = %179
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef nonnull %181, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.32) #14
  br label %189

184:                                              ; preds = %176
  %185 = getelementptr inbounds %struct.super_block, ptr %45, i32 0, i32 10
  %186 = load i32, ptr %185, align 4
  %187 = or i32 %186, 1073741824
  store i32 %187, ptr %185, align 4
  br label %191

188:                                              ; preds = %52, %47
  tail call void @nfs_free_server(ptr noundef %5) #14
  br label %191

189:                                              ; preds = %183, %179, %58
  %190 = phi i32 [ %177, %183 ], [ %177, %179 ], [ %63, %58 ]
  tail call void @deactivate_locked_super(ptr noundef %45) #14
  br label %191

191:                                              ; preds = %189, %188, %184, %7
  %192 = phi i32 [ %8, %7 ], [ %48, %188 ], [ %190, %189 ], [ 0, %184 ]
  ret i32 %192
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs_reconfigure(ptr nocapture noundef %0) #1 {
  %2 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 27
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @sync_filesystem(ptr noundef %7) #14
  %11 = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 1
  %12 = load i8, ptr %11, align 1, !range !25
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %152

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 32
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 13
  %21 = load i32, ptr %20, align 4
  %22 = or i32 %21, 16
  store i32 %22, ptr %20, align 4
  %23 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 14
  %24 = load i32, ptr %23, align 4
  %25 = or i32 %24, 16
  store i32 %25, ptr %23, align 4
  %26 = load i32, ptr %15, align 4
  br label %27

27:                                               ; preds = %19, %14
  %28 = phi i32 [ %26, %19 ], [ %16, %14 ]
  %29 = getelementptr inbounds %struct.nfs_server, ptr %9, i32 0, i32 8
  %30 = load i32, ptr %29, align 8
  %31 = xor i32 %30, %28
  %32 = and i32 %31, -530375
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %152

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 5
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.nfs_server, ptr %9, i32 0, i32 11
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %36, %38
  br i1 %39, label %40, label %152

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 6
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr inbounds %struct.nfs_server, ptr %9, i32 0, i32 13
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %42, %44
  br i1 %45, label %46, label %152

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 19
  %48 = load i32, ptr %47, align 4
  %49 = load ptr, ptr %9, align 8
  %50 = getelementptr inbounds %struct.nfs_client, ptr %49, i32 0, i32 12
  %51 = load ptr, ptr %50, align 4
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %48, %52
  br i1 %53, label %54, label %152

54:                                               ; preds = %46
  %55 = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 20
  %56 = load i32, ptr %55, align 4
  %57 = getelementptr inbounds %struct.nfs_client, ptr %49, i32 0, i32 15
  %58 = load i32, ptr %57, align 8
  %59 = icmp eq i32 %56, %58
  br i1 %59, label %60, label %152

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 8
  %62 = load i32, ptr %61, align 4
  %63 = getelementptr inbounds %struct.nfs_server, ptr %9, i32 0, i32 3
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.rpc_clnt, ptr %64, i32 0, i32 16
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.rpc_timeout, ptr %66, i32 0, i32 3
  %68 = load i32, ptr %67, align 4
  %69 = icmp eq i32 %62, %68
  br i1 %69, label %70, label %152

70:                                               ; preds = %60
  %71 = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 16
  %72 = getelementptr inbounds %struct.rpc_clnt, ptr %64, i32 0, i32 11
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr inbounds %struct.rpc_auth, ptr %73, i32 0, i32 6
  %75 = load i32, ptr %74, align 4
  %76 = load i32, ptr %71, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %86, label %81

78:                                               ; preds = %81
  %79 = add nuw i32 %82, 1
  %80 = icmp eq i32 %79, %76
  br i1 %80, label %152, label %81

81:                                               ; preds = %78, %70
  %82 = phi i32 [ %79, %78 ], [ 0, %70 ]
  %83 = getelementptr %struct.nfs_fs_context, ptr %3, i32 0, i32 16, i32 1, i32 %82
  %84 = load i32, ptr %83, align 4
  %85 = icmp eq i32 %84, %75
  br i1 %85, label %86, label %78

86:                                               ; preds = %81, %70
  %87 = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 9
  %88 = load i32, ptr %87, align 4
  %89 = getelementptr inbounds %struct.nfs_server, ptr %9, i32 0, i32 22
  %90 = load i32, ptr %89, align 8
  %91 = udiv i32 %90, 100
  %92 = icmp eq i32 %88, %91
  br i1 %92, label %93, label %152

93:                                               ; preds = %86
  %94 = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 10
  %95 = load i32, ptr %94, align 4
  %96 = getelementptr inbounds %struct.nfs_server, ptr %9, i32 0, i32 23
  %97 = load i32, ptr %96, align 4
  %98 = udiv i32 %97, 100
  %99 = icmp eq i32 %95, %98
  br i1 %99, label %100, label %152

100:                                              ; preds = %93
  %101 = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 11
  %102 = load i32, ptr %101, align 4
  %103 = getelementptr inbounds %struct.nfs_server, ptr %9, i32 0, i32 24
  %104 = load i32, ptr %103, align 8
  %105 = udiv i32 %104, 100
  %106 = icmp eq i32 %102, %105
  br i1 %106, label %107, label %152

107:                                              ; preds = %100
  %108 = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 12
  %109 = load i32, ptr %108, align 4
  %110 = getelementptr inbounds %struct.nfs_server, ptr %9, i32 0, i32 25
  %111 = load i32, ptr %110, align 4
  %112 = udiv i32 %111, 100
  %113 = icmp eq i32 %109, %112
  br i1 %113, label %114, label %152

114:                                              ; preds = %107
  %115 = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 7
  %116 = load i32, ptr %115, align 4
  %117 = load i32, ptr %66, align 4
  %118 = mul i32 %117, 10
  %119 = udiv i32 %118, 100
  %120 = icmp eq i32 %116, %119
  br i1 %120, label %121, label %152

121:                                              ; preds = %114
  %122 = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 14
  %123 = load i32, ptr %122, align 4
  %124 = getelementptr inbounds %struct.nfs_server, ptr %9, i32 0, i32 27
  %125 = load i32, ptr %124, align 4
  %126 = xor i32 %125, %123
  %127 = and i32 %126, 1
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %152

129:                                              ; preds = %121
  %130 = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 26
  %131 = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 26, i32 4
  %132 = load i32, ptr %131, align 4
  %133 = getelementptr inbounds %struct.nfs_server, ptr %9, i32 0, i32 17
  %134 = load i16, ptr %133, align 4
  %135 = zext i16 %134 to i32
  %136 = icmp eq i32 %132, %135
  br i1 %136, label %137, label %152

137:                                              ; preds = %129
  %138 = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 26, i32 1
  %139 = load i32, ptr %138, align 4
  %140 = getelementptr inbounds %struct.nfs_client, ptr %49, i32 0, i32 6
  %141 = load i32, ptr %140, align 4
  %142 = icmp eq i32 %139, %141
  br i1 %142, label %143, label %152

143:                                              ; preds = %137
  %144 = getelementptr inbounds %struct.nfs_client, ptr %49, i32 0, i32 5
  %145 = tail call fastcc zeroext i1 @rpc_cmp_addr(ptr noundef %130, ptr noundef %144) #14
  br i1 %145, label %146, label %152

146:                                              ; preds = %143
  %147 = load ptr, ptr %4, align 4
  %148 = getelementptr inbounds %struct.dentry, ptr %147, i32 0, i32 5
  %149 = load ptr, ptr %148, align 8
  %150 = getelementptr i8, ptr %149, i32 -288
  %151 = tail call i32 @nfs_probe_server(ptr noundef %9, ptr noundef %150) #14
  br label %152

152:                                              ; preds = %146, %143, %137, %129, %121, %114, %107, %100, %93, %86, %78, %60, %54, %46, %40, %34, %27, %1
  %153 = phi i32 [ %151, %146 ], [ 0, %1 ], [ -22, %137 ], [ -22, %129 ], [ -22, %121 ], [ -22, %114 ], [ -22, %107 ], [ -22, %100 ], [ -22, %93 ], [ -22, %86 ], [ -22, %60 ], [ -22, %54 ], [ -22, %46 ], [ -22, %40 ], [ -22, %34 ], [ -22, %27 ], [ -22, %143 ], [ -22, %78 ]
  ret i32 %153
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_filesystem(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_probe_server(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @nfs_compare_super(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #7 {
  %3 = getelementptr inbounds %struct.fs_context, ptr %1, i32 0, i32 12
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.nfs_client, ptr %7, i32 0, i32 5
  %9 = load ptr, ptr %4, align 8
  %10 = getelementptr inbounds %struct.nfs_client, ptr %9, i32 0, i32 5
  %11 = load i16, ptr %8, align 2
  %12 = load i16, ptr %10, align 2
  %13 = icmp eq i16 %11, %12
  br i1 %13, label %14, label %157

14:                                               ; preds = %2
  switch i16 %11, label %157 [
    i16 2, label %15
    i16 10, label %27
  ]

15:                                               ; preds = %14
  %16 = getelementptr inbounds %struct.nfs_client, ptr %7, i32 0, i32 5, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.nfs_client, ptr %9, i32 0, i32 5, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %17, %19
  br i1 %20, label %21, label %157

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.sockaddr_in, ptr %8, i32 0, i32 1
  %23 = load i16, ptr %22, align 2
  %24 = getelementptr inbounds %struct.sockaddr_in, ptr %10, i32 0, i32 1
  %25 = load i16, ptr %24, align 2
  %26 = icmp eq i16 %23, %25
  br i1 %26, label %58, label %157

27:                                               ; preds = %14
  %28 = getelementptr inbounds %struct.nfs_client, ptr %7, i32 0, i32 5, i32 0, i32 1, i32 4
  %29 = getelementptr inbounds %struct.nfs_client, ptr %9, i32 0, i32 5, i32 0, i32 1, i32 4
  %30 = load i32, ptr %28, align 4
  %31 = load i32, ptr %29, align 4
  %32 = xor i32 %31, %30
  %33 = getelementptr %struct.nfs_client, ptr %7, i32 0, i32 5, i32 0, i32 1, i32 8
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr %struct.nfs_client, ptr %9, i32 0, i32 5, i32 0, i32 1, i32 8
  %36 = load i32, ptr %35, align 4
  %37 = xor i32 %36, %34
  %38 = or i32 %37, %32
  %39 = getelementptr %struct.nfs_client, ptr %7, i32 0, i32 5, i32 0, i32 1, i32 12
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr %struct.nfs_client, ptr %9, i32 0, i32 5, i32 0, i32 1, i32 12
  %42 = load i32, ptr %41, align 4
  %43 = xor i32 %42, %40
  %44 = or i32 %38, %43
  %45 = getelementptr %struct.nfs_client, ptr %7, i32 0, i32 5, i32 0, i32 1, i32 16
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr %struct.nfs_client, ptr %9, i32 0, i32 5, i32 0, i32 1, i32 16
  %48 = load i32, ptr %47, align 4
  %49 = xor i32 %48, %46
  %50 = or i32 %44, %49
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %157

52:                                               ; preds = %27
  %53 = getelementptr inbounds %struct.sockaddr_in6, ptr %8, i32 0, i32 1
  %54 = load i16, ptr %53, align 2
  %55 = getelementptr inbounds %struct.sockaddr_in6, ptr %10, i32 0, i32 1
  %56 = load i16, ptr %55, align 2
  %57 = icmp eq i16 %54, %56
  br i1 %57, label %58, label %157

58:                                               ; preds = %52, %21
  %59 = getelementptr inbounds %struct.nfs_server, ptr %6, i32 0, i32 8
  %60 = load i32, ptr %59, align 8
  %61 = and i32 %60, 32768
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %157

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.nfs_server, ptr %6, i32 0, i32 30
  %65 = getelementptr inbounds %struct.nfs_server, ptr %4, i32 0, i32 30
  %66 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %64, ptr noundef dereferenceable(16) %65, i32 16)
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %157

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.nfs_server, ptr %6, i32 0, i32 3
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %79, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.rpc_clnt, ptr %70, i32 0, i32 28
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %79, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.cred, ptr %74, i32 0, i32 21
  %78 = load ptr, ptr %77, align 4
  br label %79

79:                                               ; preds = %76, %72, %68
  %80 = phi ptr [ %78, %76 ], [ @init_user_ns, %72 ], [ @init_user_ns, %68 ]
  %81 = getelementptr inbounds %struct.nfs_server, ptr %4, i32 0, i32 3
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %91, label %84

84:                                               ; preds = %79
  %85 = getelementptr inbounds %struct.rpc_clnt, ptr %82, i32 0, i32 28
  %86 = load ptr, ptr %85, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %91, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.cred, ptr %86, i32 0, i32 21
  %90 = load ptr, ptr %89, align 4
  br label %91

91:                                               ; preds = %88, %84, %79
  %92 = phi ptr [ %90, %88 ], [ @init_user_ns, %84 ], [ @init_user_ns, %79 ]
  %93 = icmp eq ptr %80, %92
  br i1 %93, label %94, label %157

94:                                               ; preds = %91
  %95 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 10
  %96 = load i32, ptr %95, align 4
  %97 = getelementptr inbounds %struct.fs_context, ptr %1, i32 0, i32 13
  %98 = load i32, ptr %97, align 4
  %99 = xor i32 %98, %96
  %100 = and i32 %99, 31
  %101 = icmp eq i32 %100, 0
  %102 = icmp eq ptr %7, %9
  %103 = select i1 %101, i1 %102, i1 false
  br i1 %103, label %104, label %156

104:                                              ; preds = %94
  %105 = getelementptr inbounds %struct.nfs_server, ptr %4, i32 0, i32 8
  %106 = load i32, ptr %105, align 8
  %107 = xor i32 %106, %60
  %108 = and i32 %107, -825287
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %156

110:                                              ; preds = %104
  %111 = getelementptr inbounds %struct.nfs_server, ptr %6, i32 0, i32 13
  %112 = load i32, ptr %111, align 4
  %113 = getelementptr inbounds %struct.nfs_server, ptr %4, i32 0, i32 13
  %114 = load i32, ptr %113, align 4
  %115 = icmp eq i32 %112, %114
  br i1 %115, label %116, label %156

116:                                              ; preds = %110
  %117 = getelementptr inbounds %struct.nfs_server, ptr %6, i32 0, i32 11
  %118 = load i32, ptr %117, align 4
  %119 = getelementptr inbounds %struct.nfs_server, ptr %4, i32 0, i32 11
  %120 = load i32, ptr %119, align 4
  %121 = icmp eq i32 %118, %120
  br i1 %121, label %122, label %156

122:                                              ; preds = %116
  %123 = getelementptr inbounds %struct.nfs_server, ptr %6, i32 0, i32 22
  %124 = load i32, ptr %123, align 8
  %125 = getelementptr inbounds %struct.nfs_server, ptr %4, i32 0, i32 22
  %126 = load i32, ptr %125, align 8
  %127 = icmp eq i32 %124, %126
  br i1 %127, label %128, label %156

128:                                              ; preds = %122
  %129 = getelementptr inbounds %struct.nfs_server, ptr %6, i32 0, i32 23
  %130 = load i32, ptr %129, align 4
  %131 = getelementptr inbounds %struct.nfs_server, ptr %4, i32 0, i32 23
  %132 = load i32, ptr %131, align 4
  %133 = icmp eq i32 %130, %132
  br i1 %133, label %134, label %156

134:                                              ; preds = %128
  %135 = getelementptr inbounds %struct.nfs_server, ptr %6, i32 0, i32 24
  %136 = load i32, ptr %135, align 8
  %137 = getelementptr inbounds %struct.nfs_server, ptr %4, i32 0, i32 24
  %138 = load i32, ptr %137, align 8
  %139 = icmp eq i32 %136, %138
  br i1 %139, label %140, label %156

140:                                              ; preds = %134
  %141 = getelementptr inbounds %struct.nfs_server, ptr %6, i32 0, i32 25
  %142 = load i32, ptr %141, align 4
  %143 = getelementptr inbounds %struct.nfs_server, ptr %4, i32 0, i32 25
  %144 = load i32, ptr %143, align 4
  %145 = icmp eq i32 %142, %144
  br i1 %145, label %146, label %156

146:                                              ; preds = %140
  %147 = getelementptr inbounds %struct.rpc_clnt, ptr %70, i32 0, i32 11
  %148 = load ptr, ptr %147, align 4
  %149 = getelementptr inbounds %struct.rpc_auth, ptr %148, i32 0, i32 6
  %150 = load i32, ptr %149, align 4
  %151 = getelementptr inbounds %struct.rpc_clnt, ptr %82, i32 0, i32 11
  %152 = load ptr, ptr %151, align 4
  %153 = getelementptr inbounds %struct.rpc_auth, ptr %152, i32 0, i32 6
  %154 = load i32, ptr %153, align 4
  %155 = icmp eq i32 %150, %154
  br i1 %155, label %157, label %156

156:                                              ; preds = %146, %140, %134, %128, %122, %116, %110, %104, %94
  br label %157

157:                                              ; preds = %156, %146, %91, %63, %58, %52, %27, %21, %15, %14, %2
  %158 = phi i32 [ 0, %58 ], [ 0, %63 ], [ 0, %91 ], [ 0, %156 ], [ 1, %146 ], [ 0, %52 ], [ 0, %21 ], [ 0, %2 ], [ 0, %14 ], [ 0, %15 ], [ 0, %27 ]
  ret i32 %158
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sget_fc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs_set_super(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr inbounds %struct.fs_context, ptr %1, i32 0, i32 12
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.nfs_client, ptr %5, i32 0, i32 12
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nfs_rpc_ops, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 39
  store ptr %9, ptr %10, align 16
  %11 = tail call i32 @set_anon_super(ptr noundef %0, ptr noundef %4) #14
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 1
  %15 = load i32, ptr %14, align 8
  %16 = getelementptr inbounds %struct.nfs_server, ptr %4, i32 0, i32 35
  store i32 %15, ptr %16, align 8
  br label %17

17:                                               ; preds = %13, %2
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @logfc(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_free_server(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @super_setup_bdi_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_get_root(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @deactivate_locked_super(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs_kill_super(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 8
  tail call void @generic_shutdown_super(ptr noundef %0) #14
  tail call void @nfs_free_server(ptr noundef %3) #14
  tail call void @free_anon_bdev(i32 noundef %5) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_shutdown_super(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_anon_bdev(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_access_cache_count(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_access_cache_scan(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_ssc_register(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_ssc_unregister(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_escape_mem(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpcauth_get_gssinfo(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_mount(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #10

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @rpc_cmp_addr(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #11 {
  %3 = load i16, ptr %0, align 2
  %4 = load i16, ptr %1, align 2
  %5 = icmp eq i16 %3, %4
  br i1 %5, label %6, label %48

6:                                                ; preds = %2
  switch i16 %3, label %48 [
    i16 2, label %7
    i16 10, label %10
  ]

7:                                                ; preds = %6
  %8 = getelementptr inbounds %struct.sockaddr_in, ptr %0, i32 0, i32 2
  %9 = getelementptr inbounds %struct.sockaddr_in, ptr %1, i32 0, i32 2
  br label %42

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.sockaddr_in6, ptr %0, i32 0, i32 3
  %12 = getelementptr inbounds %struct.sockaddr_in6, ptr %1, i32 0, i32 3
  %13 = load i32, ptr %11, align 4
  %14 = load i32, ptr %12, align 4
  %15 = xor i32 %14, %13
  %16 = getelementptr %struct.sockaddr_in6, ptr %0, i32 0, i32 3, i32 0, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr %struct.sockaddr_in6, ptr %1, i32 0, i32 3, i32 0, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = xor i32 %19, %17
  %21 = or i32 %20, %15
  %22 = getelementptr %struct.sockaddr_in6, ptr %0, i32 0, i32 3, i32 0, i32 0, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr %struct.sockaddr_in6, ptr %1, i32 0, i32 3, i32 0, i32 0, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = xor i32 %25, %23
  %27 = or i32 %21, %26
  %28 = getelementptr %struct.sockaddr_in6, ptr %0, i32 0, i32 3, i32 0, i32 0, i32 3
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr %struct.sockaddr_in6, ptr %1, i32 0, i32 3, i32 0, i32 0, i32 3
  %31 = load i32, ptr %30, align 4
  %32 = xor i32 %31, %29
  %33 = or i32 %27, %32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %10
  %36 = tail call i32 @__ipv6_addr_type(ptr noundef %11) #14
  %37 = and i32 %36, 32
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.sockaddr_in6, ptr %0, i32 0, i32 4
  %41 = getelementptr inbounds %struct.sockaddr_in6, ptr %1, i32 0, i32 4
  br label %42

42:                                               ; preds = %39, %7
  %43 = phi ptr [ %41, %39 ], [ %9, %7 ]
  %44 = phi ptr [ %40, %39 ], [ %8, %7 ]
  %45 = load i32, ptr %44, align 4
  %46 = load i32, ptr %43, align 4
  %47 = icmp eq i32 %45, %46
  br label %48

48:                                               ; preds = %42, %35, %10, %6, %2
  %49 = phi i1 [ false, %6 ], [ false, %2 ], [ false, %10 ], [ true, %35 ], [ %47, %42 ]
  ret i1 %49
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ipv6_addr_type(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_anon_super(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @param_set_portnr(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = icmp eq ptr %0, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %2
  %6 = call i32 @_kstrtoul(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull %3) #14
  %7 = icmp ne i32 %6, 0
  %8 = load i32, ptr %3, align 4
  %9 = icmp ugt i32 %8, 65535
  %10 = select i1 %7, i1 true, i1 %9
  br i1 %10, label %14, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.kernel_param, ptr %1, i32 0, i32 6
  %13 = load ptr, ptr %12, align 4
  store i32 %8, ptr %13, align 4
  br label %14

14:                                               ; preds = %11, %5, %2
  %15 = phi i32 [ 0, %11 ], [ -22, %2 ], [ -22, %5 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @param_get_uint(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

attributes #0 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { argmemonly nofree nounwind readonly willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind readonly willreturn }

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
!8 = !{!"auto-init"}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2149080585}
!11 = !{i64 2149080802}
!12 = !{i64 2156448989}
!13 = !{i64 2156449778}
!14 = !{i64 2148078598}
!15 = !{i64 577705, i64 2148067676, i64 2148067702, i64 2148067749, i64 2148067771, i64 2148067799, i64 2148067819}
!16 = !{i64 564274, i64 564299, i64 564321, i64 564337, i64 564349, i64 564369, i64 564393, i64 564409, i64 564421}
!17 = !{i64 2148078724}
!18 = !{i64 2148176937}
!19 = !{i64 2148079775, i64 2148079807, i64 2148079836, i64 2148079870, i64 2148079901, i64 2148079924}
!20 = !{i64 2148177140}
!21 = !{i64 2148081448, i64 2148081474, i64 2148081503, i64 2148081537, i64 2148081568, i64 2148081591}
!22 = !{i64 2148179770}
!23 = !{i64 2148082132, i64 2148082164, i64 2148082193, i64 2148082227, i64 2148082258, i64 2148082281}
!24 = !{i64 2148179973}
!25 = !{i8 0, i8 2}
