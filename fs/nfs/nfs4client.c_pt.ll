; ModuleID = '/llk/IR/fs/nfs/nfs4client.c_pt.bc'
source_filename = "../fs/nfs/nfs4client.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs4_find_or_create_ds_client:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs4_find_or_create_ds_client\22\09\09\09\09\09"
module asm "__kstrtabns_nfs4_find_or_create_ds_client:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs4_set_ds_client:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs4_set_ds_client\22\09\09\09\09\09"
module asm "__kstrtabns_nfs4_set_ds_client:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type {}
%struct.nfs_subversion = type opaque
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.148, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.149, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.150, ptr, %struct.address_space, %struct.list_head, %union.anon.151, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.148 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.149 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.150 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.151 = type { ptr }
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
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.nfs_server = type { ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.nfs_fsid, i64, %struct.timespec64, i32, ptr, i32, %struct.nfs_auth_info, i32, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, i32, ptr, %struct.rpc_wait_queue, ptr, %struct.rb_root, %struct.ida, %struct.ida, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, ptr, %struct.atomic_t, %struct.__kernel_sockaddr_storage, i32, i32, i16, i16, %struct.rpc_wait_queue, i32, ptr, i8 }
%struct.nfs_fsid = type { i64, i64 }
%struct.nfs_auth_info = type { i32, [12 x i32] }
%struct.ida = type { %struct.xarray }
%struct.__kernel_sockaddr_storage = type { %union.anon.125 }
%union.anon.125 = type { ptr, [124 x i8] }
%struct.rpc_wait_queue = type { %struct.spinlock, [4 x %struct.list_head], i8, i8, i8, i16, %struct.rpc_timer, ptr }
%struct.rpc_timer = type { %struct.list_head, i32, %struct.delayed_work }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.rpc_clnt = type { %struct.refcount_struct, i32, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.spinlock, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i8, ptr, ptr, %struct.atomic_t, i32, [65 x i8], %struct.rpc_pipe_dir_head, ptr, %struct.rpc_rtt, %struct.rpc_timeout, ptr, ptr, ptr, %union.anon.147, ptr, i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rpc_pipe_dir_head = type { %struct.list_head, ptr }
%struct.rpc_rtt = type { i32, [5 x i32], [5 x i32], [5 x i32] }
%struct.rpc_timeout = type { i32, i32, i32, i32, i8 }
%union.anon.147 = type { %struct.work_struct }
%struct.rpc_auth = type { i32, i32, i32, i32, i32, ptr, i32, %struct.refcount_struct, ptr }
%struct.nfs_client = type { %struct.refcount_struct, %struct.atomic_t, i32, i32, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32, i32, i32, ptr, %struct.list_head, i64, %struct.nfs4_verifier, i32, %struct.spinlock, i32, i32, %struct.delayed_work, %struct.rpc_wait_queue, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i8, ptr, ptr, ptr, i32, %struct.wait_queue_head, [48 x i8], ptr, %struct.list_head }
%struct.nfs4_verifier = type { [8 x i8] }
%struct.nfs4_ds_server = type { %struct.list_head, ptr }
%struct.nfs_client_initdata = type { i32, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type {}
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.19, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.19 = type { %struct.anon.20 }
%struct.anon.20 = type { ptr, i32, i32, i32 }
%struct.raw_notifier_head = type { ptr }
%struct.netns_core = type { ptr, i32, ptr }
%struct.netns_mib = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netns_packet = type { %struct.mutex, %struct.hlist_head }
%struct.netns_unix = type { i32, ptr }
%struct.netns_nexthop = type { %struct.rb_root, ptr, i32, i32, %struct.blocking_notifier_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.netns_ipv4 = type { %struct.inet_timewait_death_row, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i32, i32, i32, i32, %struct.local_ports, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, ptr, ptr, i32, %struct.atomic_t, i32, i32, i32, i8, i8, i32, i32, i32, %struct.ping_group_range, %struct.atomic_t, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, %struct.siphash_key_t, [40 x i8] }
%struct.inet_timewait_death_row = type { %struct.atomic_t, [60 x i8], ptr, i32 }
%struct.local_ports = type { %struct.seqlock_t, [2 x i32], i8 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.94, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.94 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.nfs_net = type { ptr, ptr, %struct.bl_dev_msg, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, %struct.idr, i16, i16, [3 x i32], ptr, %struct.spinlock, i64, ptr }
%struct.bl_dev_msg = type { i32, i32, i32 }
%struct.nfs4_minor_version_ops = type { i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xprt_create = type { i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32 }
%struct.nfs4_setclientid_res = type { i64, %struct.nfs4_verifier }
%struct.nfs41_server_owner = type { i64, i32, [1024 x i8] }
%struct.nfs41_exchange_id_res = type { i64, i32, i32, ptr, ptr, ptr, %struct.nfs41_state_protection }
%struct.nfs41_state_protection = type { i32, %struct.nfs4_op_map, %struct.nfs4_op_map }
%struct.nfs4_op_map = type { %union.anon.160 }
%union.anon.160 = type { [3 x i32] }
%struct.nfs41_server_scope = type { i32, [1024 x i8] }
%struct.rpc_xprt = type { %struct.kref, ptr, i32, ptr, %struct.__kernel_sockaddr_storage, i32, i32, i32, i32, i32, %struct.rpc_wait_queue, %struct.rpc_wait_queue, %struct.rpc_wait_queue, %struct.rpc_wait_queue, %struct.list_head, i32, i32, i32, i32, i8, %struct.atomic_t, i32, %struct.list_head, i32, i32, i32, %struct.work_struct, %struct.timer_list, i32, i32, i32, i32, %struct.atomic_t, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, ptr, %struct.list_head, %struct.atomic_t, ptr, ptr, i32, i32, %struct.atomic_t, %struct.spinlock, %struct.list_head, %struct.rb_root, %struct.anon.146, ptr, ptr, [6 x ptr], %struct.callback_head, ptr, ptr, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.anon.146 = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.59 }
%union.anon.59 = type { [4 x i32] }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.fs_context = type { ptr, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.p_log, ptr, ptr, ptr, i32, i32, i32, i32, i24 }
%struct.p_log = type { ptr, ptr }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.86 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.86 = type { %struct.callback_head }
%struct.nfs_fs_context = type { i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.nfs_auth_info, i32, ptr, i32, i32, ptr, i16, i16, i8, %struct.anon.161, %struct.anon.163, ptr, ptr, ptr, %struct.nfs_clone_mount }
%struct.anon.161 = type { %union.anon.162, i32, ptr, i32, i32, i16 }
%union.anon.162 = type { %struct.__kernel_sockaddr_storage }
%struct.anon.163 = type { %union.anon.164, i32, ptr, ptr, i32, i16, i16, i16, i16 }
%union.anon.164 = type { %struct.__kernel_sockaddr_storage }
%struct.nfs_clone_mount = type { ptr, ptr, ptr, i32 }
%struct.nfs4_session = type { %struct.nfs4_sessionid, i32, i32, i32, i32, %struct.nfs4_channel_attrs, %struct.nfs4_slot_table, %struct.nfs4_channel_attrs, %struct.nfs4_slot_table, ptr }
%struct.nfs4_sessionid = type { [16 x i8] }
%struct.nfs4_channel_attrs = type { i32, i32, i32, i32, i32 }
%struct.nfs4_slot_table = type { ptr, ptr, [32 x i32], %struct.spinlock, %struct.rpc_wait_queue, %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, i32, i32, %struct.completion, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.122, %struct.list_head, %struct.list_head, %union.anon.123 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.4, ptr }
%union.anon.4 = type { i64 }
%struct.lockref = type { %union.anon.6 }
%union.anon.6 = type { i64 }
%union.anon.122 = type { %struct.list_head }
%union.anon.123 = type { %struct.hlist_node }

@__kstrtab_nfs4_find_or_create_ds_client = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs4_find_or_create_ds_client = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs4_find_or_create_ds_client = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs4_find_or_create_ds_client to i32), ptr @__kstrtab_nfs4_find_or_create_ds_client, ptr @__kstrtabns_nfs4_find_or_create_ds_client }, section "___ksymtab_gpl+nfs4_find_or_create_ds_client", align 4
@.str = private unnamed_addr constant [11 x i8] c"NFS client\00", align 1
@nfs_v4_minor_ops = external dso_local local_unnamed_addr global [0 x ptr], align 4
@nfs4_alloc_client.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"&clp->cl_lock_waitq\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"NFSv4.0 transport Slot table\00", align 1
@nfs_net_id = external dso_local local_unnamed_addr global i32, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"\016NFS:  %s: Session trunking succeeded for %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"\016NFS:  %s: Session trunking failed for %s\0A\00", align 1
@nfs_v4 = external dso_local global %struct.nfs_subversion, align 1
@__kstrtab_nfs4_set_ds_client = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs4_set_ds_client = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs4_set_ds_client = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs4_set_ds_client to i32), ptr @__kstrtab_nfs4_set_ds_client, ptr @__kstrtabns_nfs4_set_ds_client }, section "___ksymtab_gpl+nfs4_set_ds_client", align 4
@nfs4_disable_idmapping = external dso_local local_unnamed_addr global i8, align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@nfs41_maxread_overhead = external dso_local local_unnamed_addr constant i32, align 4
@nfs41_maxwrite_overhead = external dso_local local_unnamed_addr constant i32, align 4
@nfs42_maxgetxattr_overhead = external dso_local local_unnamed_addr constant i32, align 4
@nfs42_maxsetxattr_overhead = external dso_local local_unnamed_addr constant i32, align 4
@nfs42_maxlistxattrs_overhead = external dso_local local_unnamed_addr constant i32, align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_nfs4_find_or_create_ds_client, ptr @__ksymtab_nfs4_set_ds_client], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nfs4_find_or_create_ds_client(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 27
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nfs_server, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.rpc_clnt, ptr %8, i32 0, i32 11
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.rpc_auth, ptr %10, i32 0, i32 6
  %12 = load i32, ptr %11, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !9
  %13 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 19
  br label %14

14:                                               ; preds = %19, %2
  %15 = phi ptr [ %13, %2 ], [ %16, %19 ]
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, %13
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !10
  br label %29

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.nfs4_ds_server, ptr %16, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.rpc_clnt, ptr %21, i32 0, i32 11
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.rpc_auth, ptr %23, i32 0, i32 6
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, %12
  br i1 %26, label %27, label %14

27:                                               ; preds = %19
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !10
  %28 = icmp eq ptr %16, null
  br i1 %28, label %29, label %71

29:                                               ; preds = %27, %18
  %30 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %31 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %30, i32 noundef 3136, i32 noundef 12) #15
  %32 = icmp eq ptr %31, null
  br i1 %32, label %75, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 11
  %35 = load ptr, ptr %34, align 8
  %36 = tail call ptr @rpc_clone_client_set_auth(ptr noundef %35, i32 noundef %12) #14
  %37 = getelementptr inbounds %struct.nfs4_ds_server, ptr %31, i32 0, i32 1
  store ptr %36, ptr %37, align 8
  %38 = icmp ugt ptr %36, inttoptr (i32 -4096 to ptr)
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  tail call void @kfree(ptr noundef nonnull %31) #14
  br label %42

40:                                               ; preds = %33
  store volatile ptr %31, ptr %31, align 8
  %41 = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  store ptr %31, ptr %41, align 4
  br label %42

42:                                               ; preds = %40, %39
  %43 = phi ptr [ %36, %39 ], [ %31, %40 ]
  %44 = icmp ugt ptr %43, inttoptr (i32 -4096 to ptr)
  br i1 %44, label %75, label %45

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 23
  tail call void @_raw_spin_lock(ptr noundef %46) #14
  br label %47

47:                                               ; preds = %51, %45
  %48 = phi ptr [ %13, %45 ], [ %49, %51 ]
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, %13
  br i1 %50, label %59, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.nfs4_ds_server, ptr %49, i32 0, i32 1
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.rpc_clnt, ptr %53, i32 0, i32 11
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.rpc_auth, ptr %55, i32 0, i32 6
  %57 = load i32, ptr %56, align 4
  %58 = icmp eq i32 %57, %12
  br i1 %58, label %63, label %47

59:                                               ; preds = %47
  %60 = load ptr, ptr %13, align 4
  store ptr %60, ptr %43, align 4
  %61 = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  store ptr %13, ptr %61, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !11
  store volatile ptr %43, ptr %13, align 4
  %62 = getelementptr inbounds %struct.list_head, ptr %60, i32 0, i32 1
  store ptr %43, ptr %62, align 4
  br label %63

63:                                               ; preds = %59, %51
  %64 = phi ptr [ %43, %59 ], [ %49, %51 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !12
  %65 = load i16, ptr %46, align 4
  %66 = add i16 %65, 1
  store i16 %66, ptr %46, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !15
  %67 = icmp eq ptr %64, %43
  br i1 %67, label %71, label %68

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.nfs4_ds_server, ptr %43, i32 0, i32 1
  %70 = load ptr, ptr %69, align 4
  tail call void @rpc_release_client(ptr noundef %70) #14
  tail call void @kfree(ptr noundef nonnull %43) #14
  br label %71

71:                                               ; preds = %68, %63, %27
  %72 = phi ptr [ %16, %27 ], [ %64, %68 ], [ %43, %63 ]
  %73 = getelementptr inbounds %struct.nfs4_ds_server, ptr %72, i32 0, i32 1
  %74 = load ptr, ptr %73, align 4
  br label %75

75:                                               ; preds = %71, %42, %29
  %76 = phi ptr [ %74, %71 ], [ %43, %42 ], [ inttoptr (i32 -12 to ptr), %29 ]
  ret ptr %76
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs41_shutdown_client(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 36
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %34, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 45
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %17, label %9

9:                                                ; preds = %9, %5
  %10 = phi ptr [ %15, %9 ], [ %7, %5 ]
  %11 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %10, align 4
  %14 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  store ptr %12, ptr %14, align 4
  store volatile ptr %13, ptr %12, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %10, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %11, align 4
  tail call void @kfree(ptr noundef %10) #14
  %15 = load volatile ptr, ptr %6, align 4
  %16 = icmp eq ptr %15, %6
  br i1 %16, label %17, label %9

17:                                               ; preds = %9, %5
  %18 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 19
  %19 = load volatile ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, %18
  br i1 %20, label %31, label %21

21:                                               ; preds = %21, %17
  %22 = phi ptr [ %29, %21 ], [ %19, %17 ]
  %23 = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = load ptr, ptr %22, align 4
  %26 = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  store ptr %24, ptr %26, align 4
  store volatile ptr %25, ptr %24, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %22, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %23, align 4
  %27 = getelementptr inbounds %struct.nfs4_ds_server, ptr %22, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  tail call void @rpc_shutdown_client(ptr noundef %28) #14
  tail call void @kfree(ptr noundef %22) #14
  %29 = load volatile ptr, ptr %18, align 4
  %30 = icmp eq ptr %29, %18
  br i1 %30, label %31, label %21

31:                                               ; preds = %21, %17
  %32 = load ptr, ptr %2, align 4
  tail call void @nfs4_destroy_session(ptr noundef %32) #14
  %33 = tail call i32 @nfs4_destroy_clientid(ptr noundef %0) #14
  br label %34

34:                                               ; preds = %31, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs4_destroy_session(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_destroy_clientid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs40_shutdown_client(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 33
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  tail call void @nfs4_shutdown_slot_table(ptr noundef nonnull %3) #14
  %6 = load ptr, ptr %2, align 8
  tail call void @kfree(ptr noundef %6) #14
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs4_shutdown_slot_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nfs4_alloc_client(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [49 x i8], align 1
  %3 = alloca %struct.__kernel_sockaddr_storage, align 4
  call void @llvm.lifetime.start.p0(i64 49, ptr nonnull %2) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(49) %2, i8 0, i32 49, i1 false), !annotation !16
  %4 = getelementptr inbounds %struct.nfs_client_initdata, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = tail call ptr @nfs_alloc_client(ptr noundef %0) #14
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %101, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.nfs_client_initdata, ptr %0, i32 0, i32 8
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.nfs_client, ptr %6, i32 0, i32 44
  %12 = load ptr, ptr %11, align 8
  %13 = load i32, ptr @nfs_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !9
  %14 = getelementptr inbounds %struct.net, ptr %12, i32 0, i32 37
  %15 = load volatile ptr, ptr %14, align 64
  %16 = getelementptr [0 x ptr], ptr %15, i32 0, i32 %13
  %17 = load ptr, ptr %16, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !10
  %18 = getelementptr inbounds %struct.nfs_client, ptr %6, i32 0, i32 12
  %19 = load ptr, ptr %18, align 4
  %20 = load i32, ptr %19, align 4
  %21 = icmp ne i32 %20, 4
  %22 = icmp ne i32 %10, 0
  %23 = or i1 %22, %21
  br i1 %23, label %38, label %24

24:                                               ; preds = %8
  tail call void @idr_preload(i32 noundef 3264) #14
  %25 = getelementptr inbounds %struct.nfs_net, ptr %17, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %25) #14
  %26 = getelementptr inbounds %struct.nfs_net, ptr %17, i32 0, i32 7
  %27 = tail call i32 @idr_alloc(ptr noundef %26, ptr noundef %6, i32 noundef 1, i32 noundef 0, i32 noundef 2048) #14
  %28 = icmp sgt i32 %27, -1
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.nfs_client, ptr %6, i32 0, i32 30
  store i32 %27, ptr %30, align 4
  br label %31

31:                                               ; preds = %29, %24
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !12
  %32 = load i16, ptr %25, align 4
  %33 = add i16 %32, 1
  store i16 %33, ptr %25, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !15
  %34 = tail call i32 @llvm.read_register.i32(metadata !0) #14
  %35 = inttoptr i32 %34 to ptr
  %36 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %35) #10, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !18
  %37 = tail call i32 @llvm.smin.i32(i32 %27, i32 0) #14
  br i1 %28, label %38, label %98

38:                                               ; preds = %31, %8
  %39 = load i32, ptr %9, align 4
  %40 = icmp ugt i32 %39, 2
  br i1 %40, label %98, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.nfs_client, ptr %6, i32 0, i32 23
  store i32 0, ptr %42, align 4
  %43 = getelementptr inbounds %struct.nfs_client, ptr %6, i32 0, i32 26
  store i32 -32, ptr %43, align 8
  %44 = getelementptr inbounds %struct.nfs_client, ptr %6, i32 0, i32 26, i32 0, i32 1
  store volatile ptr %44, ptr %44, align 4
  %45 = getelementptr inbounds %struct.nfs_client, ptr %6, i32 0, i32 26, i32 0, i32 1, i32 1
  store ptr %44, ptr %45, align 4
  %46 = getelementptr inbounds %struct.nfs_client, ptr %6, i32 0, i32 26, i32 0, i32 2
  store ptr @nfs4_renew_state, ptr %46, align 4
  %47 = getelementptr inbounds %struct.nfs_client, ptr %6, i32 0, i32 26, i32 1
  tail call void @init_timer_key(ptr noundef %47, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #14
  %48 = getelementptr inbounds %struct.nfs_client, ptr %6, i32 0, i32 19
  store volatile ptr %48, ptr %48, align 4
  %49 = getelementptr inbounds %struct.nfs_client, ptr %6, i32 0, i32 19, i32 1
  store ptr %48, ptr %49, align 4
  %50 = getelementptr inbounds %struct.nfs_client, ptr %6, i32 0, i32 27
  tail call void @rpc_init_wait_queue(ptr noundef %50, ptr noundef nonnull @.str) #14
  %51 = getelementptr inbounds %struct.nfs_client, ptr %6, i32 0, i32 22
  store i32 4, ptr %51, align 8
  %52 = load i32, ptr %9, align 4
  %53 = getelementptr [0 x ptr], ptr @nfs_v4_minor_ops, i32 0, i32 %52
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.nfs_client, ptr %6, i32 0, i32 31
  store ptr %54, ptr %55, align 8
  %56 = getelementptr inbounds %struct.nfs_client, ptr %6, i32 0, i32 32
  store i32 1, ptr %56, align 4
  %57 = getelementptr inbounds %struct.nfs_client, ptr %6, i32 0, i32 42
  tail call void @__init_waitqueue_head(ptr noundef %57, ptr noundef nonnull @.str.1, ptr noundef nonnull @nfs4_alloc_client.__key) #14
  %58 = getelementptr inbounds %struct.nfs_client, ptr %6, i32 0, i32 45
  store volatile ptr %58, ptr %58, align 4
  %59 = getelementptr inbounds %struct.nfs_client, ptr %6, i32 0, i32 45, i32 1
  store ptr %58, ptr %59, align 4
  %60 = load i32, ptr %9, align 4
  %61 = icmp eq i32 %60, 0
  %62 = getelementptr inbounds %struct.nfs_client, ptr %6, i32 0, i32 4
  %63 = load i32, ptr %62, align 4
  %64 = or i32 %63, 8
  %65 = select i1 %61, i32 %63, i32 %64
  %66 = getelementptr inbounds %struct.nfs_client, ptr %6, i32 0, i32 4
  %67 = or i32 %65, 18
  store i32 %67, ptr %66, align 4
  %68 = tail call i32 @nfs_create_rpc_client(ptr noundef %6, ptr noundef %0, i32 noundef 390004) #14
  %69 = icmp eq i32 %68, -22
  br i1 %69, label %70, label %72

70:                                               ; preds = %41
  %71 = tail call i32 @nfs_create_rpc_client(ptr noundef %6, ptr noundef %0, i32 noundef 1) #14
  br label %72

72:                                               ; preds = %70, %41
  %73 = phi i32 [ %71, %70 ], [ %68, %41 ]
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %98, label %75

75:                                               ; preds = %72
  %76 = icmp eq ptr %5, null
  br i1 %76, label %77, label %88

77:                                               ; preds = %75
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(128) %3, i8 0, i32 128, i1 false), !annotation !16
  %78 = getelementptr inbounds %struct.nfs_client, ptr %6, i32 0, i32 11
  %79 = load ptr, ptr %78, align 8
  %80 = call i32 @rpc_localaddr(ptr noundef %79, ptr noundef nonnull %3, i32 noundef 128) #14
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %77
  %83 = call i32 @rpc_ntop(ptr noundef nonnull %3, ptr noundef nonnull %2, i32 noundef 49) #14
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %82, %77
  %86 = phi i32 [ %80, %77 ], [ %83, %82 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #14
  br label %98

87:                                               ; preds = %82
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #14
  br label %88

88:                                               ; preds = %87, %75
  %89 = phi ptr [ %2, %87 ], [ %5, %75 ]
  %90 = getelementptr inbounds %struct.nfs_client, ptr %6, i32 0, i32 43
  %91 = call i32 @strlcpy(ptr noundef %90, ptr noundef nonnull %89, i32 noundef 48) #14
  %92 = call i32 @nfs_idmap_new(ptr noundef %6) #14
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %88
  %95 = getelementptr inbounds %struct.nfs_client, ptr %6, i32 0, i32 3
  %96 = load i32, ptr %95, align 4
  %97 = or i32 %96, 4
  store i32 %97, ptr %95, align 4
  br label %101

98:                                               ; preds = %88, %85, %72, %38, %31
  %99 = phi i32 [ %37, %31 ], [ %73, %72 ], [ %92, %88 ], [ -22, %38 ], [ %86, %85 ]
  call void @nfs_free_client(ptr noundef %6) #14
  %100 = inttoptr i32 %99 to ptr
  br label %101

101:                                              ; preds = %98, %94, %1
  %102 = phi ptr [ %100, %98 ], [ %6, %94 ], [ %6, %1 ]
  call void @llvm.lifetime.end.p0(i64 49, ptr nonnull %2) #14
  ret ptr %102
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs_alloc_client(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs4_renew_state(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_init_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_create_rpc_client(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpc_localaddr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpc_ntop(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_idmap_new(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_free_client(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs4_free_client(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 3
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, -9
  store i32 %4, ptr %2, align 4
  %5 = and i32 %3, 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void @nfs4_kill_renewd(ptr noundef %0) #14
  br label %8

8:                                                ; preds = %7, %1
  %9 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 31
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.nfs4_minor_version_ops, ptr %10, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  tail call void %12(ptr noundef %0) #14
  %13 = load i32, ptr %2, align 4
  %14 = and i32 %13, -3
  store i32 %14, ptr %2, align 4
  %15 = and i32 %13, 2
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %8
  %18 = load ptr, ptr %9, align 8
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 44
  %21 = load ptr, ptr %20, align 8
  tail call void @nfs_callback_down(i32 noundef %19, ptr noundef %21) #14
  %22 = load i32, ptr %2, align 4
  br label %23

23:                                               ; preds = %17, %8
  %24 = phi i32 [ %14, %8 ], [ %22, %17 ]
  %25 = and i32 %24, -5
  store i32 %25, ptr %2, align 4
  %26 = and i32 %24, 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  tail call void @nfs_idmap_delete(ptr noundef %0) #14
  br label %29

29:                                               ; preds = %28, %23
  %30 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 27
  tail call void @rpc_destroy_wait_queue(ptr noundef %30) #14
  %31 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 38
  %32 = load ptr, ptr %31, align 4
  tail call void @kfree(ptr noundef %32) #14
  %33 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 39
  %34 = load ptr, ptr %33, align 8
  tail call void @kfree(ptr noundef %34) #14
  %35 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 40
  %36 = load ptr, ptr %35, align 4
  tail call void @kfree(ptr noundef %36) #14
  %37 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 29
  %38 = load ptr, ptr %37, align 8
  tail call void @kfree(ptr noundef %38) #14
  tail call void @nfs_free_client(ptr noundef %0) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs40_init_client(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3392, i32 noundef 308) #15
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @nfs4_setup_slot_table(ptr noundef nonnull %3, i32 noundef 1024, ptr noundef nonnull @.str.2) #14
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %5
  tail call void @kfree(ptr noundef nonnull %3) #14
  br label %11

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 33
  store ptr %3, ptr %10, align 8
  br label %11

11:                                               ; preds = %9, %8, %1
  %12 = phi i32 [ %6, %8 ], [ 0, %9 ], [ -12, %1 ]
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_setup_slot_table(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs41_init_client(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @nfs4_alloc_session(ptr noundef %0) #14
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 36
  store ptr %2, ptr %5, align 4
  tail call void @nfs_mark_client_ready(ptr noundef %0, i32 noundef 2) #14
  br label %6

6:                                                ; preds = %4, %1
  %7 = phi i32 [ 0, %4 ], [ -12, %1 ]
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs4_alloc_session(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_mark_client_ready(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nfs4_init_client(ptr noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = alloca %struct.__kernel_sockaddr_storage, align 4
  %4 = alloca %struct.__kernel_sockaddr_storage, align 4
  %5 = alloca %struct.xprt_create, align 4
  %6 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #14
  store ptr null, ptr %6, align 4, !annotation !16
  %7 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 2
  %8 = load i32, ptr %7, align 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %91, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 31
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.nfs4_minor_version_ops, ptr %12, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 %14(ptr noundef %0) #14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %37

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 11
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.rpc_clnt, ptr %19, i32 0, i32 6
  %21 = load volatile ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 36
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %17
  %26 = tail call i32 @xprt_setup_backchannel(ptr noundef %21, i32 noundef 1) #14
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %88, label %28

28:                                               ; preds = %25, %17
  %29 = load ptr, ptr %11, align 8
  %30 = load i32, ptr %29, align 4
  %31 = tail call i32 @nfs_callback_up(i32 noundef %30, ptr noundef %21) #14
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %88, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 3
  %35 = load i32, ptr %34, align 4
  %36 = or i32 %35, 2
  store i32 %36, ptr %34, align 4
  br label %39

37:                                               ; preds = %10
  %38 = icmp slt i32 %15, 0
  br i1 %38, label %88, label %39

39:                                               ; preds = %37, %33
  %40 = call i32 @nfs4_discover_server_trunking(ptr noundef %0, ptr noundef nonnull %6) #14
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %88, label %42

42:                                               ; preds = %39
  %43 = load ptr, ptr %6, align 4
  %44 = icmp eq ptr %43, %0
  br i1 %44, label %85, label %45

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 37
  store i8 1, ptr %46, align 8
  call void @nfs_mark_client_ready(ptr noundef %0, i32 noundef -1) #14
  %47 = load ptr, ptr %6, align 4
  %48 = getelementptr inbounds %struct.nfs_client, ptr %47, i32 0, i32 31
  %49 = load ptr, ptr %48, align 8
  %50 = getelementptr inbounds %struct.nfs4_minor_version_ops, ptr %49, i32 0, i32 9
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %85, label %53

53:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(128) %3, i8 0, i32 128, i1 false) #14, !annotation !16
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(128) %4, i8 0, i32 128, i1 false) #14, !annotation !16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #14
  %54 = getelementptr inbounds %struct.nfs_client, ptr %47, i32 0, i32 13
  %55 = load i32, ptr %54, align 8
  store i32 %55, ptr %5, align 4
  %56 = getelementptr inbounds %struct.xprt_create, ptr %5, i32 0, i32 1
  %57 = getelementptr inbounds %struct.nfs_client, ptr %47, i32 0, i32 44
  %58 = load ptr, ptr %57, align 8
  store ptr %58, ptr %56, align 4
  %59 = getelementptr inbounds %struct.xprt_create, ptr %5, i32 0, i32 2
  store ptr null, ptr %59, align 4
  %60 = getelementptr inbounds %struct.xprt_create, ptr %5, i32 0, i32 3
  %61 = getelementptr inbounds %struct.xprt_create, ptr %5, i32 0, i32 4
  %62 = getelementptr inbounds %struct.xprt_create, ptr %5, i32 0, i32 5
  %63 = getelementptr inbounds %struct.nfs_client, ptr %47, i32 0, i32 7
  %64 = load ptr, ptr %63, align 8
  store ptr %64, ptr %62, align 4
  %65 = getelementptr inbounds %struct.xprt_create, ptr %5, i32 0, i32 6
  store ptr null, ptr %65, align 4
  %66 = getelementptr inbounds %struct.xprt_create, ptr %5, i32 0, i32 7
  store ptr null, ptr %66, align 4
  %67 = getelementptr inbounds %struct.xprt_create, ptr %5, i32 0, i32 8
  store i32 0, ptr %67, align 4
  %68 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 13
  %69 = load i32, ptr %68, align 8
  %70 = icmp eq i32 %69, %55
  br i1 %70, label %71, label %84

71:                                               ; preds = %53
  %72 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 11
  %73 = load ptr, ptr %72, align 8
  %74 = call i32 @rpc_peeraddr(ptr noundef %73, ptr noundef nonnull %3, i32 noundef 128) #14
  %75 = getelementptr inbounds %struct.nfs_client, ptr %47, i32 0, i32 11
  %76 = load ptr, ptr %75, align 8
  %77 = call i32 @rpc_peeraddr(ptr noundef %76, ptr noundef nonnull %4, i32 noundef 128) #14
  %78 = load i16, ptr %3, align 4
  %79 = load i16, ptr %4, align 4
  %80 = icmp eq i16 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %71
  store ptr %3, ptr %60, align 4
  store i32 %74, ptr %61, align 4
  %82 = load ptr, ptr %75, align 8
  %83 = call i32 @rpc_clnt_add_xprt(ptr noundef %82, ptr noundef nonnull %5, ptr noundef nonnull @rpc_clnt_test_and_add_xprt, ptr noundef null) #14
  br label %84

84:                                               ; preds = %81, %71, %53
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #14
  br label %85

85:                                               ; preds = %84, %45, %42
  %86 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 4
  call void @_clear_bit(i32 noundef 5, ptr noundef %86) #14
  call void @nfs_put_client(ptr noundef %0) #14
  %87 = load ptr, ptr %6, align 4
  br label %91

88:                                               ; preds = %39, %37, %28, %25
  %89 = phi i32 [ %15, %37 ], [ %40, %39 ], [ %31, %28 ], [ %26, %25 ]
  call void @nfs_mark_client_ready(ptr noundef %0, i32 noundef %89) #14
  call void @nfs_put_client(ptr noundef %0) #14
  %90 = inttoptr i32 %89 to ptr
  br label %91

91:                                               ; preds = %88, %85, %2
  %92 = phi ptr [ %90, %88 ], [ %87, %85 ], [ %0, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  ret ptr %92
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_discover_server_trunking(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_put_client(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs40_walk_client_list(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 4
  %5 = alloca %struct.nfs4_setclientid_res, align 8
  %6 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 44
  %7 = load ptr, ptr %6, align 8
  %8 = load i32, ptr @nfs_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !9
  %9 = getelementptr inbounds %struct.net, ptr %7, i32 0, i32 37
  %10 = load volatile ptr, ptr %9, align 64
  %11 = getelementptr [0 x ptr], ptr %10, i32 0, i32 %8
  %12 = load ptr, ptr %11, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  store ptr null, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #14
  %13 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 20
  %14 = load i64, ptr %13, align 8
  store i64 %14, ptr %5, align 8
  %15 = getelementptr inbounds %struct.nfs4_setclientid_res, ptr %5, i32 0, i32 1
  %16 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 21
  %17 = load i64, ptr %16, align 8
  store i64 %17, ptr %15, align 8
  %18 = getelementptr inbounds %struct.nfs_net, ptr %12, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %18) #14
  %19 = getelementptr inbounds %struct.nfs_net, ptr %12, i32 0, i32 5
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, %19
  br i1 %21, label %84, label %22

22:                                               ; preds = %77, %3
  %23 = phi ptr [ %79, %77 ], [ %20, %3 ]
  %24 = getelementptr i8, ptr %23, i32 -160
  %25 = icmp eq ptr %24, %0
  br i1 %25, label %35, label %26

26:                                               ; preds = %22
  %27 = call fastcc i32 @nfs4_match_client(ptr noundef %24, ptr noundef %0, ptr noundef nonnull %4, ptr noundef %12)
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %81, label %29

29:                                               ; preds = %26
  %30 = icmp eq i32 %27, 0
  br i1 %30, label %31, label %77

31:                                               ; preds = %29
  %32 = getelementptr i8, ptr %23, i32 64
  %33 = call i32 @bcmp(ptr noundef dereferenceable(8) %32, ptr noundef dereferenceable(8) %16, i32 8) #14
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %77, label %35

35:                                               ; preds = %31, %22
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %24) #14, !srcloc !19
  %36 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %24, ptr %24, i32 1, ptr elementtype(i32) %24) #14, !srcloc !20
  %37 = extractvalue { i32, i32, i32 } %36, 0
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %43, label %39, !prof !21

39:                                               ; preds = %35
  %40 = add i32 %37, 1
  %41 = or i32 %40, %37
  %42 = icmp sgt i32 %41, -1
  br i1 %42, label %45, label %43, !prof !22

43:                                               ; preds = %39, %35
  %44 = phi i32 [ 2, %35 ], [ 1, %39 ]
  call void @refcount_warn_saturate(ptr noundef %24, i32 noundef %44) #14
  br label %45

45:                                               ; preds = %43, %39
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !12
  %46 = load i16, ptr %18, align 4
  %47 = add i16 %46, 1
  store i16 %47, ptr %18, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !13
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !15
  %48 = load ptr, ptr %4, align 4
  call void @nfs_put_client(ptr noundef %48) #14
  store ptr %24, ptr %4, align 4
  %49 = call i32 @nfs4_proc_setclientid_confirm(ptr noundef %24, ptr noundef nonnull %5, ptr noundef %2) #14
  switch i32 %49, label %89 [
    i32 -10022, label %76
    i32 0, label %50
    i32 -512, label %75
    i32 -110, label %75
  ]

50:                                               ; preds = %45
  %51 = getelementptr i8, ptr %23, i32 352
  %52 = load ptr, ptr %51, align 8
  %53 = load i32, ptr @nfs_net_id, align 4
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !9
  %54 = getelementptr inbounds %struct.net, ptr %52, i32 0, i32 37
  %55 = load volatile ptr, ptr %54, align 64
  %56 = getelementptr [0 x ptr], ptr %55, i32 0, i32 %53
  %57 = load ptr, ptr %56, align 4
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !10
  %58 = getelementptr i8, ptr %23, i32 244
  %59 = load i32, ptr %58, align 4
  %60 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 30
  %61 = load i32, ptr %60, align 4
  %62 = icmp eq i32 %59, %61
  br i1 %62, label %72, label %63

63:                                               ; preds = %50
  %64 = getelementptr inbounds %struct.nfs_net, ptr %57, i32 0, i32 12
  call void @_raw_spin_lock(ptr noundef %64) #14
  %65 = getelementptr inbounds %struct.nfs_net, ptr %57, i32 0, i32 7
  %66 = load i32, ptr %60, align 4
  %67 = call ptr @idr_replace(ptr noundef %65, ptr noundef %24, i32 noundef %66) #14
  %68 = load i32, ptr %60, align 4
  store i32 %68, ptr %58, align 4
  %69 = call ptr @idr_replace(ptr noundef %65, ptr noundef %0, i32 noundef %59) #14
  store i32 %59, ptr %60, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !12
  %70 = load i16, ptr %64, align 4
  %71 = add i16 %70, 1
  store i16 %71, ptr %64, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !13
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !15
  br label %72

72:                                               ; preds = %63, %50
  %73 = getelementptr i8, ptr %23, i32 64
  %74 = load i64, ptr %16, align 8
  store i64 %74, ptr %73, align 8
  call void @nfs_mark_client_ready(ptr noundef %24, i32 noundef 0) #14
  store ptr %24, ptr %1, align 4
  br label %89

75:                                               ; preds = %45, %45
  call void @nfs4_schedule_path_down_recovery(ptr noundef %24) #14
  br label %89

76:                                               ; preds = %45
  call void @_raw_spin_lock(ptr noundef %18) #14
  br label %77

77:                                               ; preds = %76, %31, %29
  %78 = phi i32 [ -10022, %76 ], [ 1, %29 ], [ 0, %31 ]
  %79 = load ptr, ptr %23, align 4
  %80 = icmp eq ptr %79, %19
  br i1 %80, label %81, label %22

81:                                               ; preds = %77, %26
  %82 = phi i32 [ %27, %26 ], [ %78, %77 ]
  %83 = load ptr, ptr %4, align 4
  br label %84

84:                                               ; preds = %81, %3
  %85 = phi ptr [ null, %3 ], [ %83, %81 ]
  %86 = phi i32 [ -10022, %3 ], [ %82, %81 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !12
  %87 = load i16, ptr %18, align 4
  %88 = add i16 %87, 1
  store i16 %88, ptr %18, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !13
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !15
  br label %89

89:                                               ; preds = %84, %75, %72, %45
  %90 = phi ptr [ %24, %75 ], [ null, %72 ], [ %85, %84 ], [ %24, %45 ]
  %91 = phi i32 [ %49, %75 ], [ 0, %72 ], [ %86, %84 ], [ %49, %45 ]
  call void @nfs_put_client(ptr noundef %90) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  ret i32 %91
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @nfs4_match_client(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 12
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nfs_client, ptr %1, i32 0, i32 12
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %6, %8
  br i1 %9, label %10, label %60

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 15
  %12 = load i32, ptr %11, align 8
  %13 = getelementptr inbounds %struct.nfs_client, ptr %1, i32 0, i32 15
  %14 = load i32, ptr %13, align 8
  %15 = icmp eq i32 %12, %14
  br i1 %15, label %16, label %60

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 2
  %18 = load i32, ptr %17, align 8
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %39

20:                                               ; preds = %16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #14, !srcloc !19
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 1, ptr elementtype(i32) %0) #14, !srcloc !20
  %22 = extractvalue { i32, i32, i32 } %21, 0
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24, !prof !21

24:                                               ; preds = %20
  %25 = add i32 %22, 1
  %26 = or i32 %25, %22
  %27 = icmp sgt i32 %26, -1
  br i1 %27, label %30, label %28, !prof !22

28:                                               ; preds = %24, %20
  %29 = phi i32 [ 2, %20 ], [ 1, %24 ]
  tail call void @refcount_warn_saturate(ptr noundef %0, i32 noundef %29) #14
  br label %30

30:                                               ; preds = %28, %24
  %31 = getelementptr inbounds %struct.nfs_net, ptr %3, i32 0, i32 12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !12
  %32 = load i16, ptr %31, align 4
  %33 = add i16 %32, 1
  store i16 %33, ptr %31, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !15
  %34 = load ptr, ptr %2, align 4
  tail call void @nfs_put_client(ptr noundef %34) #14
  store ptr %0, ptr %2, align 4
  %35 = tail call i32 @nfs_wait_client_init_complete(ptr noundef %0) #14
  tail call void @_raw_spin_lock(ptr noundef %31) #14
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %60, label %37

37:                                               ; preds = %30
  %38 = load i32, ptr %17, align 8
  br label %39

39:                                               ; preds = %37, %16
  %40 = phi i32 [ %38, %37 ], [ %18, %16 ]
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %60

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 20
  %44 = load i64, ptr %43, align 8
  %45 = getelementptr inbounds %struct.nfs_client, ptr %1, i32 0, i32 20
  %46 = load i64, ptr %45, align 8
  %47 = icmp eq i64 %44, %46
  br i1 %47, label %48, label %60

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 29
  %50 = load ptr, ptr %49, align 8
  %51 = icmp eq ptr %50, null
  br i1 %51, label %59, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.nfs_client, ptr %1, i32 0, i32 29
  %54 = load ptr, ptr %53, align 8
  %55 = icmp eq ptr %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %52
  %57 = tail call i32 @strcmp(ptr noundef nonnull %50, ptr noundef nonnull %54) #14
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %56, %52, %48
  br label %60

60:                                               ; preds = %59, %56, %42, %39, %30, %10, %4
  %61 = phi i32 [ 1, %4 ], [ 1, %10 ], [ %35, %30 ], [ 1, %39 ], [ 1, %42 ], [ 0, %59 ], [ 1, %56 ]
  ret i32 %61
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_proc_setclientid_confirm(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs4_schedule_path_down_recovery(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @nfs4_check_serverowner_major_id(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.nfs41_server_owner, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr inbounds %struct.nfs41_server_owner, ptr %1, i32 0, i32 1
  %6 = load i32, ptr %5, align 8
  %7 = icmp eq i32 %4, %6
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.nfs41_server_owner, ptr %0, i32 0, i32 2
  %10 = getelementptr inbounds %struct.nfs41_server_owner, ptr %1, i32 0, i32 2
  %11 = tail call i32 @bcmp(ptr %9, ptr %10, i32 %4)
  %12 = icmp eq i32 %11, 0
  br label %13

13:                                               ; preds = %8, %2
  %14 = phi i1 [ %12, %8 ], [ false, %2 ]
  ret i1 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs4_detect_session_trunking(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 20
  %5 = load i64, ptr %4, align 8
  %6 = load i64, ptr %1, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %40

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 38
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.nfs41_exchange_id_res, ptr %1, i32 0, i32 3
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.nfs41_server_owner, ptr %10, i32 0, i32 1
  %14 = load i32, ptr %13, align 8
  %15 = getelementptr inbounds %struct.nfs41_server_owner, ptr %12, i32 0, i32 1
  %16 = load i32, ptr %15, align 8
  %17 = icmp eq i32 %14, %16
  br i1 %17, label %18, label %40

18:                                               ; preds = %8
  %19 = getelementptr inbounds %struct.nfs41_server_owner, ptr %10, i32 0, i32 2
  %20 = getelementptr inbounds %struct.nfs41_server_owner, ptr %12, i32 0, i32 2
  %21 = tail call i32 @bcmp(ptr %19, ptr %20, i32 %14) #14
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %40

23:                                               ; preds = %18
  %24 = load i64, ptr %10, align 8
  %25 = load i64, ptr %12, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %40

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 39
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds %struct.nfs41_exchange_id_res, ptr %1, i32 0, i32 4
  %31 = load ptr, ptr %30, align 4
  %32 = load i32, ptr %29, align 4
  %33 = load i32, ptr %31, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.nfs41_server_scope, ptr %29, i32 0, i32 1
  %37 = getelementptr inbounds %struct.nfs41_server_scope, ptr %31, i32 0, i32 1
  %38 = tail call i32 @bcmp(ptr %36, ptr %37, i32 %32) #14
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %35, %27, %23, %18, %8, %3
  br label %41

41:                                               ; preds = %40, %35
  %42 = phi ptr [ @.str.4, %40 ], [ @.str.3, %35 ]
  %43 = phi i32 [ -22, %40 ], [ 0, %35 ]
  %44 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 7
  %45 = load ptr, ptr %44, align 8
  %46 = getelementptr inbounds %struct.rpc_xprt, ptr %2, i32 0, i32 51
  %47 = load ptr, ptr %46, align 8
  %48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %42, ptr noundef %45, ptr noundef %47) #16
  ret i32 %43
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs41_walk_client_list(ptr noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readnone %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 4
  %5 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 44
  %6 = load ptr, ptr %5, align 8
  %7 = load i32, ptr @nfs_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !9
  %8 = getelementptr inbounds %struct.net, ptr %6, i32 0, i32 37
  %9 = load volatile ptr, ptr %8, align 64
  %10 = getelementptr [0 x ptr], ptr %9, i32 0, i32 %7
  %11 = load ptr, ptr %10, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  store ptr null, ptr %4, align 4
  %12 = getelementptr inbounds %struct.nfs_net, ptr %11, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %12) #14
  %13 = getelementptr inbounds %struct.nfs_net, ptr %11, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %13
  br i1 %15, label %56, label %16

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 38
  br label %18

18:                                               ; preds = %53, %16
  %19 = phi ptr [ %14, %16 ], [ %54, %53 ]
  %20 = getelementptr i8, ptr %19, i32 -160
  %21 = icmp eq ptr %20, %0
  br i1 %21, label %41, label %22

22:                                               ; preds = %18
  %23 = call fastcc i32 @nfs4_match_client(ptr noundef %20, ptr noundef %0, ptr noundef nonnull %4, ptr noundef %11)
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %56, label %25

25:                                               ; preds = %22
  %26 = icmp eq i32 %23, 0
  br i1 %26, label %27, label %53

27:                                               ; preds = %25
  %28 = getelementptr i8, ptr %19, i32 276
  %29 = load ptr, ptr %28, align 4
  %30 = load ptr, ptr %17, align 4
  %31 = getelementptr inbounds %struct.nfs41_server_owner, ptr %29, i32 0, i32 1
  %32 = load i32, ptr %31, align 8
  %33 = getelementptr inbounds %struct.nfs41_server_owner, ptr %30, i32 0, i32 1
  %34 = load i32, ptr %33, align 8
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %36, label %53

36:                                               ; preds = %27
  %37 = getelementptr inbounds %struct.nfs41_server_owner, ptr %29, i32 0, i32 2
  %38 = getelementptr inbounds %struct.nfs41_server_owner, ptr %30, i32 0, i32 2
  %39 = tail call i32 @bcmp(ptr %37, ptr %38, i32 %32) #14
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %36, %18
  %42 = phi ptr [ %20, %36 ], [ %0, %18 ]
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %42) #14, !srcloc !19
  %43 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %42, ptr %42, i32 1, ptr elementtype(i32) %42) #14, !srcloc !20
  %44 = extractvalue { i32, i32, i32 } %43, 0
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %50, label %46, !prof !21

46:                                               ; preds = %41
  %47 = add i32 %44, 1
  %48 = or i32 %47, %44
  %49 = icmp sgt i32 %48, -1
  br i1 %49, label %52, label %50, !prof !22

50:                                               ; preds = %46, %41
  %51 = phi i32 [ 2, %41 ], [ 1, %46 ]
  tail call void @refcount_warn_saturate(ptr noundef %42, i32 noundef %51) #14
  br label %52

52:                                               ; preds = %50, %46
  store ptr %42, ptr %1, align 4
  br label %56

53:                                               ; preds = %36, %27, %25
  %54 = load ptr, ptr %19, align 4
  %55 = icmp eq ptr %54, %13
  br i1 %55, label %56, label %18

56:                                               ; preds = %53, %52, %22, %3
  %57 = phi i32 [ 0, %52 ], [ -10022, %3 ], [ %23, %53 ], [ %23, %22 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !12
  %58 = load i16, ptr %12, align 4
  %59 = add i16 %58, 1
  store i16 %59, ptr %12, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !15
  %60 = load ptr, ptr %4, align 4
  tail call void @nfs_put_client(ptr noundef %60) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  ret i32 %57
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nfs4_find_client_ident(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load i32, ptr @nfs_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !9
  %4 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 37
  %5 = load volatile ptr, ptr %4, align 64
  %6 = getelementptr [0 x ptr], ptr %5, i32 0, i32 %3
  %7 = load ptr, ptr %6, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !10
  %8 = getelementptr inbounds %struct.nfs_net, ptr %7, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %8) #14
  %9 = getelementptr inbounds %struct.nfs_net, ptr %7, i32 0, i32 7
  %10 = tail call ptr @idr_find(ptr noundef %9, i32 noundef %1) #14
  %11 = icmp eq ptr %10, null
  br i1 %11, label %22, label %12

12:                                               ; preds = %2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %10) #14, !srcloc !19
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %10, ptr nonnull %10, i32 1, ptr nonnull elementtype(i32) %10) #14, !srcloc !20
  %14 = extractvalue { i32, i32, i32 } %13, 0
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16, !prof !21

16:                                               ; preds = %12
  %17 = add i32 %14, 1
  %18 = or i32 %17, %14
  %19 = icmp sgt i32 %18, -1
  br i1 %19, label %22, label %20, !prof !22

20:                                               ; preds = %16, %12
  %21 = phi i32 [ 2, %12 ], [ 1, %16 ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %10, i32 noundef %21) #14
  br label %22

22:                                               ; preds = %20, %16, %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !12
  %23 = load i16, ptr %8, align 4
  %24 = add i16 %23, 1
  store i16 %24, ptr %8, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !15
  ret ptr %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nfs4_find_client_sessionid(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = load i32, ptr @nfs_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !9
  %6 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 37
  %7 = load volatile ptr, ptr %6, align 64
  %8 = getelementptr [0 x ptr], ptr %7, i32 0, i32 %5
  %9 = load ptr, ptr %8, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !10
  %10 = getelementptr inbounds %struct.nfs_net, ptr %9, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %10) #14
  %11 = getelementptr inbounds %struct.nfs_net, ptr %9, i32 0, i32 5
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %11
  br i1 %13, label %96, label %14

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.sockaddr_in6, ptr %1, i32 0, i32 3
  %16 = getelementptr %struct.sockaddr_in6, ptr %1, i32 0, i32 3, i32 0, i32 0, i32 1
  %17 = getelementptr %struct.sockaddr_in6, ptr %1, i32 0, i32 3, i32 0, i32 0, i32 2
  %18 = getelementptr %struct.sockaddr_in6, ptr %1, i32 0, i32 3, i32 0, i32 0, i32 3
  %19 = getelementptr inbounds %struct.sockaddr_in6, ptr %1, i32 0, i32 4
  %20 = getelementptr inbounds %struct.sockaddr_in, ptr %1, i32 0, i32 2
  br label %21

21:                                               ; preds = %93, %14
  %22 = phi ptr [ %12, %14 ], [ %94, %93 ]
  %23 = getelementptr i8, ptr %22, i32 -140
  %24 = getelementptr i8, ptr %22, i32 -152
  %25 = load i32, ptr %24, align 8
  switch i32 %25, label %93 [
    i32 0, label %26
    i32 2, label %26
  ]

26:                                               ; preds = %21, %21
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !23
  %27 = getelementptr i8, ptr %22, i32 20
  %28 = load ptr, ptr %27, align 4
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 4
  br i1 %30, label %31, label %93

31:                                               ; preds = %26
  %32 = getelementptr i8, ptr %22, i32 32
  %33 = load i32, ptr %32, align 8
  %34 = icmp eq i32 %33, %3
  br i1 %34, label %35, label %93

35:                                               ; preds = %31
  %36 = load i16, ptr %1, align 2
  %37 = load i16, ptr %23, align 2
  %38 = icmp eq i16 %36, %37
  br i1 %38, label %39, label %93

39:                                               ; preds = %35
  switch i16 %36, label %93 [
    i16 2, label %65
    i16 10, label %40
  ]

40:                                               ; preds = %39
  %41 = getelementptr i8, ptr %22, i32 -132
  %42 = load i32, ptr %15, align 4
  %43 = load i32, ptr %41, align 4
  %44 = xor i32 %43, %42
  %45 = load i32, ptr %16, align 4
  %46 = getelementptr i8, ptr %22, i32 -128
  %47 = load i32, ptr %46, align 4
  %48 = xor i32 %47, %45
  %49 = or i32 %48, %44
  %50 = load i32, ptr %17, align 4
  %51 = getelementptr i8, ptr %22, i32 -124
  %52 = load i32, ptr %51, align 4
  %53 = xor i32 %52, %50
  %54 = or i32 %49, %53
  %55 = load i32, ptr %18, align 4
  %56 = getelementptr i8, ptr %22, i32 -120
  %57 = load i32, ptr %56, align 4
  %58 = xor i32 %57, %55
  %59 = or i32 %54, %58
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %93

61:                                               ; preds = %40
  %62 = tail call i32 @__ipv6_addr_type(ptr noundef %15) #14
  %63 = and i32 %62, 32
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %72, label %65

65:                                               ; preds = %61, %39
  %66 = phi i32 [ -136, %39 ], [ -116, %61 ]
  %67 = phi ptr [ %20, %39 ], [ %19, %61 ]
  %68 = getelementptr i8, ptr %22, i32 %66
  %69 = load i32, ptr %67, align 4
  %70 = load i32, ptr %68, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %93

72:                                               ; preds = %65, %61
  %73 = getelementptr i8, ptr %22, i32 268
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %93, label %76

76:                                               ; preds = %72
  %77 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %74, ptr noundef dereferenceable(16) %2, i32 16)
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %93

79:                                               ; preds = %76
  %80 = getelementptr i8, ptr %22, i32 -160
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %80) #14, !srcloc !19
  %81 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %80, ptr %80, i32 1, ptr elementtype(i32) %80) #14, !srcloc !20
  %82 = extractvalue { i32, i32, i32 } %81, 0
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %88, label %84, !prof !21

84:                                               ; preds = %79
  %85 = add i32 %82, 1
  %86 = or i32 %85, %82
  %87 = icmp sgt i32 %86, -1
  br i1 %87, label %90, label %88, !prof !22

88:                                               ; preds = %84, %79
  %89 = phi i32 [ 2, %79 ], [ 1, %84 ]
  tail call void @refcount_warn_saturate(ptr noundef %80, i32 noundef %89) #14
  br label %90

90:                                               ; preds = %88, %84
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !12
  %91 = load i16, ptr %10, align 4
  %92 = add i16 %91, 1
  store i16 %92, ptr %10, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !15
  br label %99

93:                                               ; preds = %76, %72, %65, %40, %39, %35, %31, %26, %21
  %94 = load ptr, ptr %22, align 4
  %95 = icmp eq ptr %94, %11
  br i1 %95, label %96, label %21

96:                                               ; preds = %93, %4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !12
  %97 = load i16, ptr %10, align 4
  %98 = add i16 %97, 1
  store i16 %98, ptr %10, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !15
  br label %99

99:                                               ; preds = %96, %90
  %100 = phi ptr [ %80, %90 ], [ null, %96 ]
  ret ptr %100
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nfs4_set_ds_client(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 {
  %8 = alloca %struct.rpc_timeout, align 4
  %9 = alloca %struct.nfs_client_initdata, align 4
  %10 = alloca [49 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %8) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %8, i8 0, i32 20, i1 false), !annotation !16
  %11 = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %9) #14
  %12 = getelementptr inbounds %struct.nfs_client_initdata, ptr %9, i32 0, i32 2
  store i32 0, ptr %9, align 4
  store ptr %1, ptr %12, align 4
  %13 = getelementptr inbounds %struct.nfs_client_initdata, ptr %9, i32 0, i32 3
  %14 = getelementptr inbounds %struct.nfs_client, ptr %11, i32 0, i32 11
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.rpc_clnt, ptr %15, i32 0, i32 19
  store ptr %16, ptr %13, align 4
  %17 = getelementptr inbounds %struct.nfs_client_initdata, ptr %9, i32 0, i32 4
  %18 = getelementptr inbounds %struct.nfs_client, ptr %11, i32 0, i32 43
  store ptr %18, ptr %17, align 4
  %19 = getelementptr inbounds %struct.nfs_client_initdata, ptr %9, i32 0, i32 5
  store i32 %2, ptr %19, align 4
  %20 = getelementptr inbounds %struct.nfs_client_initdata, ptr %9, i32 0, i32 6
  store ptr @nfs_v4, ptr %20, align 4
  %21 = getelementptr inbounds %struct.nfs_client_initdata, ptr %9, i32 0, i32 7
  store i32 %3, ptr %21, align 4
  %22 = getelementptr inbounds %struct.nfs_client_initdata, ptr %9, i32 0, i32 8
  store i32 %6, ptr %22, align 4
  %23 = getelementptr inbounds %struct.nfs_client_initdata, ptr %9, i32 0, i32 9
  store i32 0, ptr %23, align 4
  %24 = getelementptr inbounds %struct.nfs_client_initdata, ptr %9, i32 0, i32 10
  store i32 0, ptr %24, align 4
  %25 = getelementptr inbounds %struct.nfs_client_initdata, ptr %9, i32 0, i32 11
  %26 = getelementptr inbounds %struct.nfs_client, ptr %11, i32 0, i32 44
  %27 = load ptr, ptr %26, align 8
  store ptr %27, ptr %25, align 4
  %28 = getelementptr inbounds %struct.nfs_client_initdata, ptr %9, i32 0, i32 12
  store ptr %8, ptr %28, align 4
  %29 = getelementptr inbounds %struct.nfs_client_initdata, ptr %9, i32 0, i32 13
  %30 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 65
  %31 = load ptr, ptr %30, align 8
  store ptr %31, ptr %29, align 4
  call void @llvm.lifetime.start.p0(i64 49, ptr nonnull %10) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(49) %10, i8 0, i32 49, i1 false), !annotation !16
  %32 = call i32 @rpc_ntop(ptr noundef %1, ptr noundef nonnull %10, i32 noundef 49) #14
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %50, label %34

34:                                               ; preds = %7
  %35 = getelementptr inbounds %struct.nfs_client_initdata, ptr %9, i32 0, i32 1
  store ptr %10, ptr %35, align 4
  %36 = getelementptr inbounds %struct.nfs_client, ptr %11, i32 0, i32 16
  %37 = load i32, ptr %36, align 4
  %38 = icmp ugt i32 %37, 1
  %39 = icmp eq i32 %3, 6
  %40 = and i1 %39, %38
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  store i32 %37, ptr %23, align 4
  store i32 16, ptr %24, align 4
  br label %42

42:                                               ; preds = %41, %34
  %43 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 8
  %44 = load i32, ptr %43, align 8
  %45 = and i32 %44, 262144
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %42
  store i32 1, ptr %9, align 4
  br label %48

48:                                               ; preds = %47, %42
  call void @nfs_init_timeout_values(ptr noundef nonnull %8, i32 noundef %3, i32 noundef %4, i32 noundef %5) #14
  %49 = call ptr @nfs_get_client(ptr noundef nonnull %9) #14
  br label %50

50:                                               ; preds = %48, %7
  %51 = phi ptr [ %49, %48 ], [ inttoptr (i32 -22 to ptr), %7 ]
  call void @llvm.lifetime.end.p0(i64 49, ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %8) #14
  ret ptr %51
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_init_timeout_values(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs_get_client(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @nfs4_server_set_init_caps(ptr nocapture noundef %0) local_unnamed_addr #8 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.nfs_client, ptr %2, i32 0, i32 31
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.nfs4_minor_version_ops, ptr %4, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 10
  %8 = load i32, ptr %7, align 8
  %9 = or i32 %8, %6
  store i32 %9, ptr %7, align 8
  %10 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 8
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 16384
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %1
  %15 = and i32 %9, -2
  store i32 %15, ptr %7, align 8
  br label %16

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %9, %1 ]
  %18 = getelementptr inbounds %struct.nfs_client, ptr %2, i32 0, i32 13
  %19 = load i32, ptr %18, align 8
  %20 = icmp eq i32 %19, 256
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = and i32 %17, -536870913
  store i32 %22, ptr %7, align 8
  br label %23

23:                                               ; preds = %21, %16
  %24 = phi i32 [ %22, %21 ], [ %17, %16 ]
  %25 = load i8, ptr @nfs4_disable_idmapping, align 1, !range !24
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %37, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.rpc_clnt, ptr %29, i32 0, i32 11
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.rpc_auth, ptr %31, i32 0, i32 6
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = or i32 %24, 32768
  store i32 %36, ptr %7, align 8
  br label %37

37:                                               ; preds = %35, %27, %23
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nfs4_create_server(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca %struct.rpc_timeout, align 4
  %3 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = tail call ptr @nfs_alloc_server() #14
  %6 = icmp eq ptr %5, null
  br i1 %6, label %143, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.cred, ptr %9, i32 0, i32 24
  store i32 0, ptr %12, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %9) #14, !srcloc !19
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %9, ptr nonnull %9, i32 1, ptr nonnull elementtype(i32) %9) #14, !srcloc !25
  br label %14

14:                                               ; preds = %11, %7
  %15 = getelementptr inbounds %struct.nfs_server, ptr %5, i32 0, i32 65
  store ptr %9, ptr %15, align 8
  %16 = getelementptr inbounds %struct.nfs_fs_context, ptr %4, i32 0, i32 16
  %17 = load i32, ptr %16, align 4
  %18 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false) #14, !annotation !16
  %19 = getelementptr inbounds %struct.nfs_fs_context, ptr %18, i32 0, i32 26
  %20 = getelementptr inbounds %struct.nfs_fs_context, ptr %18, i32 0, i32 26, i32 5
  %21 = load i16, ptr %20, align 4
  %22 = zext i16 %21 to i32
  %23 = getelementptr inbounds %struct.nfs_fs_context, ptr %18, i32 0, i32 7
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.nfs_fs_context, ptr %18, i32 0, i32 8
  %26 = load i32, ptr %25, align 4
  call void @nfs_init_timeout_values(ptr noundef nonnull %2, i32 noundef %22, i32 noundef %24, i32 noundef %26) #14
  %27 = getelementptr inbounds %struct.nfs_fs_context, ptr %18, i32 0, i32 4
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.nfs_server, ptr %5, i32 0, i32 8
  store i32 %28, ptr %29, align 8
  %30 = getelementptr inbounds %struct.nfs_fs_context, ptr %18, i32 0, i32 14
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.nfs_server, ptr %5, i32 0, i32 27
  store i32 %31, ptr %32, align 4
  %33 = getelementptr inbounds %struct.nfs_server, ptr %5, i32 0, i32 36
  %34 = getelementptr inbounds %struct.nfs_fs_context, ptr %18, i32 0, i32 16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(52) %33, ptr noundef align 4 dereferenceable(52) %34, i32 52, i1 false) #14
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %14
  %38 = getelementptr inbounds %struct.nfs_fs_context, ptr %18, i32 0, i32 16, i32 1
  %39 = load i32, ptr %38, align 4
  br label %40

40:                                               ; preds = %37, %14
  %41 = phi i32 [ %39, %37 ], [ 1, %14 ]
  %42 = getelementptr inbounds %struct.nfs_fs_context, ptr %18, i32 0, i32 17
  store i32 %41, ptr %42, align 4
  %43 = getelementptr inbounds %struct.nfs_fs_context, ptr %18, i32 0, i32 26, i32 2
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.nfs_fs_context, ptr %18, i32 0, i32 26, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr inbounds %struct.nfs_fs_context, ptr %18, i32 0, i32 18
  %48 = load ptr, ptr %47, align 4
  %49 = load i16, ptr %20, align 4
  %50 = zext i16 %49 to i32
  %51 = getelementptr inbounds %struct.nfs_fs_context, ptr %18, i32 0, i32 20
  %52 = load i32, ptr %51, align 4
  %53 = getelementptr inbounds %struct.nfs_fs_context, ptr %18, i32 0, i32 26, i32 6
  %54 = load i16, ptr %53, align 2
  %55 = zext i16 %54 to i32
  %56 = getelementptr inbounds %struct.nfs_fs_context, ptr %18, i32 0, i32 26, i32 7
  %57 = load i16, ptr %56, align 4
  %58 = zext i16 %57 to i32
  %59 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 7
  %60 = load ptr, ptr %59, align 4
  %61 = call fastcc i32 @nfs4_set_client(ptr noundef nonnull %5, ptr noundef %44, ptr noundef %19, i32 noundef %46, ptr noundef %48, i32 noundef %50, ptr noundef nonnull %2, i32 noundef %52, i32 noundef %55, i32 noundef %58, ptr noundef %60) #14
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %40
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #14
  br label %140

64:                                               ; preds = %40
  %65 = getelementptr inbounds %struct.nfs_fs_context, ptr %18, i32 0, i32 5
  %66 = load i32, ptr %65, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %87, label %68

68:                                               ; preds = %64
  %69 = icmp ult i32 %66, 1024
  %70 = call i32 @llvm.umin.i32(i32 %66, i32 1048576) #14
  %71 = select i1 %69, i32 4096, i32 %70
  %72 = call i32 @llvm.ctpop.i32(i32 %71) #14, !range !26
  %73 = icmp ugt i32 %72, 1
  br i1 %73, label %78, label %84

74:                                               ; preds = %78
  %75 = add nsw i8 %80, -1
  %76 = zext i8 %75 to i32
  %77 = icmp eq i8 %75, 0
  br i1 %77, label %84, label %78

78:                                               ; preds = %74, %68
  %79 = phi i32 [ %76, %74 ], [ 31, %68 ]
  %80 = phi i8 [ %75, %74 ], [ 31, %68 ]
  %81 = shl nuw i32 1, %79
  %82 = and i32 %81, %71
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %74, label %84

84:                                               ; preds = %78, %74, %68
  %85 = phi i32 [ %71, %68 ], [ %81, %78 ], [ 1, %74 ]
  %86 = getelementptr inbounds %struct.nfs_server, ptr %5, i32 0, i32 11
  store i32 %85, ptr %86, align 4
  br label %87

87:                                               ; preds = %84, %64
  %88 = getelementptr inbounds %struct.nfs_fs_context, ptr %18, i32 0, i32 6
  %89 = load i32, ptr %88, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %110, label %91

91:                                               ; preds = %87
  %92 = icmp ult i32 %89, 1024
  %93 = call i32 @llvm.umin.i32(i32 %89, i32 1048576) #14
  %94 = select i1 %92, i32 4096, i32 %93
  %95 = call i32 @llvm.ctpop.i32(i32 %94) #14, !range !26
  %96 = icmp ugt i32 %95, 1
  br i1 %96, label %101, label %107

97:                                               ; preds = %101
  %98 = add nsw i8 %103, -1
  %99 = zext i8 %98 to i32
  %100 = icmp eq i8 %98, 0
  br i1 %100, label %107, label %101

101:                                              ; preds = %97, %91
  %102 = phi i32 [ %99, %97 ], [ 31, %91 ]
  %103 = phi i8 [ %98, %97 ], [ 31, %91 ]
  %104 = shl nuw i32 1, %102
  %105 = and i32 %104, %94
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %97, label %107

107:                                              ; preds = %101, %97, %91
  %108 = phi i32 [ %94, %91 ], [ %104, %101 ], [ 1, %97 ]
  %109 = getelementptr inbounds %struct.nfs_server, ptr %5, i32 0, i32 13
  store i32 %108, ptr %109, align 4
  br label %110

110:                                              ; preds = %107, %87
  %111 = getelementptr inbounds %struct.nfs_fs_context, ptr %18, i32 0, i32 9
  %112 = load i32, ptr %111, align 4
  %113 = mul i32 %112, 100
  %114 = getelementptr inbounds %struct.nfs_server, ptr %5, i32 0, i32 22
  store i32 %113, ptr %114, align 8
  %115 = getelementptr inbounds %struct.nfs_fs_context, ptr %18, i32 0, i32 10
  %116 = load i32, ptr %115, align 4
  %117 = mul i32 %116, 100
  %118 = getelementptr inbounds %struct.nfs_server, ptr %5, i32 0, i32 23
  store i32 %117, ptr %118, align 4
  %119 = getelementptr inbounds %struct.nfs_fs_context, ptr %18, i32 0, i32 11
  %120 = load i32, ptr %119, align 4
  %121 = mul i32 %120, 100
  %122 = getelementptr inbounds %struct.nfs_server, ptr %5, i32 0, i32 24
  store i32 %121, ptr %122, align 8
  %123 = getelementptr inbounds %struct.nfs_fs_context, ptr %18, i32 0, i32 12
  %124 = load i32, ptr %123, align 4
  %125 = mul i32 %124, 100
  %126 = getelementptr inbounds %struct.nfs_server, ptr %5, i32 0, i32 25
  store i32 %125, ptr %126, align 4
  %127 = getelementptr inbounds %struct.nfs_fs_context, ptr %18, i32 0, i32 26, i32 4
  %128 = load i32, ptr %127, align 4
  %129 = trunc i32 %128 to i16
  %130 = getelementptr inbounds %struct.nfs_server, ptr %5, i32 0, i32 17
  store i16 %129, ptr %130, align 4
  %131 = load i32, ptr %42, align 4
  %132 = call i32 @nfs_init_server_rpcclient(ptr noundef nonnull %5, ptr noundef nonnull %2, i32 noundef %131) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #14
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %140, label %134

134:                                              ; preds = %110
  %135 = icmp eq i32 %17, 0
  %136 = getelementptr inbounds %struct.nfs_fs_context, ptr %4, i32 0, i32 27
  %137 = load ptr, ptr %136, align 4
  %138 = call fastcc i32 @nfs4_server_common_setup(ptr noundef nonnull %5, ptr noundef %137, i1 noundef zeroext %135)
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %134, %110, %63
  %141 = phi i32 [ %132, %110 ], [ %138, %134 ], [ %61, %63 ]
  call void @nfs_free_server(ptr noundef nonnull %5) #14
  %142 = inttoptr i32 %141 to ptr
  br label %143

143:                                              ; preds = %140, %134, %1
  %144 = phi ptr [ %142, %140 ], [ %5, %134 ], [ inttoptr (i32 -12 to ptr), %1 ]
  ret ptr %144
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs_alloc_server() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @nfs4_server_common_setup(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.nfs_client, ptr %4, i32 0, i32 35
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 458752
  %8 = icmp eq i32 %7, 262144
  br i1 %8, label %120, label %9

9:                                                ; preds = %3
  %10 = tail call i32 @nfs4_init_session(ptr noundef %4) #14
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %120, label %12

12:                                               ; preds = %9
  %13 = load ptr, ptr %0, align 8
  %14 = getelementptr inbounds %struct.nfs_client, ptr %13, i32 0, i32 31
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.nfs4_minor_version_ops, ptr %15, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 10
  %19 = load i32, ptr %18, align 8
  %20 = or i32 %19, %17
  store i32 %20, ptr %18, align 8
  %21 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 8
  %22 = load i32, ptr %21, align 8
  %23 = and i32 %22, 16384
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %12
  %26 = and i32 %20, -2
  store i32 %26, ptr %18, align 8
  br label %27

27:                                               ; preds = %25, %12
  %28 = phi i32 [ %26, %25 ], [ %20, %12 ]
  %29 = getelementptr inbounds %struct.nfs_client, ptr %13, i32 0, i32 13
  %30 = load i32, ptr %29, align 8
  %31 = icmp eq i32 %30, 256
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = and i32 %28, -536870913
  store i32 %33, ptr %18, align 8
  br label %34

34:                                               ; preds = %32, %27
  %35 = phi i32 [ %33, %32 ], [ %28, %27 ]
  %36 = load i8, ptr @nfs4_disable_idmapping, align 1, !range !24
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %48, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 3
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.rpc_clnt, ptr %40, i32 0, i32 11
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.rpc_auth, ptr %42, i32 0, i32 6
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %48

46:                                               ; preds = %38
  %47 = or i32 %35, 32768
  store i32 %47, ptr %18, align 8
  br label %48

48:                                               ; preds = %46, %38, %34
  %49 = tail call i32 @nfs4_get_rootfh(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) #14
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %120, label %51

51:                                               ; preds = %48
  %52 = tail call i32 @nfs_probe_server(ptr noundef %0, ptr noundef %1) #14
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %120, label %54

54:                                               ; preds = %51
  %55 = load ptr, ptr %0, align 8
  %56 = getelementptr inbounds %struct.nfs_client, ptr %55, i32 0, i32 36
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %110, label %59

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.nfs4_session, ptr %57, i32 0, i32 5
  %61 = getelementptr inbounds %struct.nfs4_session, ptr %57, i32 0, i32 5, i32 1
  %62 = load i32, ptr %61, align 4
  %63 = load i32, ptr @nfs41_maxread_overhead, align 4
  %64 = sub i32 %62, %63
  %65 = load i32, ptr %60, align 4
  %66 = load i32, ptr @nfs41_maxwrite_overhead, align 4
  %67 = sub i32 %65, %66
  %68 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 16
  %69 = load i32, ptr %68, align 8
  %70 = icmp ugt i32 %69, %64
  br i1 %70, label %71, label %72

71:                                               ; preds = %59
  store i32 %64, ptr %68, align 8
  br label %72

72:                                               ; preds = %71, %59
  %73 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 11
  %74 = load i32, ptr %73, align 4
  %75 = icmp ugt i32 %74, %64
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  store i32 %64, ptr %73, align 4
  br label %77

77:                                               ; preds = %76, %72
  %78 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 13
  %79 = load i32, ptr %78, align 4
  %80 = icmp ugt i32 %79, %67
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  store i32 %67, ptr %78, align 4
  br label %82

82:                                               ; preds = %81, %77
  %83 = load ptr, ptr %56, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %110, label %85

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.nfs4_session, ptr %83, i32 0, i32 5
  %87 = getelementptr inbounds %struct.nfs4_session, ptr %83, i32 0, i32 5, i32 1
  %88 = load i32, ptr %87, align 4
  %89 = load i32, ptr @nfs42_maxgetxattr_overhead, align 4
  %90 = sub i32 %88, %89
  %91 = load i32, ptr %86, align 4
  %92 = load i32, ptr @nfs42_maxsetxattr_overhead, align 4
  %93 = sub i32 %91, %92
  %94 = load i32, ptr @nfs42_maxlistxattrs_overhead, align 4
  %95 = sub i32 %88, %94
  %96 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 19
  %97 = load i32, ptr %96, align 4
  %98 = icmp ugt i32 %97, %90
  br i1 %98, label %99, label %100

99:                                               ; preds = %85
  store i32 %90, ptr %96, align 4
  br label %100

100:                                              ; preds = %99, %85
  %101 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 20
  %102 = load i32, ptr %101, align 8
  %103 = icmp ugt i32 %102, %93
  br i1 %103, label %104, label %105

104:                                              ; preds = %100
  store i32 %93, ptr %101, align 8
  br label %105

105:                                              ; preds = %104, %100
  %106 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 21
  %107 = load i32, ptr %106, align 4
  %108 = icmp ugt i32 %107, %95
  br i1 %108, label %109, label %110

109:                                              ; preds = %105
  store i32 %95, ptr %106, align 4
  br label %110

110:                                              ; preds = %109, %105, %82, %54
  %111 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 26
  %112 = load i32, ptr %111, align 8
  %113 = add i32 %112, -256
  %114 = icmp ult i32 %113, -255
  br i1 %114, label %115, label %116

115:                                              ; preds = %110
  store i32 255, ptr %111, align 8
  br label %116

116:                                              ; preds = %115, %110
  tail call void @nfs_server_insert_lists(ptr noundef %0) #14
  %117 = load volatile i32, ptr @jiffies, align 64
  %118 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 33
  store i32 %117, ptr %118, align 8
  %119 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 56
  store ptr @nfs4_destroy_server, ptr %119, align 8
  br label %120

120:                                              ; preds = %116, %51, %48, %9, %3
  %121 = phi i32 [ -93, %3 ], [ %10, %9 ], [ %49, %48 ], [ %52, %51 ], [ %52, %116 ]
  ret i32 %121
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_free_server(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nfs4_create_referral_server(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @nfs_alloc_server() #14
  %5 = icmp eq ptr %4, null
  br i1 %5, label %68, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 30
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 27
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.nfs_server, ptr %10, i32 0, i32 65
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.cred, ptr %13, i32 0, i32 24
  store i32 0, ptr %16, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %13) #14, !srcloc !19
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %13, ptr nonnull %13, i32 1, ptr nonnull elementtype(i32) %13) #14, !srcloc !25
  br label %18

18:                                               ; preds = %15, %6
  %19 = getelementptr inbounds %struct.nfs_server, ptr %4, i32 0, i32 65
  store ptr %13, ptr %19, align 8
  tail call void @nfs_server_copy_userdata(ptr noundef nonnull %4, ptr noundef %10) #14
  %20 = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 26
  %21 = load i16, ptr %20, align 2
  switch i16 %21, label %28 [
    i16 2, label %22
    i16 10, label %24
  ]

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.sockaddr_in, ptr %20, i32 0, i32 1
  br label %26

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.sockaddr_in6, ptr %20, i32 0, i32 1
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi ptr [ %25, %24 ], [ %23, %22 ]
  store i16 264, ptr %27, align 2
  br label %28

28:                                               ; preds = %26, %18
  %29 = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 26, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 26, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.nfs_client, ptr %11, i32 0, i32 43
  %34 = getelementptr inbounds %struct.nfs_server, ptr %10, i32 0, i32 3
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.rpc_clnt, ptr %35, i32 0, i32 16
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.nfs_client, ptr %11, i32 0, i32 31
  %39 = load ptr, ptr %38, align 8
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds %struct.nfs_client, ptr %11, i32 0, i32 16
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr inbounds %struct.nfs_client, ptr %11, i32 0, i32 17
  %44 = load i32, ptr %43, align 8
  %45 = getelementptr inbounds %struct.nfs_client, ptr %11, i32 0, i32 44
  %46 = load ptr, ptr %45, align 8
  %47 = tail call fastcc i32 @nfs4_set_client(ptr noundef nonnull %4, ptr noundef %30, ptr noundef %20, i32 noundef %32, ptr noundef %33, i32 noundef 6, ptr noundef %37, i32 noundef %40, i32 noundef %42, i32 noundef %44, ptr noundef %46)
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %65, label %49

49:                                               ; preds = %28
  %50 = load ptr, ptr %34, align 4
  %51 = getelementptr inbounds %struct.rpc_clnt, ptr %50, i32 0, i32 16
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 17
  %54 = load i32, ptr %53, align 4
  %55 = tail call i32 @nfs_init_server_rpcclient(ptr noundef nonnull %4, ptr noundef %52, i32 noundef %54) #14
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %65, label %57

57:                                               ; preds = %49
  %58 = getelementptr inbounds %struct.nfs_server, ptr %10, i32 0, i32 36
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %59, 0
  %61 = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 27
  %62 = load ptr, ptr %61, align 4
  %63 = tail call fastcc i32 @nfs4_server_common_setup(ptr noundef nonnull %4, ptr noundef %62, i1 noundef zeroext %60)
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %57, %49, %28
  %66 = phi i32 [ %47, %28 ], [ %55, %49 ], [ %63, %57 ]
  tail call void @nfs_free_server(ptr noundef nonnull %4) #14
  %67 = inttoptr i32 %66 to ptr
  br label %68

68:                                               ; preds = %65, %57, %1
  %69 = phi ptr [ %67, %65 ], [ %4, %57 ], [ inttoptr (i32 -12 to ptr), %1 ]
  ret ptr %69
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_server_copy_userdata(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @nfs4_set_client(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, ptr noundef %10) unnamed_addr #0 {
  %12 = alloca %struct.nfs_client_initdata, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %12) #14
  %13 = getelementptr inbounds %struct.nfs_client_initdata, ptr %12, i32 0, i32 1
  store i32 0, ptr %12, align 4
  store ptr %1, ptr %13, align 4
  %14 = getelementptr inbounds %struct.nfs_client_initdata, ptr %12, i32 0, i32 2
  store ptr %2, ptr %14, align 4
  %15 = getelementptr inbounds %struct.nfs_client_initdata, ptr %12, i32 0, i32 3
  store ptr null, ptr %15, align 4
  %16 = getelementptr inbounds %struct.nfs_client_initdata, ptr %12, i32 0, i32 4
  store ptr %4, ptr %16, align 4
  %17 = getelementptr inbounds %struct.nfs_client_initdata, ptr %12, i32 0, i32 5
  store i32 %3, ptr %17, align 4
  %18 = getelementptr inbounds %struct.nfs_client_initdata, ptr %12, i32 0, i32 6
  store ptr @nfs_v4, ptr %18, align 4
  %19 = getelementptr inbounds %struct.nfs_client_initdata, ptr %12, i32 0, i32 7
  store i32 %5, ptr %19, align 4
  %20 = getelementptr inbounds %struct.nfs_client_initdata, ptr %12, i32 0, i32 8
  store i32 %7, ptr %20, align 4
  %21 = getelementptr inbounds %struct.nfs_client_initdata, ptr %12, i32 0, i32 9
  store i32 0, ptr %21, align 4
  %22 = getelementptr inbounds %struct.nfs_client_initdata, ptr %12, i32 0, i32 10
  store i32 0, ptr %22, align 4
  %23 = getelementptr inbounds %struct.nfs_client_initdata, ptr %12, i32 0, i32 11
  store ptr %10, ptr %23, align 4
  %24 = getelementptr inbounds %struct.nfs_client_initdata, ptr %12, i32 0, i32 12
  store ptr %6, ptr %24, align 4
  %25 = getelementptr inbounds %struct.nfs_client_initdata, ptr %12, i32 0, i32 13
  %26 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 65
  %27 = load ptr, ptr %26, align 8
  store ptr %27, ptr %25, align 4
  %28 = icmp eq i32 %7, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %11
  store i32 256, ptr %12, align 4
  br label %31

30:                                               ; preds = %11
  store i32 %9, ptr %22, align 4
  br label %31

31:                                               ; preds = %30, %29
  %32 = phi i32 [ 0, %30 ], [ 256, %29 ]
  %33 = icmp eq i32 %5, 6
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i32 %8, ptr %21, align 4
  br label %35

35:                                               ; preds = %34, %31
  %36 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 8
  %37 = load i32, ptr %36, align 8
  %38 = and i32 %37, 262144
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %35
  %41 = or i32 %32, 1
  store i32 %41, ptr %12, align 4
  br label %42

42:                                               ; preds = %40, %35
  %43 = phi i32 [ %41, %40 ], [ %32, %35 ]
  %44 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 27
  %45 = load i32, ptr %44, align 4
  %46 = and i32 %45, 2
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %42
  %49 = or i32 %43, 4
  store i32 %49, ptr %12, align 4
  br label %50

50:                                               ; preds = %48, %42
  %51 = phi i32 [ %49, %48 ], [ %43, %42 ]
  %52 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 55
  %53 = load volatile i32, ptr %52, align 4
  %54 = and i32 %53, 8
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %50
  %57 = or i32 %51, 32
  store i32 %57, ptr %12, align 4
  br label %58

58:                                               ; preds = %56, %50
  %59 = load i16, ptr %2, align 2
  switch i16 %59, label %68 [
    i16 2, label %60
    i16 10, label %62
  ]

60:                                               ; preds = %58
  %61 = getelementptr inbounds %struct.sockaddr_in, ptr %2, i32 0, i32 1
  br label %64

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.sockaddr_in6, ptr %2, i32 0, i32 1
  br label %64

64:                                               ; preds = %62, %60
  %65 = phi ptr [ %63, %62 ], [ %61, %60 ]
  %66 = load i16, ptr %65, align 2
  %67 = tail call i16 @llvm.bswap.i16(i16 %66) #14
  br label %68

68:                                               ; preds = %64, %58
  %69 = phi i16 [ 0, %58 ], [ %67, %64 ]
  %70 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 17
  store i16 %69, ptr %70, align 4
  %71 = call ptr @nfs_get_client(ptr noundef nonnull %12) #14
  %72 = icmp ugt ptr %71, inttoptr (i32 -4096 to ptr)
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = ptrtoint ptr %71 to i32
  br label %81

75:                                               ; preds = %68
  %76 = load ptr, ptr %0, align 8
  %77 = icmp eq ptr %76, %71
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  call void @nfs_put_client(ptr noundef %71) #14
  br label %81

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.nfs_client, ptr %71, i32 0, i32 3
  call void @_set_bit(i32 noundef 5, ptr noundef %80) #14
  store ptr %71, ptr %0, align 8
  br label %81

81:                                               ; preds = %79, %78, %73
  %82 = phi i32 [ %74, %73 ], [ -40, %78 ], [ 0, %79 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %12) #14
  ret i32 %82
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_init_server_rpcclient(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs4_update_server(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.xprt_create, align 4
  %7 = alloca [49 x i8], align 1
  %8 = alloca %struct.__kernel_sockaddr_storage, align 4
  %9 = load ptr, ptr %0, align 8
  %10 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #14
  %12 = getelementptr inbounds %struct.nfs_client, ptr %9, i32 0, i32 13
  %13 = load i32, ptr %12, align 8
  store i32 %13, ptr %6, align 4
  %14 = getelementptr inbounds %struct.xprt_create, ptr %6, i32 0, i32 1
  store ptr %4, ptr %14, align 4
  %15 = getelementptr inbounds %struct.xprt_create, ptr %6, i32 0, i32 2
  store ptr null, ptr %15, align 4
  %16 = getelementptr inbounds %struct.xprt_create, ptr %6, i32 0, i32 3
  store ptr %2, ptr %16, align 4
  %17 = getelementptr inbounds %struct.xprt_create, ptr %6, i32 0, i32 4
  store i32 %3, ptr %17, align 4
  %18 = getelementptr inbounds %struct.xprt_create, ptr %6, i32 0, i32 5
  store ptr %1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.xprt_create, ptr %6, i32 0, i32 6
  store ptr null, ptr %19, align 4
  %20 = getelementptr inbounds %struct.xprt_create, ptr %6, i32 0, i32 7
  store ptr null, ptr %20, align 4
  %21 = getelementptr inbounds %struct.xprt_create, ptr %6, i32 0, i32 8
  store i32 0, ptr %21, align 4
  call void @llvm.lifetime.start.p0(i64 49, ptr nonnull %7) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(49) %7, i8 0, i32 49, i1 false), !annotation !16
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %8) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(128) %8, i8 0, i32 128, i1 false), !annotation !16
  %22 = getelementptr inbounds %struct.rpc_clnt, ptr %11, i32 0, i32 16
  %23 = load ptr, ptr %22, align 4
  %24 = call i32 @rpc_switch_client_transport(ptr noundef %11, ptr noundef nonnull %6, ptr noundef %23) #14
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %67

26:                                               ; preds = %5
  %27 = call i32 @rpc_localaddr(ptr noundef %11, ptr noundef nonnull %8, i32 noundef 128) #14
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %67

29:                                               ; preds = %26
  %30 = call i32 @rpc_ntop(ptr noundef nonnull %8, ptr noundef nonnull %7, i32 noundef 49) #14
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %67, label %32

32:                                               ; preds = %29
  call void @nfs_server_remove_lists(ptr noundef %0) #14
  %33 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 55
  call void @_set_bit(i32 noundef 3, ptr noundef %33) #14
  %34 = load i32, ptr %12, align 8
  %35 = load ptr, ptr %22, align 4
  %36 = getelementptr inbounds %struct.nfs_client, ptr %9, i32 0, i32 15
  %37 = load i32, ptr %36, align 8
  %38 = getelementptr inbounds %struct.nfs_client, ptr %9, i32 0, i32 16
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr inbounds %struct.nfs_client, ptr %9, i32 0, i32 17
  %41 = load i32, ptr %40, align 8
  %42 = call fastcc i32 @nfs4_set_client(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull %7, i32 noundef %34, ptr noundef %35, i32 noundef %37, i32 noundef %39, i32 noundef %41, ptr noundef %4)
  call void @_clear_bit(i32 noundef 3, ptr noundef %33) #14
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %32
  call void @nfs_server_insert_lists(ptr noundef %0) #14
  br label %67

45:                                               ; preds = %32
  call void @nfs_put_client(ptr noundef %9) #14
  %46 = load ptr, ptr %0, align 8
  %47 = getelementptr inbounds %struct.nfs_client, ptr %46, i32 0, i32 7
  %48 = load ptr, ptr %47, align 8
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %58

50:                                               ; preds = %45
  %51 = call noalias ptr @kstrdup(ptr noundef %1, i32 noundef 3264) #14
  %52 = load ptr, ptr %0, align 8
  %53 = getelementptr inbounds %struct.nfs_client, ptr %52, i32 0, i32 7
  store ptr %51, ptr %53, align 8
  %54 = load ptr, ptr %0, align 8
  %55 = getelementptr inbounds %struct.nfs_client, ptr %54, i32 0, i32 7
  %56 = load ptr, ptr %55, align 8
  %57 = icmp eq ptr %56, null
  br i1 %57, label %67, label %58

58:                                               ; preds = %50, %45
  call void @nfs_server_insert_lists(ptr noundef %0) #14
  %59 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 34
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.super_block, ptr %60, i32 0, i32 13
  %62 = load ptr, ptr %61, align 64
  %63 = getelementptr inbounds %struct.dentry, ptr %62, i32 0, i32 5
  %64 = load ptr, ptr %63, align 8
  %65 = getelementptr i8, ptr %64, i32 -288
  %66 = call i32 @nfs_probe_server(ptr noundef %0, ptr noundef %65) #14
  br label %67

67:                                               ; preds = %58, %50, %44, %29, %26, %5
  %68 = phi i32 [ %42, %44 ], [ %66, %58 ], [ %24, %5 ], [ %27, %26 ], [ -97, %29 ], [ -12, %50 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 49, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #14
  ret i32 %68
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpc_switch_client_transport(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_server_remove_lists(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_server_insert_lists(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_probe_server(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rpc_clone_client_set_auth(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_release_client(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_shutdown_client(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_preload(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs4_kill_renewd(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_idmap_delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_destroy_wait_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_callback_down(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xprt_setup_backchannel(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_callback_up(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpc_peeraddr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpc_clnt_add_xprt(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpc_clnt_test_and_add_xprt(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_wait_client_init_complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_replace(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ipv6_addr_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_init_session(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_get_rootfh(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs4_destroy_server(ptr noundef %0) #0 {
  %2 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #14
  store ptr %2, ptr %2, align 8
  %3 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %3, align 4
  call void @nfs_server_return_all_delegations(ptr noundef %0) #14
  call void @unset_pnfs_layoutdriver(ptr noundef %0) #14
  call void @nfs4_purge_state_owners(ptr noundef %0, ptr noundef nonnull %2) #14
  call void @nfs4_free_state_owners(ptr noundef nonnull %2) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_server_return_all_delegations(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unset_pnfs_layoutdriver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs4_purge_state_owners(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs4_free_state_owners(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #12

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind readonly }
attributes #11 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { argmemonly nofree nounwind readonly willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { cold nounwind }

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
!9 = !{i64 2149077870}
!10 = !{i64 2149078087}
!11 = !{i64 2150845806}
!12 = !{i64 2148959515}
!13 = !{i64 2148955339}
!14 = !{i64 2148955414, i64 2148955441, i64 2148955488, i64 2148955510, i64 2148955538, i64 2148955558}
!15 = !{i64 2148982518}
!16 = !{!"auto-init"}
!17 = !{i64 499368}
!18 = !{i64 2150288134}
!19 = !{i64 574990, i64 2148064961, i64 2148064987, i64 2148065034, i64 2148065056, i64 2148065084, i64 2148065104}
!20 = !{i64 2148077834, i64 2148077866, i64 2148077895, i64 2148077929, i64 2148077960, i64 2148077983}
!21 = !{!"branch_weights", i32 1, i32 2000}
!22 = !{!"branch_weights", i32 2000, i32 1}
!23 = !{i64 2156328292}
!24 = !{i8 0, i8 2}
!25 = !{i64 2148076376, i64 2148076402, i64 2148076431, i64 2148076465, i64 2148076496, i64 2148076519}
!26 = !{i32 0, i32 33}
