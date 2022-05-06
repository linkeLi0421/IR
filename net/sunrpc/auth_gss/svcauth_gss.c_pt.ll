; ModuleID = '/llk/IR/net/sunrpc/auth_gss/svcauth_gss.c_pt.bc'
source_filename = "../net/sunrpc/auth_gss/svcauth_gss.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_svcauth_gss_flavor:\09\09\09\09\09"
module asm "\09.asciz \09\22svcauth_gss_flavor\22\09\09\09\09\09"
module asm "__kstrtabns_svcauth_gss_flavor:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_svcauth_gss_register_pseudoflavor:\09\09\09\09\09"
module asm "\09.asciz \09\22svcauth_gss_register_pseudoflavor\22\09\09\09\09\09"
module asm "__kstrtabns_svcauth_gss_register_pseudoflavor:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.auth_ops = type { ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.atomic64_t = type { i64 }
%struct.cache_detail = type { ptr, i32, ptr, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, %struct.list_head, i64, i32, %struct.list_head, %struct.atomic_t, i64, i64, %union.anon.147, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%union.anon.147 = type { ptr }
%struct.proc_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gss_domain = type { %struct.auth_domain, i32 }
%struct.auth_domain = type { %struct.kref, %struct.hlist_node, ptr, ptr, %struct.callback_head }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type {}
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.35, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.35 = type { %struct.anon.36 }
%struct.anon.36 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.raw_notifier_head = type { ptr }
%struct.netns_core = type { ptr, i32, ptr }
%struct.netns_mib = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netns_packet = type { %struct.mutex, %struct.hlist_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.88, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.88 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.sunrpc_net = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.list_head, %struct.spinlock, ptr, ptr, %struct.spinlock, i32, i8, %struct.mutex, ptr, i32, i32, %struct.atomic_t, ptr }
%struct.svc_rqst = type { %struct.list_head, %struct.callback_head, ptr, %struct.__kernel_sockaddr_storage, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, ptr, ptr, %struct.svc_cred, ptr, ptr, i32, %struct.xdr_buf, %struct.xdr_stream, %struct.xdr_stream, ptr, %struct.xdr_buf, [260 x ptr], ptr, ptr, ptr, %struct.pagevec, [259 x %struct.kvec], [259 x %struct.bio_vec], i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i32, i32, i32, i64, %struct.cache_req, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, ptr }
%struct.__kernel_sockaddr_storage = type { %union.anon.120 }
%union.anon.120 = type { ptr, [124 x i8] }
%struct.svc_cred = type { %struct.kuid_t, %struct.kgid_t, ptr, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.xdr_stream = type { ptr, ptr, ptr, ptr, %struct.kvec, ptr, i32, ptr }
%struct.kvec = type { ptr, i32 }
%struct.xdr_buf = type { [1 x %struct.kvec], [1 x %struct.kvec], ptr, ptr, i32, i32, i32, i32, i32 }
%struct.pagevec = type { i8, i8, [15 x ptr] }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.cache_req = type { ptr, i32 }
%struct.svc_xprt = type { ptr, ptr, %struct.kref, %struct.list_head, %struct.list_head, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.mutex, %struct.spinlock, ptr, %struct.list_head, %struct.__kernel_sockaddr_storage, i32, %struct.__kernel_sockaddr_storage, i32, [58 x i8], %struct.list_head, ptr, ptr, ptr, ptr }
%struct.gss_svc_data = type { %struct.rpc_gss_wire_cred, ptr, ptr }
%struct.rpc_gss_wire_cred = type { i32, i32, i32, i32, %struct.xdr_netobj }
%struct.xdr_netobj = type { i32, ptr }
%struct.rsc = type { %struct.cache_head, %struct.xdr_netobj, %struct.svc_cred, %struct.gss_svc_seq_data, ptr, %struct.callback_head }
%struct.cache_head = type { %struct.hlist_node, i64, i64, %struct.kref, i32 }
%struct.gss_svc_seq_data = type { i32, [4 x i32], %struct.spinlock }
%struct.timespec64 = type { i64, i32 }
%struct.gssp_upcall_data = type { %struct.xdr_netobj, %struct.gssp_in_token, %struct.xdr_netobj, %struct.xdr_netobj, %struct.rpcsec_gss_oid, %struct.svc_cred, i32, i32, i32 }
%struct.gssp_in_token = type { ptr, i32, i32 }
%struct.rpcsec_gss_oid = type { i32, [32 x i8] }
%struct.page = type { i32, %union.anon.1, %union.anon.116, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.116 = type { %struct.atomic_t }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.rsi = type { %struct.cache_head, %struct.xdr_netobj, %struct.xdr_netobj, %struct.xdr_netobj, %struct.xdr_netobj, i32, i32, %struct.callback_head }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.126, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.127, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.128, ptr, %struct.address_space, %struct.list_head, %union.anon.129, i32, i32, ptr, ptr }
%union.anon.126 = type { i32 }
%union.anon.127 = type { %struct.callback_head }
%union.anon.128 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.129 = type { ptr }

@__kstrtab_svcauth_gss_flavor = external dso_local constant [0 x i8], align 1
@__kstrtabns_svcauth_gss_flavor = external dso_local constant [0 x i8], align 1
@__ksymtab_svcauth_gss_flavor = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @svcauth_gss_flavor to i32), ptr @__kstrtab_svcauth_gss_flavor, ptr @__kstrtabns_svcauth_gss_flavor }, section "___ksymtab_gpl+svcauth_gss_flavor", align 4
@svcauthops_gss = internal global %struct.auth_ops { ptr @.str.1, ptr null, i32 6, ptr @svcauth_gss_accept, ptr @svcauth_gss_release, ptr @svcauth_gss_domain_release, ptr @svcauth_gss_set_client }, align 4
@.str = private unnamed_addr constant [57 x i8] c"\014svc: duplicate registration of gss pseudo flavour %s.\0A\00", align 1
@__kstrtab_svcauth_gss_register_pseudoflavor = external dso_local constant [0 x i8], align 1
@__kstrtabns_svcauth_gss_register_pseudoflavor = external dso_local constant [0 x i8], align 1
@__ksymtab_svcauth_gss_register_pseudoflavor = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @svcauth_gss_register_pseudoflavor to i32), ptr @__kstrtab_svcauth_gss_register_pseudoflavor, ptr @__kstrtabns_svcauth_gss_register_pseudoflavor }, section "___ksymtab_gpl+svcauth_gss_register_pseudoflavor", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"rpcsec_gss\00", align 1
@sunrpc_net_id = external dso_local local_unnamed_addr global i32, align 4
@set_gss_proxy.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"net/sunrpc/auth_gss/svcauth_gss.c\00", align 1
@__tracepoint_rpcgss_svc_accept_upcall = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@gss_proxy_save_rsc.ctxhctr = internal global %struct.atomic64_t zeroinitializer, align 8
@__tracepoint_rpcgss_svc_seqno_large = external dso_local global %struct.tracepoint, align 4
@__tracepoint_rpcgss_svc_seqno_low = external dso_local global %struct.tracepoint, align 4
@__tracepoint_rpcgss_svc_seqno_seen = external dso_local global %struct.tracepoint, align 4
@__tracepoint_rpcgss_svc_unwrap_failed = external dso_local global %struct.tracepoint, align 4
@__tracepoint_rpcgss_svc_seqno_bad = external dso_local global %struct.tracepoint, align 4
@__tracepoint_rpcgss_svc_mic = external dso_local global %struct.tracepoint, align 4
@__tracepoint_rpcgss_svc_unwrap = external dso_local global %struct.tracepoint, align 4
@__tracepoint_rpcgss_svc_authenticate = external dso_local global %struct.tracepoint, align 4
@svcauth_gss_wrap_resp_integ.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@rsc_cache_template = internal constant %struct.cache_detail { ptr null, i32 1024, ptr null, %struct.spinlock zeroinitializer, ptr @.str.4, ptr @rsc_put, ptr @rsc_upcall, ptr null, ptr @rsc_parse, ptr null, ptr null, ptr @rsc_alloc, ptr null, ptr @rsc_match, ptr @rsc_init, ptr @update_rsc, i64 0, %struct.list_head zeroinitializer, i64 0, i32 0, %struct.list_head zeroinitializer, %struct.atomic_t zeroinitializer, i64 0, i64 0, %union.anon.147 zeroinitializer, ptr null }, align 8
@.str.4 = private unnamed_addr constant [20 x i8] c"auth.rpcsec.context\00", align 1
@rsi_cache_template = internal constant %struct.cache_detail { ptr null, i32 64, ptr null, %struct.spinlock zeroinitializer, ptr @.str.5, ptr @rsi_put, ptr @rsi_upcall, ptr @rsi_request, ptr @rsi_parse, ptr null, ptr null, ptr @rsi_alloc, ptr null, ptr @rsi_match, ptr @rsi_init, ptr @update_rsi, i64 0, %struct.list_head zeroinitializer, i64 0, i32 0, %struct.list_head zeroinitializer, %struct.atomic_t zeroinitializer, i64 0, i64 0, %union.anon.147 zeroinitializer, ptr null }, align 8
@.str.5 = private unnamed_addr constant [17 x i8] c"auth.rpcsec.init\00", align 1
@rsi_request.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.6 = private unnamed_addr constant [55 x i8] c"RPCSEC/GSS credential too large - please use gssproxy\0A\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"use-gss-proxy\00", align 1
@use_gss_proxy_proc_ops = internal constant %struct.proc_ops { i32 0, ptr @nonseekable_open, ptr @read_gssp, ptr null, ptr @write_gssp, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.8 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_svcauth_gss_flavor, ptr @__ksymtab_svcauth_gss_register_pseudoflavor], section "llvm.metadata"

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @svcauth_gss_flavor(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.gss_domain, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  ret i32 %3
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @svcauth_gss_register_pseudoflavor(i32 noundef %0, ptr noundef %1) #2 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3264, i32 noundef 32) #20
  %5 = icmp eq ptr %4, null
  br i1 %5, label %20, label %6

6:                                                ; preds = %2
  store volatile i32 1, ptr %4, align 8
  %7 = tail call noalias ptr @kstrdup(ptr noundef %1, i32 noundef 3264) #21
  %8 = getelementptr inbounds %struct.auth_domain, ptr %4, i32 0, i32 2
  store ptr %7, ptr %8, align 4
  %9 = icmp eq ptr %7, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.auth_domain, ptr %4, i32 0, i32 3
  store ptr @svcauthops_gss, ptr %11, align 8
  %12 = getelementptr inbounds %struct.gss_domain, ptr %4, i32 0, i32 1
  store i32 %0, ptr %12, align 4
  %13 = tail call ptr @auth_domain_lookup(ptr noundef %1, ptr noundef nonnull %4) #21
  %14 = icmp eq ptr %13, %4
  br i1 %14, label %23, label %15

15:                                               ; preds = %10
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %1) #22
  tail call void @auth_domain_put(ptr noundef %13) #21
  %17 = load ptr, ptr %8, align 4
  tail call void @kfree(ptr noundef %17) #21
  br label %18

18:                                               ; preds = %15, %6
  %19 = phi i32 [ -98, %15 ], [ -12, %6 ]
  tail call void @kfree(ptr noundef nonnull %4) #21
  br label %20

20:                                               ; preds = %18, %2
  %21 = phi i32 [ %19, %18 ], [ -12, %2 ]
  %22 = inttoptr i32 %21 to ptr
  br label %23

23:                                               ; preds = %20, %10
  %24 = phi ptr [ %22, %20 ], [ %4, %10 ]
  ret ptr %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @auth_domain_lookup(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @auth_domain_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gss_svc_init_net(ptr noundef %0) local_unnamed_addr #2 {
  %2 = load i32, ptr @sunrpc_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !8
  %3 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 37
  %4 = load volatile ptr, ptr %3, align 64
  %5 = getelementptr [0 x ptr], ptr %4, i32 0, i32 %2
  %6 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !9
  %7 = tail call ptr @cache_create_net(ptr noundef nonnull @rsc_cache_template, ptr noundef %0) #21
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %21, label %9

9:                                                ; preds = %1
  %10 = tail call i32 @cache_register_net(ptr noundef %7, ptr noundef %0) #21
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  tail call void @cache_destroy_net(ptr noundef %7, ptr noundef %0) #21
  br label %56

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.sunrpc_net, ptr %6, i32 0, i32 3
  store ptr %7, ptr %14, align 4
  %15 = load i32, ptr @sunrpc_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !8
  %16 = load volatile ptr, ptr %3, align 64
  %17 = getelementptr [0 x ptr], ptr %16, i32 0, i32 %15
  %18 = load ptr, ptr %17, align 4
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !9
  %19 = tail call ptr @cache_create_net(ptr noundef nonnull @rsi_cache_template, ptr noundef %0) #21
  %20 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %20, label %38, label %23

21:                                               ; preds = %1
  %22 = ptrtoint ptr %7 to i32
  br label %56

23:                                               ; preds = %13
  %24 = tail call i32 @cache_register_net(ptr noundef %19, ptr noundef %0) #21
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  tail call void @cache_destroy_net(ptr noundef %19, ptr noundef %0) #21
  br label %48

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.sunrpc_net, ptr %18, i32 0, i32 4
  store ptr %19, ptr %28, align 4
  %29 = load i32, ptr @sunrpc_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !8
  %30 = load volatile ptr, ptr %3, align 64
  %31 = getelementptr [0 x ptr], ptr %30, i32 0, i32 %29
  %32 = load ptr, ptr %31, align 4
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !9
  %33 = getelementptr inbounds %struct.sunrpc_net, ptr %32, i32 0, i32 20
  %34 = getelementptr inbounds %struct.sunrpc_net, ptr %32, i32 0, i32 17
  store i32 -1, ptr %34, align 4
  %35 = load ptr, ptr %32, align 4
  %36 = tail call ptr @proc_create_data(ptr noundef nonnull @.str.7, i16 noundef zeroext -32384, ptr noundef %35, ptr noundef nonnull @use_gss_proxy_proc_ops, ptr noundef %0) #21
  store ptr %36, ptr %33, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %41, label %40

38:                                               ; preds = %13
  %39 = ptrtoint ptr %19 to i32
  br label %48

40:                                               ; preds = %27
  tail call void @init_gssp_clnt(ptr noundef %32) #21
  br label %56

41:                                               ; preds = %27
  %42 = load i32, ptr @sunrpc_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !8
  %43 = load volatile ptr, ptr %3, align 64
  %44 = getelementptr [0 x ptr], ptr %43, i32 0, i32 %42
  %45 = load ptr, ptr %44, align 4
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !9
  %46 = getelementptr inbounds %struct.sunrpc_net, ptr %45, i32 0, i32 4
  %47 = load ptr, ptr %46, align 4
  store ptr null, ptr %46, align 4
  tail call void @cache_purge(ptr noundef %47) #21
  tail call void @cache_unregister_net(ptr noundef %47, ptr noundef %0) #21
  tail call void @cache_destroy_net(ptr noundef %47, ptr noundef %0) #21
  br label %48

48:                                               ; preds = %41, %38, %26
  %49 = phi i32 [ %39, %38 ], [ -12, %41 ], [ %24, %26 ]
  %50 = load i32, ptr @sunrpc_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !8
  %51 = load volatile ptr, ptr %3, align 64
  %52 = getelementptr [0 x ptr], ptr %51, i32 0, i32 %50
  %53 = load ptr, ptr %52, align 4
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !9
  %54 = getelementptr inbounds %struct.sunrpc_net, ptr %53, i32 0, i32 3
  %55 = load ptr, ptr %54, align 4
  store ptr null, ptr %54, align 4
  tail call void @cache_purge(ptr noundef %55) #21
  tail call void @cache_unregister_net(ptr noundef %55, ptr noundef %0) #21
  tail call void @cache_destroy_net(ptr noundef %55, ptr noundef %0) #21
  br label %56

56:                                               ; preds = %48, %40, %21, %12
  %57 = phi i32 [ %49, %48 ], [ %22, %21 ], [ %10, %12 ], [ 0, %40 ]
  ret i32 %57
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gss_svc_shutdown_net(ptr noundef %0) local_unnamed_addr #2 {
  %2 = load i32, ptr @sunrpc_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !8
  %3 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 37
  %4 = load volatile ptr, ptr %3, align 64
  %5 = getelementptr [0 x ptr], ptr %4, i32 0, i32 %2
  %6 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !9
  %7 = getelementptr inbounds %struct.sunrpc_net, ptr %6, i32 0, i32 20
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = load ptr, ptr %6, align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.7, ptr noundef %11) #21
  tail call void @clear_gssp_clnt(ptr noundef %6) #21
  br label %12

12:                                               ; preds = %10, %1
  %13 = load i32, ptr @sunrpc_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !8
  %14 = load volatile ptr, ptr %3, align 64
  %15 = getelementptr [0 x ptr], ptr %14, i32 0, i32 %13
  %16 = load ptr, ptr %15, align 4
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !9
  %17 = getelementptr inbounds %struct.sunrpc_net, ptr %16, i32 0, i32 4
  %18 = load ptr, ptr %17, align 4
  store ptr null, ptr %17, align 4
  tail call void @cache_purge(ptr noundef %18) #21
  tail call void @cache_unregister_net(ptr noundef %18, ptr noundef %0) #21
  tail call void @cache_destroy_net(ptr noundef %18, ptr noundef %0) #21
  %19 = load i32, ptr @sunrpc_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !8
  %20 = load volatile ptr, ptr %3, align 64
  %21 = getelementptr [0 x ptr], ptr %20, i32 0, i32 %19
  %22 = load ptr, ptr %21, align 4
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !9
  %23 = getelementptr inbounds %struct.sunrpc_net, ptr %22, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  store ptr null, ptr %23, align 4
  tail call void @cache_purge(ptr noundef %24) #21
  tail call void @cache_unregister_net(ptr noundef %24, ptr noundef %0) #21
  tail call void @cache_destroy_net(ptr noundef %24, ptr noundef %0) #21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gss_svc_init() local_unnamed_addr #2 {
  %1 = tail call i32 @svc_auth_register(i32 noundef 6, ptr noundef nonnull @svcauthops_gss) #21
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @svc_auth_register(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gss_svc_shutdown() local_unnamed_addr #2 {
  tail call void @svc_auth_unregister(i32 noundef 6) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @svc_auth_unregister(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @svcauth_gss_accept(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 15
  %3 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 19
  %4 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 37
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %3, align 4
  %7 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 19, i32 0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr i8, ptr %6, i32 %8
  %10 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 2
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  %13 = getelementptr inbounds %struct.svc_xprt, ptr %11, i32 0, i32 19
  %14 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 48
  %15 = select i1 %12, ptr %14, ptr %13
  %16 = load ptr, ptr %15, align 4
  %17 = load i32, ptr @sunrpc_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !8
  %18 = getelementptr inbounds %struct.net, ptr %16, i32 0, i32 37
  %19 = load volatile ptr, ptr %18, align 64
  %20 = getelementptr [0 x ptr], ptr %19, i32 0, i32 %17
  %21 = load ptr, ptr %20, align 4
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !9
  %22 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 38
  store i32 16777216, ptr %22, align 4
  %23 = icmp eq ptr %5, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %1
  %25 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %26 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %25, i32 noundef 3264, i32 noundef 32) #20
  %27 = icmp eq ptr %26, null
  br i1 %27, label %189, label %28

28:                                               ; preds = %24, %1
  %29 = phi ptr [ %26, %24 ], [ %5, %1 ]
  store ptr %29, ptr %4, align 8
  %30 = getelementptr inbounds %struct.gss_svc_data, ptr %29, i32 0, i32 1
  store ptr null, ptr %30, align 4
  %31 = getelementptr inbounds %struct.gss_svc_data, ptr %29, i32 0, i32 2
  store ptr null, ptr %31, align 4
  %32 = load ptr, ptr %2, align 4
  %33 = getelementptr i32, ptr %32, i32 -7
  %34 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 15, i32 0, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = icmp ult i32 %35, 20
  br i1 %36, label %189, label %37

37:                                               ; preds = %28
  %38 = getelementptr i32, ptr %32, i32 1
  %39 = load i32, ptr %32, align 4
  store ptr %38, ptr %2, align 4
  %40 = add i32 %35, -4
  store i32 %40, ptr %34, align 4
  %41 = tail call i32 @llvm.bswap.i32(i32 %39) #21
  %42 = getelementptr i32, ptr %32, i32 2
  %43 = load i32, ptr %38, align 4
  store ptr %42, ptr %2, align 4
  %44 = add i32 %35, -8
  store i32 %44, ptr %34, align 4
  %45 = icmp eq i32 %43, 16777216
  br i1 %45, label %46, label %189

46:                                               ; preds = %37
  %47 = getelementptr i32, ptr %32, i32 3
  %48 = load i32, ptr %42, align 4
  store ptr %47, ptr %2, align 4
  %49 = add i32 %35, -12
  store i32 %49, ptr %34, align 4
  %50 = tail call i32 @llvm.bswap.i32(i32 %48) #21
  %51 = getelementptr inbounds %struct.rpc_gss_wire_cred, ptr %29, i32 0, i32 1
  store i32 %50, ptr %51, align 4
  %52 = load ptr, ptr %2, align 4
  %53 = getelementptr i32, ptr %52, i32 1
  %54 = load i32, ptr %52, align 4
  store ptr %53, ptr %2, align 4
  %55 = load i32, ptr %34, align 4
  %56 = add i32 %55, -4
  store i32 %56, ptr %34, align 4
  %57 = tail call i32 @llvm.bswap.i32(i32 %54) #21
  %58 = getelementptr inbounds %struct.rpc_gss_wire_cred, ptr %29, i32 0, i32 2
  store i32 %57, ptr %58, align 4
  %59 = load ptr, ptr %2, align 4
  %60 = getelementptr i32, ptr %59, i32 1
  %61 = load i32, ptr %59, align 4
  store ptr %60, ptr %2, align 4
  %62 = load i32, ptr %34, align 4
  %63 = add i32 %62, -4
  store i32 %63, ptr %34, align 4
  %64 = tail call i32 @llvm.bswap.i32(i32 %61) #21
  %65 = getelementptr inbounds %struct.rpc_gss_wire_cred, ptr %29, i32 0, i32 3
  store i32 %64, ptr %65, align 4
  %66 = getelementptr inbounds %struct.rpc_gss_wire_cred, ptr %29, i32 0, i32 4
  %67 = load i32, ptr %34, align 4
  %68 = icmp ult i32 %67, 4
  br i1 %68, label %189, label %69

69:                                               ; preds = %46
  %70 = load ptr, ptr %2, align 4
  %71 = getelementptr i32, ptr %70, i32 1
  %72 = load i32, ptr %70, align 4
  store ptr %71, ptr %2, align 4
  %73 = add i32 %67, -4
  store i32 %73, ptr %34, align 4
  %74 = tail call i32 @llvm.bswap.i32(i32 %72) #21
  store i32 %74, ptr %66, align 4
  %75 = add i32 %74, 3
  %76 = and i32 %75, -4
  %77 = load i32, ptr %34, align 4
  %78 = icmp ult i32 %77, %76
  br i1 %78, label %189, label %79

79:                                               ; preds = %69
  %80 = load ptr, ptr %2, align 4
  %81 = getelementptr inbounds %struct.rpc_gss_wire_cred, ptr %29, i32 0, i32 4, i32 1
  store ptr %80, ptr %81, align 4
  %82 = load ptr, ptr %2, align 4
  %83 = getelementptr i8, ptr %82, i32 %76
  store ptr %83, ptr %2, align 4
  %84 = load i32, ptr %34, align 4
  %85 = sub i32 %84, %76
  store i32 %85, ptr %34, align 4
  %86 = load i32, ptr %66, align 4
  %87 = add i32 %86, 23
  %88 = and i32 %87, -4
  %89 = icmp eq i32 %41, %88
  br i1 %89, label %90, label %189

90:                                               ; preds = %79
  %91 = load i32, ptr %51, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 30
  %95 = load i32, ptr %94, align 8
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %189

97:                                               ; preds = %93, %90
  store i32 50331648, ptr %22, align 4
  %98 = load i32, ptr %51, align 4
  switch i32 %98, label %117 [
    i32 1, label %99
    i32 2, label %99
    i32 0, label %110
    i32 3, label %110
  ]

99:                                               ; preds = %97, %97
  %100 = load ptr, ptr %10, align 8
  %101 = icmp eq ptr %100, null
  %102 = getelementptr inbounds %struct.svc_xprt, ptr %100, i32 0, i32 19
  %103 = select i1 %101, ptr %14, ptr %102
  %104 = load ptr, ptr %103, align 4
  %105 = tail call fastcc zeroext i1 @use_gss_proxy(ptr noundef %104)
  br i1 %105, label %106, label %108

106:                                              ; preds = %99
  %107 = tail call fastcc i32 @svcauth_gss_proxy_init(ptr noundef %0, ptr noundef nonnull %29)
  br label %222

108:                                              ; preds = %99
  %109 = tail call fastcc i32 @svcauth_gss_legacy_init(ptr noundef %0, ptr noundef nonnull %29)
  br label %222

110:                                              ; preds = %97, %97
  store i32 218103808, ptr %22, align 4
  %111 = getelementptr inbounds %struct.sunrpc_net, ptr %21, i32 0, i32 3
  %112 = load ptr, ptr %111, align 4
  %113 = tail call fastcc ptr @gss_svc_searchbyctx(ptr noundef %112, ptr noundef %66)
  %114 = icmp eq ptr %113, null
  br i1 %114, label %189, label %115

115:                                              ; preds = %110
  %116 = tail call fastcc i32 @gss_verify_header(ptr noundef %0, ptr noundef nonnull %113, ptr noundef %33, ptr noundef nonnull %29)
  switch i32 %116, label %118 [
    i32 6, label %199
    i32 8, label %194
  ]

117:                                              ; preds = %97
  store i32 33554432, ptr %22, align 4
  br label %189

118:                                              ; preds = %115
  %119 = load i32, ptr %51, align 4
  switch i32 %119, label %199 [
    i32 3, label %120
    i32 0, label %136
  ]

120:                                              ; preds = %118
  %121 = getelementptr inbounds %struct.rsc, ptr %113, i32 0, i32 4
  %122 = load ptr, ptr %121, align 8
  %123 = load i32, ptr %58, align 4
  %124 = tail call fastcc i32 @gss_write_verf(ptr noundef %0, ptr noundef %122, i32 noundef %123)
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %194

126:                                              ; preds = %120
  %127 = load ptr, ptr %111, align 4
  tail call void @sunrpc_cache_unhash(ptr noundef %127, ptr noundef nonnull %113) #21
  %128 = load i32, ptr %7, align 4
  %129 = add i32 %128, -4093
  %130 = icmp ult i32 %129, -4097
  br i1 %130, label %199, label %131

131:                                              ; preds = %126
  %132 = load ptr, ptr %3, align 4
  %133 = getelementptr i8, ptr %132, i32 %128
  store i32 0, ptr %133, align 4
  %134 = load i32, ptr %7, align 4
  %135 = add i32 %134, 4
  store i32 %135, ptr %7, align 4
  br label %199

136:                                              ; preds = %118
  store i32 234881024, ptr %22, align 4
  %137 = load ptr, ptr %3, align 4
  %138 = load i32, ptr %7, align 4
  %139 = getelementptr i8, ptr %137, i32 %138
  store ptr %139, ptr %30, align 4
  %140 = getelementptr inbounds %struct.rsc, ptr %113, i32 0, i32 4
  %141 = load ptr, ptr %140, align 8
  %142 = load i32, ptr %58, align 4
  %143 = tail call fastcc i32 @gss_write_verf(ptr noundef %0, ptr noundef %141, i32 noundef %142)
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %194

145:                                              ; preds = %136
  %146 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 11
  %147 = getelementptr inbounds %struct.rsc, ptr %113, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(32) %146, ptr noundef align 8 dereferenceable(32) %147, i32 32, i1 false)
  %148 = getelementptr inbounds %struct.rsc, ptr %113, i32 0, i32 2, i32 2
  %149 = load ptr, ptr %148, align 8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %149) #21, !srcloc !10
  %150 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %149, ptr %149, i32 1, ptr elementtype(i32) %149) #21, !srcloc !11
  store i32 16777216, ptr %22, align 4
  %151 = load i32, ptr %65, align 4
  switch i32 %151, label %194 [
    i32 1, label %183
    i32 2, label %152
    i32 3, label %166
  ]

152:                                              ; preds = %145
  %153 = load ptr, ptr %3, align 4
  %154 = load i32, ptr %7, align 4
  %155 = getelementptr i8, ptr %153, i32 %154
  store i32 0, ptr %155, align 4
  %156 = load i32, ptr %7, align 4
  %157 = add i32 %156, 4
  store i32 %157, ptr %7, align 4
  %158 = load ptr, ptr %3, align 4
  %159 = getelementptr i8, ptr %158, i32 %157
  store i32 0, ptr %159, align 4
  %160 = load i32, ptr %7, align 4
  %161 = add i32 %160, 4
  store i32 %161, ptr %7, align 4
  %162 = load i32, ptr %58, align 4
  %163 = load ptr, ptr %140, align 8
  %164 = tail call fastcc i32 @unwrap_integ_data(ptr noundef %0, ptr noundef %2, i32 noundef %162, ptr noundef %163)
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %180, label %199

166:                                              ; preds = %145
  %167 = load ptr, ptr %3, align 4
  %168 = load i32, ptr %7, align 4
  %169 = getelementptr i8, ptr %167, i32 %168
  store i32 0, ptr %169, align 4
  %170 = load i32, ptr %7, align 4
  %171 = add i32 %170, 4
  store i32 %171, ptr %7, align 4
  %172 = load ptr, ptr %3, align 4
  %173 = getelementptr i8, ptr %172, i32 %171
  store i32 0, ptr %173, align 4
  %174 = load i32, ptr %7, align 4
  %175 = add i32 %174, 4
  store i32 %175, ptr %7, align 4
  %176 = load i32, ptr %58, align 4
  %177 = load ptr, ptr %140, align 8
  %178 = tail call fastcc i32 @unwrap_priv_data(ptr noundef %0, ptr noundef %2, i32 noundef %176, ptr noundef %177)
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %199

180:                                              ; preds = %166, %152
  %181 = phi i32 [ 400, %152 ], [ 800, %166 ]
  %182 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 39
  store i32 %181, ptr %182, align 8
  br label %183

183:                                              ; preds = %180, %145
  store ptr %113, ptr %31, align 4
  tail call fastcc void @cache_get(ptr noundef nonnull %113)
  %184 = load ptr, ptr %140, align 8
  %185 = load ptr, ptr %184, align 4
  %186 = load i32, ptr %65, align 4
  %187 = tail call i32 @gss_svc_to_pseudoflavor(ptr noundef %185, i32 noundef 0, i32 noundef %186) #21
  %188 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 11, i32 3
  store i32 %187, ptr %188, align 4
  tail call fastcc void @trace_rpcgss_svc_authenticate(ptr noundef %0, ptr noundef nonnull %29)
  br label %199

189:                                              ; preds = %117, %110, %93, %79, %69, %46, %37, %28, %24
  %190 = load ptr, ptr %3, align 4
  %191 = ptrtoint ptr %9 to i32
  %192 = ptrtoint ptr %190 to i32
  %193 = sub i32 %191, %192
  store i32 %193, ptr %7, align 4
  br label %222

194:                                              ; preds = %145, %136, %120, %115
  %195 = load ptr, ptr %3, align 4
  %196 = ptrtoint ptr %9 to i32
  %197 = ptrtoint ptr %195 to i32
  %198 = sub i32 %196, %197
  store i32 %198, ptr %7, align 4
  br label %199

199:                                              ; preds = %194, %183, %166, %152, %131, %126, %118, %115
  %200 = phi i32 [ 8, %194 ], [ 7, %115 ], [ 7, %126 ], [ 1, %152 ], [ 1, %166 ], [ 1, %118 ], [ 10, %131 ], [ 5, %183 ]
  %201 = load ptr, ptr %111, align 4
  %202 = getelementptr inbounds %struct.cache_head, ptr %113, i32 0, i32 3
  %203 = load volatile i32, ptr %202, align 4
  %204 = icmp ult i32 %203, 3
  br i1 %204, label %205, label %212

205:                                              ; preds = %199
  %206 = getelementptr inbounds %struct.cache_head, ptr %113, i32 0, i32 1
  %207 = load i64, ptr %206, align 8
  %208 = getelementptr inbounds %struct.cache_detail, ptr %201, i32 0, i32 18
  %209 = load i64, ptr %208, align 8
  %210 = icmp slt i64 %207, %209
  br i1 %210, label %211, label %212

211:                                              ; preds = %205
  store i64 %207, ptr %208, align 8
  br label %212

212:                                              ; preds = %211, %205, %199
  %213 = getelementptr inbounds %struct.cache_detail, ptr %201, i32 0, i32 5
  %214 = load ptr, ptr %213, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %202) #21, !srcloc !10
  %215 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %202, ptr %202, i32 1, ptr elementtype(i32) %202) #21, !srcloc !13
  %216 = extractvalue { i32, i32, i32 } %215, 0
  %217 = icmp eq i32 %216, 1
  br i1 %217, label %221, label %218

218:                                              ; preds = %212
  %219 = icmp sgt i32 %216, 0
  br i1 %219, label %222, label %220, !prof !14

220:                                              ; preds = %218
  tail call void @refcount_warn_saturate(ptr noundef %202, i32 noundef 3) #21
  br label %222

221:                                              ; preds = %212
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !15
  tail call void %214(ptr noundef %202) #21
  br label %222

222:                                              ; preds = %221, %220, %218, %189, %108, %106
  %223 = phi i32 [ %107, %106 ], [ %109, %108 ], [ 8, %189 ], [ %200, %218 ], [ %200, %220 ], [ %200, %221 ]
  ret i32 %223
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @svcauth_gss_release(ptr noundef %0) #2 {
  %2 = alloca %struct.xdr_buf, align 4
  %3 = alloca %struct.xdr_netobj, align 8
  %4 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 37
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 19
  %7 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  %10 = getelementptr inbounds %struct.svc_xprt, ptr %8, i32 0, i32 19
  %11 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 48
  %12 = select i1 %9, ptr %11, ptr %10
  %13 = load ptr, ptr %12, align 4
  %14 = load i32, ptr @sunrpc_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !8
  %15 = getelementptr inbounds %struct.net, ptr %13, i32 0, i32 37
  %16 = load volatile ptr, ptr %15, align 64
  %17 = getelementptr [0 x ptr], ptr %16, i32 0, i32 %14
  %18 = load ptr, ptr %17, align 4
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !9
  %19 = icmp eq ptr %5, null
  br i1 %19, label %219, label %20

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.rpc_gss_wire_cred, ptr %5, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %219

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.gss_svc_data, ptr %5, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %219, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 19, i32 0, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 19, i32 5
  %32 = load i32, ptr %31, align 4
  %33 = add i32 %32, %30
  %34 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 19, i32 1, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = add i32 %33, %35
  %37 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 19, i32 8
  store i32 %36, ptr %37, align 4
  %38 = getelementptr inbounds %struct.rpc_gss_wire_cred, ptr %5, i32 0, i32 3
  %39 = load i32, ptr %38, align 4
  switch i32 %39, label %219 [
    i32 3, label %133
    i32 2, label %40
  ]

40:                                               ; preds = %28
  %41 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %2) #21
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %2, i8 0, i32 44, i1 false) #21, !annotation !16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  store i64 0, ptr %3, align 8, !annotation !16
  %42 = getelementptr inbounds %struct.gss_svc_data, ptr %41, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  store ptr null, ptr %42, align 4
  %44 = getelementptr i32, ptr %43, i32 -1
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %132

47:                                               ; preds = %40
  %48 = getelementptr i32, ptr %43, i32 1
  %49 = getelementptr i32, ptr %43, i32 2
  %50 = load i32, ptr %48, align 4
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #21
  %52 = add i32 %51, 3
  %53 = lshr i32 %52, 2
  %54 = getelementptr i32, ptr %49, i32 %53
  %55 = getelementptr i32, ptr %54, i32 2
  %56 = load i32, ptr %55, align 4
  store i32 %56, ptr %54, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %47
  %59 = load i32, ptr %29, align 4
  %60 = add i32 %59, -8
  store i32 %60, ptr %29, align 4
  br label %132

61:                                               ; preds = %47
  %62 = getelementptr i32, ptr %54, i32 1
  %63 = icmp eq ptr %62, null
  br i1 %63, label %132, label %64

64:                                               ; preds = %61
  %65 = getelementptr i32, ptr %62, i32 1
  %66 = load ptr, ptr %6, align 4
  %67 = ptrtoint ptr %65 to i32
  %68 = ptrtoint ptr %66 to i32
  %69 = sub i32 %67, %68
  %70 = load i32, ptr %37, align 4
  %71 = sub i32 %70, %69
  %72 = and i32 %71, 3
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %132

74:                                               ; preds = %64
  %75 = tail call i32 @llvm.bswap.i32(i32 %71) #21
  store i32 %75, ptr %62, align 4
  %76 = getelementptr inbounds %struct.rpc_gss_wire_cred, ptr %41, i32 0, i32 2
  %77 = load i32, ptr %76, align 4
  %78 = tail call i32 @llvm.bswap.i32(i32 %77) #21
  store i32 %78, ptr %65, align 4
  %79 = call i32 @xdr_buf_subsegment(ptr noundef %6, ptr noundef nonnull %2, i32 noundef %69, i32 noundef %71) #21
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %74
  %82 = load i1, ptr @svcauth_gss_wrap_resp_integ.__already_done, align 1
  br i1 %82, label %131, label %83, !prof !14

83:                                               ; preds = %81
  store i1 true, ptr @svcauth_gss_wrap_resp_integ.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1734, i32 noundef 9, ptr noundef null) #21
  br label %131

84:                                               ; preds = %74
  %85 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 19, i32 1
  %86 = load ptr, ptr %85, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %90, label %88

88:                                               ; preds = %84
  %89 = load i32, ptr %34, align 4
  br label %97

90:                                               ; preds = %84
  %91 = load i32, ptr %29, align 4
  %92 = add i32 %91, -3697
  %93 = icmp ult i32 %92, -4097
  br i1 %93, label %131, label %94

94:                                               ; preds = %90
  %95 = load ptr, ptr %6, align 4
  %96 = getelementptr i8, ptr %95, i32 %91
  store ptr %96, ptr %85, align 4
  store i32 0, ptr %34, align 4
  br label %97

97:                                               ; preds = %94, %88
  %98 = phi i32 [ 0, %94 ], [ %89, %88 ]
  %99 = phi ptr [ %96, %94 ], [ %86, %88 ]
  %100 = getelementptr i8, ptr %99, i32 %98
  %101 = getelementptr i8, ptr %100, i32 4
  %102 = getelementptr inbounds %struct.xdr_netobj, ptr %3, i32 0, i32 1
  store ptr %101, ptr %102, align 4
  %103 = getelementptr inbounds %struct.gss_svc_data, ptr %41, i32 0, i32 2
  %104 = load ptr, ptr %103, align 4
  %105 = getelementptr inbounds %struct.rsc, ptr %104, i32 0, i32 4
  %106 = load ptr, ptr %105, align 8
  %107 = call i32 @gss_get_mic(ptr noundef %106, ptr noundef nonnull %2, ptr noundef nonnull %3) #21
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %131

109:                                              ; preds = %97
  %110 = load i32, ptr %3, align 8
  %111 = load ptr, ptr %85, align 4
  %112 = load i32, ptr %34, align 4
  %113 = getelementptr i8, ptr %111, i32 %112
  %114 = call i32 @llvm.bswap.i32(i32 %110) #21
  store i32 %114, ptr %113, align 4
  %115 = load i32, ptr %34, align 4
  %116 = add i32 %115, 4
  store i32 %116, ptr %34, align 4
  %117 = load ptr, ptr %102, align 4
  %118 = load i32, ptr %3, align 8
  %119 = getelementptr i8, ptr %117, i32 %118
  %120 = add i32 %118, 3
  %121 = and i32 %120, -4
  %122 = sub i32 %121, %118
  call void @llvm.memset.p0.i32(ptr align 1 %119, i8 0, i32 %122, i1 false) #21
  %123 = load i32, ptr %3, align 8
  %124 = add i32 %123, 3
  %125 = and i32 %124, -4
  %126 = load i32, ptr %34, align 4
  %127 = add i32 %125, %126
  store i32 %127, ptr %34, align 4
  %128 = load i32, ptr %37, align 4
  %129 = add i32 %128, %125
  store i32 %129, ptr %37, align 4
  %130 = icmp ugt i32 %127, 4096
  br i1 %130, label %131, label %132

131:                                              ; preds = %109, %97, %90, %83, %81
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %2) #21
  br label %219

132:                                              ; preds = %109, %64, %61, %58, %40
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %2) #21
  br label %219

133:                                              ; preds = %28
  %134 = load ptr, ptr %4, align 8
  %135 = getelementptr inbounds %struct.gss_svc_data, ptr %134, i32 0, i32 1
  %136 = load ptr, ptr %135, align 4
  store ptr null, ptr %135, align 4
  %137 = getelementptr i32, ptr %136, i32 -1
  %138 = load i32, ptr %137, align 4
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %219

140:                                              ; preds = %133
  %141 = getelementptr i32, ptr %136, i32 1
  %142 = getelementptr i32, ptr %136, i32 2
  %143 = load i32, ptr %141, align 4
  %144 = tail call i32 @llvm.bswap.i32(i32 %143) #21
  %145 = add i32 %144, 3
  %146 = lshr i32 %145, 2
  %147 = getelementptr i32, ptr %142, i32 %146
  %148 = getelementptr i32, ptr %147, i32 2
  %149 = load i32, ptr %148, align 4
  store i32 %149, ptr %147, align 4
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %214

151:                                              ; preds = %140
  %152 = getelementptr i32, ptr %147, i32 1
  %153 = icmp eq ptr %152, null
  br i1 %153, label %219, label %154

154:                                              ; preds = %151
  %155 = getelementptr i32, ptr %152, i32 1
  %156 = load ptr, ptr %6, align 4
  %157 = ptrtoint ptr %155 to i32
  %158 = ptrtoint ptr %156 to i32
  %159 = sub i32 %157, %158
  %160 = getelementptr inbounds %struct.rpc_gss_wire_cred, ptr %134, i32 0, i32 2
  %161 = load i32, ptr %160, align 4
  %162 = tail call i32 @llvm.bswap.i32(i32 %161) #21
  store i32 %162, ptr %155, align 4
  %163 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 19, i32 3
  %164 = load ptr, ptr %163, align 4
  %165 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 19, i32 1
  %166 = load ptr, ptr %165, align 4
  %167 = icmp eq ptr %166, null
  br i1 %167, label %185, label %168

168:                                              ; preds = %154
  %169 = load ptr, ptr %6, align 4
  %170 = getelementptr i8, ptr %169, i32 4096
  %171 = icmp uge ptr %166, %170
  %172 = icmp ult ptr %166, %169
  %173 = or i1 %172, %171
  br i1 %173, label %219, label %174

174:                                              ; preds = %168
  %175 = load i32, ptr %34, align 4
  %176 = load i32, ptr %29, align 4
  %177 = add i32 %175, -3297
  %178 = add i32 %177, %176
  %179 = icmp ult i32 %178, -4097
  br i1 %179, label %219, label %180

180:                                              ; preds = %174
  %181 = getelementptr i8, ptr %166, i32 400
  tail call void @llvm.memmove.p0.p0.i32(ptr align 1 %181, ptr nonnull align 1 %166, i32 %175, i1 false) #21
  %182 = load ptr, ptr %165, align 4
  %183 = getelementptr i8, ptr %182, i32 400
  store ptr %183, ptr %165, align 4
  %184 = icmp eq ptr %183, null
  br i1 %184, label %185, label %193

185:                                              ; preds = %180, %154
  %186 = load i32, ptr %29, align 4
  %187 = add i32 %186, -3297
  %188 = icmp ult i32 %187, -4097
  br i1 %188, label %219, label %189

189:                                              ; preds = %185
  %190 = load ptr, ptr %6, align 4
  %191 = getelementptr i8, ptr %190, i32 %186
  %192 = getelementptr i8, ptr %191, i32 400
  store ptr %192, ptr %165, align 4
  store i32 0, ptr %34, align 4
  br label %193

193:                                              ; preds = %189, %180
  %194 = getelementptr inbounds %struct.gss_svc_data, ptr %134, i32 0, i32 2
  %195 = load ptr, ptr %194, align 4
  %196 = getelementptr inbounds %struct.rsc, ptr %195, i32 0, i32 4
  %197 = load ptr, ptr %196, align 8
  %198 = tail call i32 @gss_wrap(ptr noundef %197, i32 noundef %159, ptr noundef %6, ptr noundef %164) #21
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %219

200:                                              ; preds = %193
  %201 = load i32, ptr %37, align 4
  %202 = sub i32 %201, %159
  %203 = tail call i32 @llvm.bswap.i32(i32 %202) #21
  store i32 %203, ptr %152, align 4
  %204 = load i32, ptr %37, align 4
  %205 = xor i32 %159, -1
  %206 = add i32 %204, %205
  %207 = and i32 %206, 3
  %208 = xor i32 %207, 3
  %209 = load ptr, ptr %165, align 4
  %210 = load i32, ptr %34, align 4
  %211 = getelementptr i8, ptr %209, i32 %210
  tail call void @llvm.memset.p0.i32(ptr align 4 %211, i8 0, i32 %208, i1 false) #21
  %212 = load i32, ptr %34, align 4
  %213 = add i32 %212, %208
  store i32 %213, ptr %34, align 4
  br label %214

214:                                              ; preds = %200, %140
  %215 = phi ptr [ %37, %200 ], [ %29, %140 ]
  %216 = phi i32 [ %208, %200 ], [ -8, %140 ]
  %217 = load i32, ptr %215, align 4
  %218 = add i32 %217, %216
  store i32 %218, ptr %215, align 4
  br label %219

219:                                              ; preds = %214, %193, %185, %174, %168, %151, %133, %132, %131, %28, %24, %20, %1
  %220 = phi i32 [ -22, %131 ], [ 0, %214 ], [ 0, %151 ], [ 0, %133 ], [ 0, %132 ], [ 0, %28 ], [ 0, %24 ], [ 0, %20 ], [ 0, %1 ], [ -12, %193 ], [ -12, %185 ], [ -12, %174 ], [ -22, %168 ]
  %221 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 43
  %222 = load ptr, ptr %221, align 8
  %223 = icmp eq ptr %222, null
  br i1 %223, label %225, label %224

224:                                              ; preds = %219
  call void @auth_domain_put(ptr noundef nonnull %222) #21
  br label %225

225:                                              ; preds = %224, %219
  store ptr null, ptr %221, align 8
  %226 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 44
  %227 = load ptr, ptr %226, align 4
  %228 = icmp eq ptr %227, null
  br i1 %228, label %230, label %229

229:                                              ; preds = %225
  call void @auth_domain_put(ptr noundef nonnull %227) #21
  br label %230

230:                                              ; preds = %229, %225
  store ptr null, ptr %226, align 4
  %231 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 11, i32 2
  %232 = load ptr, ptr %231, align 4
  %233 = icmp eq ptr %232, null
  br i1 %233, label %240, label %234

234:                                              ; preds = %230
  call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !17
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %232) #21, !srcloc !10
  %235 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %232, ptr nonnull %232, i32 1, ptr nonnull elementtype(i32) %232) #21, !srcloc !18
  %236 = extractvalue { i32, i32 } %235, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !19
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %238, label %240

238:                                              ; preds = %234
  %239 = load ptr, ptr %231, align 4
  call void @groups_free(ptr noundef %239) #21
  br label %240

240:                                              ; preds = %238, %234, %230
  store ptr null, ptr %231, align 4
  br i1 %19, label %269, label %241

241:                                              ; preds = %240
  %242 = getelementptr inbounds %struct.gss_svc_data, ptr %5, i32 0, i32 2
  %243 = load ptr, ptr %242, align 4
  %244 = icmp eq ptr %243, null
  br i1 %244, label %269, label %245

245:                                              ; preds = %241
  %246 = getelementptr inbounds %struct.sunrpc_net, ptr %18, i32 0, i32 3
  %247 = load ptr, ptr %246, align 4
  %248 = getelementptr inbounds %struct.cache_head, ptr %243, i32 0, i32 3
  %249 = load volatile i32, ptr %248, align 4
  %250 = icmp ult i32 %249, 3
  br i1 %250, label %251, label %258

251:                                              ; preds = %245
  %252 = getelementptr inbounds %struct.cache_head, ptr %243, i32 0, i32 1
  %253 = load i64, ptr %252, align 8
  %254 = getelementptr inbounds %struct.cache_detail, ptr %247, i32 0, i32 18
  %255 = load i64, ptr %254, align 8
  %256 = icmp slt i64 %253, %255
  br i1 %256, label %257, label %258

257:                                              ; preds = %251
  store i64 %253, ptr %254, align 8
  br label %258

258:                                              ; preds = %257, %251, %245
  %259 = getelementptr inbounds %struct.cache_detail, ptr %247, i32 0, i32 5
  %260 = load ptr, ptr %259, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !12
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %248) #21, !srcloc !10
  %261 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %248, ptr %248, i32 1, ptr elementtype(i32) %248) #21, !srcloc !13
  %262 = extractvalue { i32, i32, i32 } %261, 0
  %263 = icmp eq i32 %262, 1
  br i1 %263, label %267, label %264

264:                                              ; preds = %258
  %265 = icmp sgt i32 %262, 0
  br i1 %265, label %268, label %266, !prof !14

266:                                              ; preds = %264
  call void @refcount_warn_saturate(ptr noundef %248, i32 noundef 3) #21
  br label %268

267:                                              ; preds = %258
  call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !15
  call void %260(ptr noundef %248) #21
  br label %268

268:                                              ; preds = %267, %266, %264
  store ptr null, ptr %242, align 4
  br label %269

269:                                              ; preds = %268, %241, %240
  ret i32 %220
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @svcauth_gss_domain_release(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.auth_domain, ptr %0, i32 0, i32 4
  tail call void @call_rcu(ptr noundef %2, ptr noundef nonnull @svcauth_gss_domain_release_rcu) #21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @svcauth_gss_set_client(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 37
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.gss_svc_data, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 38
  store i32 16777216, ptr %6, align 4
  %7 = getelementptr inbounds %struct.rsc, ptr %5, i32 0, i32 4
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.rpc_gss_wire_cred, ptr %3, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = load ptr, ptr %8, align 4
  %12 = tail call ptr @gss_service_to_auth_domain_name(ptr noundef %11, i32 noundef %10) #21
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 44
  store ptr null, ptr %15, align 4
  br label %25

16:                                               ; preds = %1
  %17 = tail call ptr @auth_domain_find(ptr noundef nonnull %12) #21
  %18 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 44
  store ptr %17, ptr %18, align 4
  %19 = icmp eq ptr %17, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %16
  %21 = tail call i32 @svcauth_unix_set_client(ptr noundef %0) #21
  %22 = and i32 %21, -2
  %23 = icmp eq i32 %22, 6
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  store i32 0, ptr %6, align 4
  br label %25

25:                                               ; preds = %24, %20, %16, %14
  %26 = phi i32 [ 5, %24 ], [ 8, %16 ], [ %21, %20 ], [ 8, %14 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @use_gss_proxy(ptr noundef %0) unnamed_addr #2 {
  %2 = load i32, ptr @sunrpc_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !8
  %3 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 37
  %4 = load volatile ptr, ptr %3, align 64
  %5 = getelementptr [0 x ptr], ptr %4, i32 0, i32 %2
  %6 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !9
  %7 = getelementptr inbounds %struct.sunrpc_net, ptr %6, i32 0, i32 17
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %10, label %22

10:                                               ; preds = %1
  %11 = load i32, ptr @sunrpc_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !8
  %12 = load volatile ptr, ptr %3, align 64
  %13 = getelementptr [0 x ptr], ptr %12, i32 0, i32 %11
  %14 = load ptr, ptr %13, align 4
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !9
  %15 = getelementptr inbounds %struct.sunrpc_net, ptr %14, i32 0, i32 17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %15) #21, !srcloc !10
  br label %16

16:                                               ; preds = %16, %10
  %17 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %15, i32 -1, i32 0) #21, !srcloc !21
  %18 = extractvalue { i32, i32 } %17, 0
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %16

20:                                               ; preds = %16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !22
  %21 = load i32, ptr %7, align 4
  br label %22

22:                                               ; preds = %20, %1
  %23 = phi i32 [ %21, %20 ], [ %8, %1 ]
  %24 = icmp ne i32 %23, 0
  ret i1 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @svcauth_gss_proxy_init(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #2 {
  %3 = alloca %struct.rsc, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.timespec64, align 8
  %6 = alloca %struct.xdr_netobj, align 8
  %7 = alloca %struct.gssp_upcall_data, align 4
  %8 = alloca i64, align 8
  %9 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  store i64 0, ptr %6, align 8, !annotation !16
  call void @llvm.lifetime.start.p0(i64 116, ptr nonnull %7) #21
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(116) %7, i8 0, i32 116, i1 false), !annotation !16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #21
  store i64 0, ptr %8, align 8, !annotation !16
  %10 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 2
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  %13 = getelementptr inbounds %struct.svc_xprt, ptr %11, i32 0, i32 19
  %14 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 48
  %15 = select i1 %12, ptr %14, ptr %13
  %16 = load ptr, ptr %15, align 4
  %17 = load i32, ptr @sunrpc_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !8
  %18 = getelementptr inbounds %struct.net, ptr %16, i32 0, i32 37
  %19 = load volatile ptr, ptr %18, align 64
  %20 = getelementptr [0 x ptr], ptr %19, i32 0, i32 %17
  %21 = load ptr, ptr %20, align 4
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(116) %7, i8 0, i32 116, i1 false)
  %22 = getelementptr inbounds %struct.gssp_upcall_data, ptr %7, i32 0, i32 1
  %23 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 15
  %24 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 38
  store i32 50331648, ptr %24, align 4
  %25 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 15, i32 0, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = icmp ult i32 %26, 8
  br i1 %27, label %383, label %28

28:                                               ; preds = %2
  %29 = load ptr, ptr %23, align 4
  %30 = getelementptr i32, ptr %29, i32 1
  %31 = load i32, ptr %29, align 4
  store ptr %30, ptr %23, align 4
  %32 = add i32 %26, -4
  store i32 %32, ptr %25, align 4
  %33 = icmp eq i32 %31, 0
  br i1 %33, label %34, label %383

34:                                               ; preds = %28
  %35 = getelementptr i32, ptr %29, i32 2
  %36 = load i32, ptr %30, align 4
  store ptr %35, ptr %23, align 4
  %37 = add i32 %26, -8
  store i32 %37, ptr %25, align 4
  %38 = icmp eq i32 %36, 0
  br i1 %38, label %39, label %383

39:                                               ; preds = %34
  store i32 16777216, ptr %24, align 4
  %40 = getelementptr inbounds %struct.rpc_gss_wire_cred, ptr %1, i32 0, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %41, 1
  %43 = getelementptr inbounds %struct.rpc_gss_wire_cred, ptr %1, i32 0, i32 4
  %44 = load i32, ptr %43, align 4
  br i1 %42, label %45, label %48

45:                                               ; preds = %39
  %46 = icmp eq i32 %44, 0
  br i1 %46, label %47, label %383

47:                                               ; preds = %45
  store i32 0, ptr %7, align 4
  br label %52

48:                                               ; preds = %39
  %49 = getelementptr inbounds %struct.rpc_gss_wire_cred, ptr %1, i32 0, i32 4, i32 1
  %50 = load ptr, ptr %49, align 4
  store i32 %44, ptr %7, align 4
  %51 = icmp eq i32 %44, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %48, %47
  %53 = getelementptr inbounds %struct.xdr_netobj, ptr %7, i32 0, i32 1
  store ptr null, ptr %53, align 4
  br label %61

54:                                               ; preds = %48
  %55 = tail call ptr @kmemdup(ptr noundef %50, i32 noundef %44, i32 noundef 3264) #21
  %56 = getelementptr inbounds %struct.xdr_netobj, ptr %7, i32 0, i32 1
  store ptr %55, ptr %56, align 4
  %57 = icmp eq ptr %55, null
  br i1 %57, label %383, label %58

58:                                               ; preds = %54
  %59 = load ptr, ptr %23, align 4
  %60 = load i32, ptr %25, align 4
  br label %61

61:                                               ; preds = %58, %52
  %62 = phi i32 [ %60, %58 ], [ %37, %52 ]
  %63 = phi ptr [ %59, %58 ], [ %35, %52 ]
  store i32 50331648, ptr %24, align 4
  %64 = getelementptr i32, ptr %63, i32 1
  %65 = load i32, ptr %63, align 4
  store ptr %64, ptr %23, align 4
  %66 = add i32 %62, -4
  store i32 %66, ptr %25, align 4
  %67 = tail call i32 @llvm.bswap.i32(i32 %65) #21
  %68 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 15, i32 5
  %69 = load i32, ptr %68, align 4
  %70 = add i32 %69, %66
  %71 = icmp ugt i32 %67, %70
  br i1 %71, label %383, label %72

72:                                               ; preds = %61
  %73 = add i32 %67, 4095
  %74 = lshr i32 %73, 12
  %75 = shl nuw nsw i32 %74, 2
  %76 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %75, i32 noundef 3520) #23
  store ptr %76, ptr %22, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %383, label %78

78:                                               ; preds = %72
  %79 = getelementptr inbounds %struct.gssp_upcall_data, ptr %7, i32 0, i32 1, i32 1
  store i32 0, ptr %79, align 4
  %80 = getelementptr inbounds %struct.gssp_upcall_data, ptr %7, i32 0, i32 1, i32 2
  store i32 %67, ptr %80, align 4
  %81 = icmp ult i32 %73, 4096
  br i1 %81, label %124, label %82

82:                                               ; preds = %78
  %83 = tail call i32 @llvm.umax.i32(i32 %74, i32 1) #21
  br label %87

84:                                               ; preds = %87
  %85 = add nuw nsw i32 %89, 1
  %86 = icmp eq i32 %85, %83
  br i1 %86, label %124, label %87

87:                                               ; preds = %84, %82
  %88 = phi ptr [ %92, %84 ], [ %76, %82 ]
  %89 = phi i32 [ %85, %84 ], [ 0, %82 ]
  %90 = tail call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #21
  %91 = getelementptr ptr, ptr %88, i32 %89
  store ptr %90, ptr %91, align 4
  %92 = load ptr, ptr %22, align 4
  %93 = getelementptr ptr, ptr %92, i32 %89
  %94 = load ptr, ptr %93, align 4
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %84

96:                                               ; preds = %87
  %97 = load i32, ptr %80, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %123, label %99

99:                                               ; preds = %120, %96
  %100 = phi i32 [ %122, %120 ], [ %97, %96 ]
  %101 = load ptr, ptr %92, align 4
  %102 = icmp eq ptr %101, null
  br i1 %102, label %120, label %103

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.page, ptr %101, i32 0, i32 1
  %105 = load volatile i32, ptr %104, align 4
  %106 = and i32 %105, 1
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %110, label %108, !prof !14

108:                                              ; preds = %103
  %109 = add i32 %105, -1
  br label %112

110:                                              ; preds = %103
  %111 = ptrtoint ptr %101 to i32
  br label %112

112:                                              ; preds = %110, %108
  %113 = phi i32 [ %109, %108 ], [ %111, %110 ]
  %114 = inttoptr i32 %113 to ptr
  %115 = getelementptr inbounds %struct.page, ptr %114, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %115) #21, !srcloc !10
  %116 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %115, ptr %115, i32 1, ptr elementtype(i32) %115) #21, !srcloc !18
  %117 = extractvalue { i32, i32 } %116, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !19
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %112
  tail call void @__put_page(ptr noundef %114) #21
  br label %120

120:                                              ; preds = %119, %112, %99
  %121 = icmp ult i32 %100, 4097
  %122 = add i32 %100, -4096
  br i1 %121, label %123, label %99

123:                                              ; preds = %120, %96
  tail call void @kfree(ptr noundef %92) #21
  br label %383

124:                                              ; preds = %84, %78
  %125 = phi ptr [ %76, %78 ], [ %92, %84 ]
  %126 = load i32, ptr %25, align 4
  %127 = tail call i32 @llvm.umin.i32(i32 %67, i32 %126) #21
  %128 = load ptr, ptr %125, align 4
  %129 = tail call ptr @page_address(ptr noundef %128) #21
  %130 = load ptr, ptr %23, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %129, ptr align 1 %130, i32 %127, i1 false) #21
  %131 = sub i32 %67, %127
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %162, label %133

133:                                              ; preds = %124
  %134 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 15, i32 4
  %135 = load i32, ptr %134, align 8
  %136 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 15, i32 3
  br label %137

137:                                              ; preds = %137, %133
  %138 = phi i32 [ %135, %133 ], [ %159, %137 ]
  %139 = phi i32 [ %127, %133 ], [ %158, %137 ]
  %140 = phi i32 [ %131, %133 ], [ %160, %137 ]
  %141 = lshr i32 %139, 12
  %142 = lshr i32 %138, 12
  %143 = and i32 %139, 4095
  %144 = and i32 %138, 4095
  %145 = sub nuw nsw i32 4096, %143
  %146 = sub nuw nsw i32 4096, %144
  %147 = tail call i32 @llvm.umin.i32(i32 %145, i32 %146) #21
  %148 = tail call i32 @llvm.umin.i32(i32 %140, i32 %147) #21
  %149 = getelementptr ptr, ptr %125, i32 %141
  %150 = load ptr, ptr %149, align 4
  %151 = tail call ptr @page_address(ptr noundef %150) #21
  %152 = getelementptr i8, ptr %151, i32 %143
  %153 = load ptr, ptr %136, align 4
  %154 = getelementptr ptr, ptr %153, i32 %142
  %155 = load ptr, ptr %154, align 4
  %156 = tail call ptr @page_address(ptr noundef %155) #21
  %157 = getelementptr i8, ptr %156, i32 %144
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %152, ptr align 1 %157, i32 %148, i1 false) #21
  %158 = add i32 %148, %139
  %159 = add i32 %148, %138
  %160 = sub i32 %140, %148
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %137

162:                                              ; preds = %137, %124
  %163 = call i32 @gssp_accept_sec_context_upcall(ptr noundef %16, ptr noundef nonnull %7) #21
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %351

165:                                              ; preds = %162
  %166 = getelementptr inbounds %struct.gssp_upcall_data, ptr %7, i32 0, i32 7
  %167 = load i32, ptr %166, align 4
  %168 = getelementptr inbounds %struct.gssp_upcall_data, ptr %7, i32 0, i32 8
  %169 = load i32, ptr %168, align 4
  %170 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_svc_accept_upcall, i32 0, i32 1), align 4
  %171 = icmp sgt i32 %170, 0
  br i1 %171, label %172, label %186

172:                                              ; preds = %165
  %173 = tail call ptr @llvm.thread.pointer() #21
  %174 = getelementptr inbounds %struct.thread_info, ptr %173, i32 0, i32 2
  %175 = load i32, ptr %174, align 8
  %176 = lshr i32 %175, 5
  %177 = getelementptr i32, ptr @__cpu_online_mask, i32 %176
  %178 = load volatile i32, ptr %177, align 4
  %179 = and i32 %175, 31
  %180 = shl nuw i32 1, %179
  %181 = and i32 %180, %178
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %186, label %183

183:                                              ; preds = %172
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !23
  %184 = call i32 @__traceiter_rpcgss_svc_accept_upcall(ptr noundef null, ptr noundef %0, i32 noundef %167, i32 noundef %169) #21
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !24
  %185 = load i32, ptr %166, align 4
  br label %186

186:                                              ; preds = %183, %172, %165
  %187 = phi i32 [ %167, %165 ], [ %185, %183 ], [ %167, %172 ]
  switch i32 %187, label %351 [
    i32 1, label %188
    i32 0, label %195
  ]

188:                                              ; preds = %186
  %189 = getelementptr inbounds %struct.gssp_upcall_data, ptr %7, i32 0, i32 2
  %190 = load i64, ptr %189, align 4
  store i64 %190, ptr %6, align 8
  %191 = trunc i64 %190 to i32
  %192 = lshr i64 %190, 32
  %193 = trunc i64 %192 to i32
  %194 = inttoptr i32 %193 to ptr
  br label %272

195:                                              ; preds = %186
  %196 = getelementptr inbounds %struct.sunrpc_net, ptr %21, i32 0, i32 3
  %197 = load ptr, ptr %196, align 4
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  store i64 0, ptr %4, align 8, !annotation !16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(112) %3, i8 0, i32 112, i1 false) #21
  call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !25
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @gss_proxy_save_rsc.ctxhctr) #21, !srcloc !10
  %198 = call { i64, i32 } asm sideeffect "@ atomic64_add_return\0A1:\09ldrexd\09$0, ${0:H}, [$3]\0A\09adds ${0:Q}, ${0:Q}, ${4:Q}\0A\09adc ${0:R}, ${0:R}, ${4:R}\0A\09strexd\09$1, $0, ${0:H}, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,r,*Qo,~{cc}"(ptr nonnull elementtype(i64) @gss_proxy_save_rsc.ctxhctr, ptr nonnull @gss_proxy_save_rsc.ctxhctr, i64 1, ptr nonnull elementtype(i64) @gss_proxy_save_rsc.ctxhctr) #21, !srcloc !26
  %199 = extractvalue { i64, i32 } %198, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !27
  store i64 %199, ptr %8, align 8
  %200 = getelementptr inbounds %struct.rsc, ptr %3, i32 0, i32 1
  store i32 8, ptr %200, align 8
  %201 = call ptr @kmemdup(ptr noundef nonnull %8, i32 noundef 8, i32 noundef 3264) #21
  %202 = getelementptr inbounds %struct.rsc, ptr %3, i32 0, i32 1, i32 1
  store ptr %201, ptr %202, align 4
  %203 = icmp eq ptr %201, null
  br i1 %203, label %230, label %204

204:                                              ; preds = %195
  %205 = call i32 @full_name_hash(ptr noundef null, ptr noundef nonnull %201, i32 noundef 8) #24
  %206 = lshr i32 %205, 22
  %207 = call ptr @sunrpc_cache_lookup_rcu(ptr noundef %197, ptr noundef nonnull %3, i32 noundef %206) #21
  %208 = icmp eq ptr %207, null
  br i1 %208, label %230, label %209

209:                                              ; preds = %204
  %210 = getelementptr inbounds %struct.gssp_upcall_data, ptr %7, i32 0, i32 6
  %211 = load i32, ptr %210, align 4
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %231, label %213

213:                                              ; preds = %209
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #21
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i32 16, i1 false) #21, !annotation !16
  %214 = getelementptr inbounds %struct.rsc, ptr %3, i32 0, i32 2
  %215 = getelementptr inbounds %struct.gssp_upcall_data, ptr %7, i32 0, i32 5
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(32) %214, ptr noundef align 4 dereferenceable(32) %215, i32 32, i1 false) #21
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(32) %215, i8 0, i32 32, i1 false) #21
  %216 = getelementptr inbounds %struct.gssp_upcall_data, ptr %7, i32 0, i32 4
  %217 = call ptr @gss_mech_get_by_OID(ptr noundef %216) #21
  %218 = icmp eq ptr %217, null
  br i1 %218, label %228, label %219

219:                                              ; preds = %213
  %220 = getelementptr inbounds %struct.rsc, ptr %3, i32 0, i32 2, i32 7
  store ptr %217, ptr %220, align 4
  %221 = getelementptr inbounds %struct.gssp_upcall_data, ptr %7, i32 0, i32 2
  %222 = getelementptr inbounds %struct.gssp_upcall_data, ptr %7, i32 0, i32 2, i32 1
  %223 = load ptr, ptr %222, align 4
  %224 = load i32, ptr %221, align 4
  %225 = getelementptr inbounds %struct.rsc, ptr %3, i32 0, i32 4
  %226 = call i32 @gss_import_sec_context(ptr noundef %223, i32 noundef %224, ptr noundef nonnull %217, ptr noundef %225, ptr noundef nonnull %4, i32 noundef 3264) #21
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %233, label %228

228:                                              ; preds = %219, %213
  %229 = phi i32 [ %226, %219 ], [ -95, %213 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #21
  br label %231

230:                                              ; preds = %204, %195
  call fastcc void @rsc_free(ptr noundef nonnull %3) #21
  br label %267

231:                                              ; preds = %228, %209
  %232 = phi i32 [ %229, %228 ], [ -12, %209 ]
  call fastcc void @rsc_free(ptr noundef nonnull %3) #21
  br label %244

233:                                              ; preds = %219
  call void @getboottime64(ptr noundef nonnull %5) #21
  %234 = load i64, ptr %5, align 8
  %235 = load i64, ptr %4, align 8
  %236 = sub i64 %235, %234
  store i64 %236, ptr %4, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #21
  %237 = getelementptr inbounds %struct.cache_head, ptr %3, i32 0, i32 1
  store i64 %236, ptr %237, align 8
  %238 = load ptr, ptr %202, align 4
  %239 = load i32, ptr %200, align 8
  %240 = call i32 @full_name_hash(ptr noundef null, ptr noundef %238, i32 noundef %239) #24
  %241 = lshr i32 %240, 22
  %242 = call ptr @sunrpc_cache_update(ptr noundef %197, ptr noundef nonnull %3, ptr noundef nonnull %207, i32 noundef %241) #21
  call fastcc void @rsc_free(ptr noundef nonnull %3) #21
  %243 = icmp eq ptr %242, null
  br i1 %243, label %267, label %244

244:                                              ; preds = %233, %231
  %245 = phi i32 [ %232, %231 ], [ 0, %233 ]
  %246 = phi ptr [ %207, %231 ], [ %242, %233 ]
  %247 = getelementptr inbounds %struct.cache_head, ptr %246, i32 0, i32 3
  %248 = load volatile i32, ptr %247, align 4
  %249 = icmp ult i32 %248, 3
  br i1 %249, label %250, label %257

250:                                              ; preds = %244
  %251 = getelementptr inbounds %struct.cache_head, ptr %246, i32 0, i32 1
  %252 = load i64, ptr %251, align 8
  %253 = getelementptr inbounds %struct.cache_detail, ptr %197, i32 0, i32 18
  %254 = load i64, ptr %253, align 8
  %255 = icmp slt i64 %252, %254
  br i1 %255, label %256, label %257

256:                                              ; preds = %250
  store i64 %252, ptr %253, align 8
  br label %257

257:                                              ; preds = %256, %250, %244
  %258 = getelementptr inbounds %struct.cache_detail, ptr %197, i32 0, i32 5
  %259 = load ptr, ptr %258, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !12
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %247) #21, !srcloc !10
  %260 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %247, ptr %247, i32 1, ptr elementtype(i32) %247) #21, !srcloc !13
  %261 = extractvalue { i32, i32, i32 } %260, 0
  %262 = icmp eq i32 %261, 1
  br i1 %262, label %266, label %263

263:                                              ; preds = %257
  %264 = icmp sgt i32 %261, 0
  br i1 %264, label %268, label %265, !prof !14

265:                                              ; preds = %263
  call void @refcount_warn_saturate(ptr noundef %247, i32 noundef 3) #21
  br label %268

266:                                              ; preds = %257
  call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !15
  call void %259(ptr noundef %247) #21
  br label %268

267:                                              ; preds = %233, %230
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %3) #21
  br label %351

268:                                              ; preds = %266, %265, %263
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %3) #21
  %269 = icmp eq i32 %245, 0
  br i1 %269, label %270, label %351

270:                                              ; preds = %268
  %271 = getelementptr inbounds %struct.xdr_netobj, ptr %6, i32 0, i32 1
  store ptr %8, ptr %271, align 4
  store i32 8, ptr %6, align 8
  br label %272

272:                                              ; preds = %270, %188
  %273 = phi ptr [ %8, %270 ], [ %194, %188 ]
  %274 = phi i32 [ 8, %270 ], [ %191, %188 ]
  %275 = getelementptr inbounds %struct.sunrpc_net, ptr %21, i32 0, i32 3
  %276 = load ptr, ptr %275, align 4
  %277 = call fastcc i32 @gss_write_init_verf(ptr noundef %276, ptr noundef %0, ptr noundef nonnull %6, ptr noundef %166)
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %279, label %351

279:                                              ; preds = %272
  %280 = getelementptr inbounds %struct.gssp_upcall_data, ptr %7, i32 0, i32 3
  %281 = load i32, ptr %166, align 4
  %282 = load i32, ptr %168, align 4
  %283 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 19, i32 0, i32 0, i32 1
  %284 = load i32, ptr %283, align 4
  %285 = add i32 %284, -4093
  %286 = icmp ult i32 %285, -4097
  br i1 %286, label %351, label %287

287:                                              ; preds = %279
  %288 = load ptr, ptr %9, align 4
  %289 = getelementptr i8, ptr %288, i32 %284
  store i32 0, ptr %289, align 4
  %290 = load i32, ptr %283, align 4
  %291 = add i32 %290, 4
  store i32 %291, ptr %283, align 4
  %292 = add i32 %290, -4089
  %293 = icmp ult i32 %292, -4097
  br i1 %293, label %351, label %294

294:                                              ; preds = %287
  %295 = load ptr, ptr %9, align 4
  %296 = getelementptr i8, ptr %295, i32 %291
  %297 = call i32 @llvm.bswap.i32(i32 %274) #21
  store i32 %297, ptr %296, align 4
  %298 = load i32, ptr %283, align 4
  %299 = add i32 %298, 4
  %300 = load ptr, ptr %9, align 4
  %301 = add i32 %274, 3
  %302 = and i32 %301, -4
  %303 = add i32 %299, %302
  store i32 %303, ptr %283, align 4
  %304 = icmp ugt i32 %303, 4096
  br i1 %304, label %351, label %305

305:                                              ; preds = %294
  %306 = getelementptr i8, ptr %300, i32 %299
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %306, ptr align 1 %273, i32 %274, i1 false) #21
  %307 = getelementptr i8, ptr %306, i32 %274
  %308 = sub i32 %302, %274
  call void @llvm.memset.p0.i32(ptr align 1 %307, i8 0, i32 %308, i1 false) #21
  %309 = load i32, ptr %283, align 4
  %310 = add i32 %309, -4085
  %311 = icmp ult i32 %310, -4097
  br i1 %311, label %351, label %312

312:                                              ; preds = %305
  %313 = load ptr, ptr %9, align 4
  %314 = getelementptr i8, ptr %313, i32 %309
  %315 = call i32 @llvm.bswap.i32(i32 %281) #21
  store i32 %315, ptr %314, align 4
  %316 = load i32, ptr %283, align 4
  %317 = add i32 %316, 4
  store i32 %317, ptr %283, align 4
  %318 = load ptr, ptr %9, align 4
  %319 = getelementptr i8, ptr %318, i32 %317
  %320 = call i32 @llvm.bswap.i32(i32 %282) #21
  store i32 %320, ptr %319, align 4
  %321 = load i32, ptr %283, align 4
  %322 = add i32 %321, 4
  store i32 %322, ptr %283, align 4
  %323 = load ptr, ptr %9, align 4
  %324 = getelementptr i8, ptr %323, i32 %322
  store i32 -2147483648, ptr %324, align 4
  %325 = load i32, ptr %283, align 4
  %326 = add i32 %325, 4
  store i32 %326, ptr %283, align 4
  %327 = add i32 %325, -4089
  %328 = icmp ult i32 %327, -4097
  br i1 %328, label %351, label %329

329:                                              ; preds = %312
  %330 = load i32, ptr %280, align 4
  %331 = load ptr, ptr %9, align 4
  %332 = getelementptr i8, ptr %331, i32 %326
  %333 = call i32 @llvm.bswap.i32(i32 %330) #21
  store i32 %333, ptr %332, align 4
  %334 = load i32, ptr %283, align 4
  %335 = add i32 %334, 4
  %336 = load ptr, ptr %9, align 4
  %337 = load i32, ptr %280, align 4
  %338 = add i32 %337, 3
  %339 = and i32 %338, -4
  %340 = add i32 %339, %335
  store i32 %340, ptr %283, align 4
  %341 = icmp ugt i32 %340, 4096
  br i1 %341, label %351, label %342

342:                                              ; preds = %329
  %343 = getelementptr i8, ptr %336, i32 %335
  %344 = getelementptr inbounds %struct.gssp_upcall_data, ptr %7, i32 0, i32 3, i32 1
  %345 = load ptr, ptr %344, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %343, ptr align 1 %345, i32 %337, i1 false) #21
  %346 = load i32, ptr %280, align 4
  %347 = getelementptr i8, ptr %343, i32 %346
  %348 = add i32 %346, 3
  %349 = and i32 %348, -4
  %350 = sub i32 %349, %346
  call void @llvm.memset.p0.i32(ptr align 1 %347, i8 0, i32 %350, i1 false) #21
  br label %351

351:                                              ; preds = %342, %329, %312, %305, %294, %287, %279, %272, %268, %267, %186, %162
  %352 = phi i32 [ 7, %162 ], [ 7, %186 ], [ 7, %268 ], [ 7, %272 ], [ 7, %267 ], [ 10, %342 ], [ 7, %279 ], [ 7, %305 ], [ 7, %287 ], [ 7, %294 ], [ 7, %312 ], [ 7, %329 ]
  %353 = getelementptr inbounds %struct.gssp_upcall_data, ptr %7, i32 0, i32 1, i32 2
  %354 = load i32, ptr %353, align 4
  %355 = icmp eq i32 %354, 0
  br i1 %355, label %381, label %356

356:                                              ; preds = %378, %351
  %357 = phi i32 [ %379, %378 ], [ %354, %351 ]
  %358 = load ptr, ptr %22, align 4
  %359 = load ptr, ptr %358, align 4
  %360 = icmp eq ptr %359, null
  br i1 %360, label %378, label %361

361:                                              ; preds = %356
  %362 = getelementptr inbounds %struct.page, ptr %359, i32 0, i32 1
  %363 = load volatile i32, ptr %362, align 4
  %364 = and i32 %363, 1
  %365 = icmp eq i32 %364, 0
  br i1 %365, label %368, label %366, !prof !14

366:                                              ; preds = %361
  %367 = add i32 %363, -1
  br label %370

368:                                              ; preds = %361
  %369 = ptrtoint ptr %359 to i32
  br label %370

370:                                              ; preds = %368, %366
  %371 = phi i32 [ %367, %366 ], [ %369, %368 ]
  %372 = inttoptr i32 %371 to ptr
  %373 = getelementptr inbounds %struct.page, ptr %372, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !17
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %373) #21, !srcloc !10
  %374 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %373, ptr %373, i32 1, ptr elementtype(i32) %373) #21, !srcloc !18
  %375 = extractvalue { i32, i32 } %374, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !19
  %376 = icmp eq i32 %375, 0
  br i1 %376, label %377, label %378

377:                                              ; preds = %370
  call void @__put_page(ptr noundef %372) #21
  br label %378

378:                                              ; preds = %377, %370, %356
  %379 = call i32 @llvm.usub.sat.i32(i32 %357, i32 4096) #21
  %380 = icmp ult i32 %357, 4097
  br i1 %380, label %381, label %356

381:                                              ; preds = %378, %351
  %382 = load ptr, ptr %22, align 4
  call void @kfree(ptr noundef %382) #21
  store ptr null, ptr %22, align 4
  call void @gssp_free_upcall_data(ptr noundef nonnull %7) #21
  br label %383

383:                                              ; preds = %381, %123, %72, %61, %54, %45, %34, %28, %2
  %384 = phi i32 [ %352, %381 ], [ 8, %2 ], [ 8, %28 ], [ 8, %34 ], [ 8, %45 ], [ 7, %54 ], [ 8, %72 ], [ 8, %61 ], [ 8, %123 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(i64 116, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  ret i32 %384
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @svcauth_gss_legacy_init(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #2 {
  %3 = alloca %struct.rsi, align 8
  %4 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 15
  %5 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 19
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #21
  %6 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  %9 = getelementptr inbounds %struct.svc_xprt, ptr %7, i32 0, i32 19
  %10 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 48
  %11 = select i1 %8, ptr %10, ptr %9
  %12 = load ptr, ptr %11, align 4
  %13 = load i32, ptr @sunrpc_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !8
  %14 = getelementptr inbounds %struct.net, ptr %12, i32 0, i32 37
  %15 = load volatile ptr, ptr %14, align 64
  %16 = getelementptr [0 x ptr], ptr %15, i32 0, i32 %13
  %17 = load ptr, ptr %16, align 4
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(80) %3, i8 0, i32 80, i1 false)
  %18 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 38
  %19 = getelementptr inbounds %struct.rsi, ptr %3, i32 0, i32 1
  %20 = getelementptr inbounds %struct.rsi, ptr %3, i32 0, i32 2
  store i32 50331648, ptr %18, align 4
  %21 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 15, i32 0, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = icmp ult i32 %22, 8
  br i1 %23, label %216, label %24

24:                                               ; preds = %2
  %25 = load ptr, ptr %4, align 4
  %26 = getelementptr i32, ptr %25, i32 1
  %27 = load i32, ptr %25, align 4
  store ptr %26, ptr %4, align 4
  %28 = add i32 %22, -4
  store i32 %28, ptr %21, align 4
  %29 = icmp eq i32 %27, 0
  br i1 %29, label %30, label %216

30:                                               ; preds = %24
  %31 = getelementptr i32, ptr %25, i32 2
  %32 = load i32, ptr %26, align 4
  store ptr %31, ptr %4, align 4
  %33 = add i32 %22, -8
  store i32 %33, ptr %21, align 4
  %34 = icmp eq i32 %32, 0
  br i1 %34, label %35, label %216

35:                                               ; preds = %30
  store i32 16777216, ptr %18, align 4
  %36 = getelementptr inbounds %struct.rpc_gss_wire_cred, ptr %1, i32 0, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 1
  %39 = getelementptr inbounds %struct.rpc_gss_wire_cred, ptr %1, i32 0, i32 4
  %40 = load i32, ptr %39, align 4
  br i1 %38, label %41, label %43

41:                                               ; preds = %35
  %42 = icmp eq i32 %40, 0
  br i1 %42, label %47, label %216

43:                                               ; preds = %35
  %44 = getelementptr inbounds %struct.rpc_gss_wire_cred, ptr %1, i32 0, i32 4, i32 1
  %45 = load ptr, ptr %44, align 4
  store i32 %40, ptr %19, align 8
  %46 = icmp eq i32 %40, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %43, %41
  %48 = getelementptr inbounds %struct.rsi, ptr %3, i32 0, i32 1, i32 1
  store ptr null, ptr %48, align 4
  br label %55

49:                                               ; preds = %43
  %50 = tail call ptr @kmemdup(ptr noundef %45, i32 noundef %40, i32 noundef 3264) #21
  %51 = getelementptr inbounds %struct.rsi, ptr %3, i32 0, i32 1, i32 1
  store ptr %50, ptr %51, align 4
  %52 = icmp eq ptr %50, null
  br i1 %52, label %216, label %53

53:                                               ; preds = %49
  %54 = load i32, ptr %21, align 4
  br label %55

55:                                               ; preds = %53, %47
  %56 = phi i32 [ %40, %53 ], [ 0, %47 ]
  %57 = phi ptr [ %50, %53 ], [ null, %47 ]
  %58 = phi i32 [ %54, %53 ], [ %33, %47 ]
  store i32 50331648, ptr %18, align 4
  %59 = icmp ult i32 %58, 4
  br i1 %59, label %69, label %60

60:                                               ; preds = %55
  %61 = load ptr, ptr %4, align 4
  %62 = getelementptr i32, ptr %61, i32 1
  %63 = load i32, ptr %61, align 4
  store ptr %62, ptr %4, align 4
  %64 = add i32 %58, -4
  store i32 %64, ptr %21, align 4
  %65 = tail call i32 @llvm.bswap.i32(i32 %63) #21
  %66 = add i32 %65, 3
  %67 = and i32 %66, -4
  %68 = icmp ult i32 %64, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %60, %55
  tail call void @kfree(ptr noundef %57) #21
  br label %216

70:                                               ; preds = %60
  %71 = getelementptr i8, ptr %62, i32 %67
  store ptr %71, ptr %4, align 4
  %72 = sub i32 %64, %67
  store i32 %72, ptr %21, align 4
  store i32 %65, ptr %20, align 8
  %73 = icmp eq i32 %63, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.rsi, ptr %3, i32 0, i32 2, i32 1
  store ptr null, ptr %75, align 4
  br label %81

76:                                               ; preds = %70
  %77 = tail call ptr @kmemdup(ptr noundef %62, i32 noundef %65, i32 noundef 3264) #21
  %78 = getelementptr inbounds %struct.rsi, ptr %3, i32 0, i32 2, i32 1
  store ptr %77, ptr %78, align 4
  %79 = icmp eq ptr %77, null
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  tail call void @kfree(ptr noundef %57) #21
  br label %216

81:                                               ; preds = %76, %74
  %82 = phi ptr [ %77, %76 ], [ null, %74 ]
  %83 = getelementptr inbounds %struct.sunrpc_net, ptr %17, i32 0, i32 4
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr inbounds %struct.rsi, ptr %3, i32 0, i32 1, i32 1
  %86 = tail call i32 @full_name_hash(ptr noundef null, ptr noundef %57, i32 noundef %56) #24
  %87 = getelementptr inbounds %struct.rsi, ptr %3, i32 0, i32 2, i32 1
  %88 = tail call i32 @full_name_hash(ptr noundef null, ptr noundef %82, i32 noundef %65) #24
  %89 = xor i32 %88, %86
  %90 = lshr i32 %89, 26
  %91 = call ptr @sunrpc_cache_lookup_rcu(ptr noundef %84, ptr noundef nonnull %3, i32 noundef %90) #21
  %92 = load ptr, ptr %85, align 4
  call void @kfree(ptr noundef %92) #21
  %93 = load ptr, ptr %87, align 4
  call void @kfree(ptr noundef %93) #21
  %94 = getelementptr inbounds %struct.rsi, ptr %3, i32 0, i32 3, i32 1
  %95 = load ptr, ptr %94, align 4
  call void @kfree(ptr noundef %95) #21
  %96 = getelementptr inbounds %struct.rsi, ptr %3, i32 0, i32 4, i32 1
  %97 = load ptr, ptr %96, align 4
  call void @kfree(ptr noundef %97) #21
  %98 = icmp eq ptr %91, null
  br i1 %98, label %216, label %99

99:                                               ; preds = %81
  %100 = load ptr, ptr %83, align 4
  %101 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 42
  %102 = call i32 @cache_check(ptr noundef %100, ptr noundef nonnull %91, ptr noundef %101) #21
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %216, label %104

104:                                              ; preds = %99
  %105 = getelementptr inbounds %struct.sunrpc_net, ptr %17, i32 0, i32 3
  %106 = load ptr, ptr %105, align 4
  %107 = getelementptr inbounds %struct.rsi, ptr %91, i32 0, i32 3
  %108 = getelementptr inbounds %struct.rsi, ptr %91, i32 0, i32 5
  %109 = call fastcc i32 @gss_write_init_verf(ptr noundef %106, ptr noundef %0, ptr noundef %107, ptr noundef %108)
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %193

111:                                              ; preds = %104
  %112 = getelementptr inbounds %struct.rsi, ptr %91, i32 0, i32 4
  %113 = load i32, ptr %108, align 8
  %114 = getelementptr inbounds %struct.rsi, ptr %91, i32 0, i32 6
  %115 = load i32, ptr %114, align 4
  %116 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 19, i32 0, i32 0, i32 1
  %117 = load i32, ptr %116, align 4
  %118 = add i32 %117, -4093
  %119 = icmp ult i32 %118, -4097
  br i1 %119, label %193, label %120

120:                                              ; preds = %111
  %121 = load ptr, ptr %5, align 4
  %122 = getelementptr i8, ptr %121, i32 %117
  store i32 0, ptr %122, align 4
  %123 = load i32, ptr %116, align 4
  %124 = add i32 %123, 4
  store i32 %124, ptr %116, align 4
  %125 = add i32 %123, -4089
  %126 = icmp ult i32 %125, -4097
  br i1 %126, label %193, label %127

127:                                              ; preds = %120
  %128 = load i32, ptr %107, align 4
  %129 = load ptr, ptr %5, align 4
  %130 = getelementptr i8, ptr %129, i32 %124
  %131 = call i32 @llvm.bswap.i32(i32 %128) #21
  store i32 %131, ptr %130, align 4
  %132 = load i32, ptr %116, align 4
  %133 = add i32 %132, 4
  store i32 %133, ptr %116, align 4
  %134 = load ptr, ptr %5, align 4
  %135 = load i32, ptr %107, align 4
  %136 = add i32 %135, 3
  %137 = and i32 %136, -4
  %138 = add i32 %137, %133
  store i32 %138, ptr %116, align 4
  %139 = icmp ugt i32 %138, 4096
  br i1 %139, label %193, label %140

140:                                              ; preds = %127
  %141 = getelementptr i8, ptr %134, i32 %133
  %142 = getelementptr inbounds %struct.rsi, ptr %91, i32 0, i32 3, i32 1
  %143 = load ptr, ptr %142, align 4
  %144 = load i32, ptr %107, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %141, ptr align 1 %143, i32 %144, i1 false) #21
  %145 = load i32, ptr %107, align 4
  %146 = getelementptr i8, ptr %141, i32 %145
  %147 = add i32 %145, 3
  %148 = and i32 %147, -4
  %149 = sub i32 %148, %145
  call void @llvm.memset.p0.i32(ptr align 1 %146, i8 0, i32 %149, i1 false) #21
  %150 = load i32, ptr %116, align 4
  %151 = add i32 %150, -4085
  %152 = icmp ult i32 %151, -4097
  br i1 %152, label %193, label %153

153:                                              ; preds = %140
  %154 = load ptr, ptr %5, align 4
  %155 = getelementptr i8, ptr %154, i32 %150
  %156 = call i32 @llvm.bswap.i32(i32 %113) #21
  store i32 %156, ptr %155, align 4
  %157 = load i32, ptr %116, align 4
  %158 = add i32 %157, 4
  store i32 %158, ptr %116, align 4
  %159 = load ptr, ptr %5, align 4
  %160 = getelementptr i8, ptr %159, i32 %158
  %161 = call i32 @llvm.bswap.i32(i32 %115) #21
  store i32 %161, ptr %160, align 4
  %162 = load i32, ptr %116, align 4
  %163 = add i32 %162, 4
  store i32 %163, ptr %116, align 4
  %164 = load ptr, ptr %5, align 4
  %165 = getelementptr i8, ptr %164, i32 %163
  store i32 -2147483648, ptr %165, align 4
  %166 = load i32, ptr %116, align 4
  %167 = add i32 %166, 4
  store i32 %167, ptr %116, align 4
  %168 = add i32 %166, -4089
  %169 = icmp ult i32 %168, -4097
  br i1 %169, label %193, label %170

170:                                              ; preds = %153
  %171 = load i32, ptr %112, align 4
  %172 = load ptr, ptr %5, align 4
  %173 = getelementptr i8, ptr %172, i32 %167
  %174 = call i32 @llvm.bswap.i32(i32 %171) #21
  store i32 %174, ptr %173, align 4
  %175 = load i32, ptr %116, align 4
  %176 = add i32 %175, 4
  store i32 %176, ptr %116, align 4
  %177 = load ptr, ptr %5, align 4
  %178 = load i32, ptr %112, align 4
  %179 = add i32 %178, 3
  %180 = and i32 %179, -4
  %181 = add i32 %180, %176
  store i32 %181, ptr %116, align 4
  %182 = icmp ugt i32 %181, 4096
  br i1 %182, label %193, label %183

183:                                              ; preds = %170
  %184 = getelementptr i8, ptr %177, i32 %176
  %185 = getelementptr inbounds %struct.rsi, ptr %91, i32 0, i32 4, i32 1
  %186 = load ptr, ptr %185, align 4
  %187 = load i32, ptr %112, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %184, ptr align 1 %186, i32 %187, i1 false) #21
  %188 = load i32, ptr %112, align 4
  %189 = getelementptr i8, ptr %184, i32 %188
  %190 = add i32 %188, 3
  %191 = and i32 %190, -4
  %192 = sub i32 %191, %188
  call void @llvm.memset.p0.i32(ptr align 1 %189, i8 0, i32 %192, i1 false) #21
  br label %193

193:                                              ; preds = %183, %170, %153, %140, %127, %120, %111, %104
  %194 = phi i32 [ 7, %104 ], [ 10, %183 ], [ 7, %111 ], [ 7, %140 ], [ 7, %120 ], [ 7, %127 ], [ 7, %153 ], [ 7, %170 ]
  %195 = load ptr, ptr %83, align 4
  %196 = getelementptr inbounds %struct.cache_head, ptr %91, i32 0, i32 3
  %197 = load volatile i32, ptr %196, align 4
  %198 = icmp ult i32 %197, 3
  br i1 %198, label %199, label %206

199:                                              ; preds = %193
  %200 = getelementptr inbounds %struct.cache_head, ptr %91, i32 0, i32 1
  %201 = load i64, ptr %200, align 8
  %202 = getelementptr inbounds %struct.cache_detail, ptr %195, i32 0, i32 18
  %203 = load i64, ptr %202, align 8
  %204 = icmp slt i64 %201, %203
  br i1 %204, label %205, label %206

205:                                              ; preds = %199
  store i64 %201, ptr %202, align 8
  br label %206

206:                                              ; preds = %205, %199, %193
  %207 = getelementptr inbounds %struct.cache_detail, ptr %195, i32 0, i32 5
  %208 = load ptr, ptr %207, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !12
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %196) #21, !srcloc !10
  %209 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %196, ptr %196, i32 1, ptr elementtype(i32) %196) #21, !srcloc !13
  %210 = extractvalue { i32, i32, i32 } %209, 0
  %211 = icmp eq i32 %210, 1
  br i1 %211, label %215, label %212

212:                                              ; preds = %206
  %213 = icmp sgt i32 %210, 0
  br i1 %213, label %216, label %214, !prof !14

214:                                              ; preds = %212
  call void @refcount_warn_saturate(ptr noundef %196, i32 noundef 3) #21
  br label %216

215:                                              ; preds = %206
  call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !15
  call void %208(ptr noundef %196) #21
  br label %216

216:                                              ; preds = %215, %214, %212, %99, %81, %80, %69, %49, %41, %30, %24, %2
  %217 = phi i32 [ 7, %81 ], [ 7, %99 ], [ %194, %212 ], [ %194, %214 ], [ %194, %215 ], [ 8, %2 ], [ 8, %24 ], [ 8, %30 ], [ 8, %41 ], [ 7, %49 ], [ 7, %80 ], [ 8, %69 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #21
  ret i32 %217
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @gss_svc_searchbyctx(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #2 {
  %3 = alloca %struct.rsc, align 8
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %3) #21
  %4 = getelementptr inbounds %struct.rsc, ptr %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.xdr_netobj, ptr %1, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %3, i8 0, i64 112, i1 false)
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr %1, align 4
  store i32 %7, ptr %4, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = tail call ptr @kmemdup(ptr noundef %6, i32 noundef %7, i32 noundef 3264) #21
  %11 = getelementptr inbounds %struct.rsc, ptr %3, i32 0, i32 1, i32 1
  store ptr %10, ptr %11, align 4
  %12 = icmp eq ptr %10, null
  br i1 %12, label %23, label %13

13:                                               ; preds = %9, %2
  %14 = phi ptr [ %10, %9 ], [ null, %2 ]
  %15 = tail call i32 @full_name_hash(ptr noundef null, ptr noundef %14, i32 noundef %7) #24
  %16 = lshr i32 %15, 22
  %17 = call ptr @sunrpc_cache_lookup_rcu(ptr noundef %0, ptr noundef nonnull %3, i32 noundef %16) #21
  call fastcc void @rsc_free(ptr noundef nonnull %3)
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %13
  %20 = call i32 @cache_check(ptr noundef %0, ptr noundef nonnull %17, ptr noundef null) #21
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %21, ptr %17, ptr null
  br label %23

23:                                               ; preds = %19, %13, %9
  %24 = phi ptr [ null, %9 ], [ null, %13 ], [ %22, %19 ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %3) #21
  ret ptr %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @gss_verify_header(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #2 {
  %5 = alloca %struct.xdr_buf, align 4
  %6 = alloca %struct.xdr_netobj, align 8
  %7 = alloca %struct.kvec, align 8
  %8 = getelementptr inbounds %struct.rsc, ptr %1, i32 0, i32 4
  %9 = load ptr, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %5) #21
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %5, i8 0, i32 44, i1 false), !annotation !16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  %10 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #21
  store ptr %2, ptr %7, align 8
  %11 = load ptr, ptr %10, align 4
  %12 = ptrtoint ptr %11 to i32
  %13 = ptrtoint ptr %2 to i32
  %14 = sub i32 %12, %13
  %15 = getelementptr inbounds %struct.kvec, ptr %7, i32 0, i32 1
  store i32 %14, ptr %15, align 4
  call void @xdr_buf_from_iov(ptr noundef nonnull %7, ptr noundef nonnull %5) #21
  %16 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 38
  store i32 50331648, ptr %16, align 4
  %17 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 15, i32 0, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = icmp ult i32 %18, 4
  br i1 %19, label %55, label %20

20:                                               ; preds = %4
  %21 = load ptr, ptr %10, align 4
  %22 = getelementptr i32, ptr %21, i32 1
  %23 = load i32, ptr %21, align 4
  store ptr %22, ptr %10, align 4
  %24 = add i32 %18, -4
  store i32 %24, ptr %17, align 4
  %25 = icmp ne i32 %23, 100663296
  %26 = icmp ult i32 %24, 4
  %27 = select i1 %25, i1 true, i1 %26
  br i1 %27, label %55, label %28

28:                                               ; preds = %20
  %29 = getelementptr i32, ptr %21, i32 2
  %30 = load i32, ptr %22, align 4
  store ptr %29, ptr %10, align 4
  %31 = add i32 %18, -8
  store i32 %31, ptr %17, align 4
  %32 = call i32 @llvm.bswap.i32(i32 %30) #21
  store i32 %32, ptr %6, align 8
  %33 = add i32 %32, 3
  %34 = and i32 %33, -4
  %35 = icmp ult i32 %31, %34
  br i1 %35, label %55, label %36

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.xdr_netobj, ptr %6, i32 0, i32 1
  store ptr %29, ptr %37, align 4
  %38 = getelementptr i8, ptr %29, i32 %34
  store ptr %38, ptr %10, align 4
  %39 = sub i32 %31, %34
  store i32 %39, ptr %17, align 4
  %40 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 13
  %41 = load ptr, ptr %40, align 8
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %55

43:                                               ; preds = %36
  %44 = call i32 @gss_verify_mic(ptr noundef %9, ptr noundef nonnull %5, ptr noundef nonnull %6) #21
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %43
  store i32 218103808, ptr %16, align 4
  br label %55

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.rpc_gss_wire_cred, ptr %3, i32 0, i32 2
  %49 = load i32, ptr %48, align 4
  %50 = icmp ugt i32 %49, -2147483648
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  call fastcc void @trace_rpcgss_svc_seqno_large(ptr noundef %0, i32 noundef %49)
  store i32 234881024, ptr %16, align 4
  br label %55

52:                                               ; preds = %47
  %53 = call fastcc zeroext i1 @gss_check_seq_num(ptr noundef %0, ptr noundef %1, i32 noundef %49)
  %54 = select i1 %53, i32 5, i32 6
  br label %55

55:                                               ; preds = %52, %51, %46, %36, %28, %20, %4
  %56 = phi i32 [ 8, %46 ], [ 8, %51 ], [ 8, %4 ], [ 8, %20 ], [ 5, %36 ], [ %54, %52 ], [ 8, %28 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %5) #21
  ret i32 %56
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @gss_write_verf(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = alloca %struct.xdr_buf, align 4
  %5 = alloca %struct.xdr_netobj, align 8
  %6 = alloca %struct.kvec, align 8
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %4) #21
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %4, i8 0, i32 44, i1 false), !annotation !16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #21
  store i64 0, ptr %5, align 8, !annotation !16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  %7 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 19
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 19, i32 0, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr i8, ptr %8, i32 %10
  store i32 100663296, ptr %11, align 4
  %12 = load i32, ptr %9, align 4
  %13 = add i32 %12, 4
  store i32 %13, ptr %9, align 4
  %14 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %15 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3264, i32 noundef 4) #20
  %16 = icmp eq ptr %15, null
  br i1 %16, label %47, label %17

17:                                               ; preds = %3
  %18 = tail call i32 @llvm.bswap.i32(i32 %2)
  store i32 %18, ptr %15, align 8
  store ptr %15, ptr %6, align 8
  %19 = getelementptr inbounds %struct.kvec, ptr %6, i32 0, i32 1
  store i32 4, ptr %19, align 4
  call void @xdr_buf_from_iov(ptr noundef nonnull %6, ptr noundef nonnull %4) #21
  %20 = load ptr, ptr %7, align 8
  %21 = load i32, ptr %9, align 4
  %22 = getelementptr i8, ptr %20, i32 %21
  %23 = getelementptr i32, ptr %22, i32 1
  %24 = getelementptr inbounds %struct.xdr_netobj, ptr %5, i32 0, i32 1
  store ptr %23, ptr %24, align 4
  %25 = call i32 @gss_get_mic(ptr noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5) #21
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %45

27:                                               ; preds = %17
  %28 = load i32, ptr %5, align 8
  %29 = call i32 @llvm.bswap.i32(i32 %28)
  store i32 %29, ptr %22, align 4
  %30 = load i32, ptr %5, align 8
  %31 = getelementptr i8, ptr %23, i32 %30
  %32 = add i32 %30, 3
  %33 = and i32 %32, -4
  %34 = sub i32 %33, %30
  call void @llvm.memset.p0.i32(ptr align 1 %31, i8 0, i32 %34, i1 false)
  %35 = load i32, ptr %5, align 8
  %36 = add i32 %35, 3
  %37 = lshr i32 %36, 2
  %38 = getelementptr i32, ptr %23, i32 %37
  %39 = load ptr, ptr %7, align 4
  %40 = ptrtoint ptr %38 to i32
  %41 = ptrtoint ptr %39 to i32
  %42 = sub i32 %40, %41
  store i32 %42, ptr %9, align 4
  %43 = icmp ugt i32 %42, 4096
  %44 = sext i1 %43 to i32
  br label %45

45:                                               ; preds = %27, %17
  %46 = phi i32 [ -1, %17 ], [ %44, %27 ]
  call void @kfree(ptr noundef nonnull %15) #21
  br label %47

47:                                               ; preds = %45, %3
  %48 = phi i32 [ %46, %45 ], [ -12, %3 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %4) #21
  ret i32 %48
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sunrpc_cache_unhash(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @unwrap_integ_data(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #2 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.xdr_netobj, align 8
  %7 = alloca %struct.xdr_buf, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  store i64 0, ptr %6, align 8, !annotation !16
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %7) #21
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %7, i8 0, i32 44, i1 false), !annotation !16
  %8 = getelementptr inbounds %struct.xdr_netobj, ptr %6, i32 0, i32 1
  store ptr null, ptr %8, align 4
  %9 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 33
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %9) #21
  %10 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 13
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %81

13:                                               ; preds = %4
  %14 = load ptr, ptr %1, align 4
  %15 = getelementptr i32, ptr %14, i32 1
  %16 = load i32, ptr %14, align 4
  store ptr %15, ptr %1, align 4
  %17 = getelementptr inbounds %struct.kvec, ptr %1, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, -4
  store i32 %19, ptr %17, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %16) #21
  %21 = and i32 %20, 3
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %63

23:                                               ; preds = %13
  %24 = getelementptr inbounds %struct.xdr_buf, ptr %1, i32 0, i32 8
  %25 = load i32, ptr %24, align 4
  %26 = icmp ugt i32 %20, %25
  br i1 %26, label %63, label %27

27:                                               ; preds = %23
  %28 = call i32 @xdr_buf_subsegment(ptr noundef %1, ptr noundef nonnull %7, i32 noundef 0, i32 noundef %20) #21
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %63

30:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #21
  store i32 0, ptr %5, align 4, !annotation !16
  %31 = call i32 @read_bytes_from_xdr_buf(ptr noundef %1, i32 noundef %20, ptr noundef nonnull %5, i32 noundef 4) #21
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #21
  br label %63

34:                                               ; preds = %30
  %35 = load i32, ptr %5, align 4
  %36 = call i32 @llvm.bswap.i32(i32 %35) #21
  store i32 %36, ptr %6, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #21
  %37 = icmp ugt i32 %36, 400
  br i1 %37, label %63, label %38

38:                                               ; preds = %34
  %39 = call noalias align 64 ptr @__kmalloc(i32 noundef %36, i32 noundef 3264) #23
  store ptr %39, ptr %8, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %63, label %41

41:                                               ; preds = %38
  %42 = add i32 %20, 4
  %43 = call i32 @read_bytes_from_xdr_buf(ptr noundef %1, i32 noundef %42, ptr noundef nonnull %39, i32 noundef %36) #21
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %63

45:                                               ; preds = %41
  %46 = call i32 @gss_verify_mic(ptr noundef %3, ptr noundef nonnull %7, ptr noundef nonnull %6) #21
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %80

48:                                               ; preds = %45
  %49 = load ptr, ptr %1, align 4
  %50 = getelementptr i32, ptr %49, i32 1
  %51 = load i32, ptr %49, align 4
  store ptr %50, ptr %1, align 4
  %52 = load i32, ptr %17, align 4
  %53 = add i32 %52, -4
  store i32 %53, ptr %17, align 4
  %54 = call i32 @llvm.bswap.i32(i32 %51) #21
  %55 = icmp eq i32 %54, %2
  br i1 %55, label %56, label %79

56:                                               ; preds = %48
  %57 = load i32, ptr %6, align 8
  %58 = add i32 %57, 7
  %59 = and i32 %58, -4
  call void @xdr_buf_trim(ptr noundef %1, i32 noundef %59) #21
  br label %60

60:                                               ; preds = %80, %79, %77, %66, %63, %56
  %61 = phi i32 [ -22, %80 ], [ -22, %79 ], [ 0, %56 ], [ -22, %63 ], [ -22, %66 ], [ -22, %77 ]
  %62 = load ptr, ptr %8, align 4
  call void @kfree(ptr noundef %62) #21
  br label %81

63:                                               ; preds = %41, %38, %34, %33, %27, %23, %13
  %64 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_svc_unwrap_failed, i32 0, i32 1), align 4
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %60

66:                                               ; preds = %63
  %67 = tail call ptr @llvm.thread.pointer() #21
  %68 = getelementptr inbounds %struct.thread_info, ptr %67, i32 0, i32 2
  %69 = load i32, ptr %68, align 8
  %70 = lshr i32 %69, 5
  %71 = getelementptr i32, ptr @__cpu_online_mask, i32 %70
  %72 = load volatile i32, ptr %71, align 4
  %73 = and i32 %69, 31
  %74 = shl nuw i32 1, %73
  %75 = and i32 %74, %72
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %60, label %77

77:                                               ; preds = %66
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !28
  %78 = call i32 @__traceiter_rpcgss_svc_unwrap_failed(ptr noundef null, ptr noundef %0) #21
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !29
  br label %60

79:                                               ; preds = %48
  call fastcc void @trace_rpcgss_svc_seqno_bad(ptr noundef %0, i32 noundef %2, i32 noundef %54)
  br label %60

80:                                               ; preds = %45
  call fastcc void @trace_rpcgss_svc_mic(ptr noundef %0, i32 noundef %46)
  br label %60

81:                                               ; preds = %60, %4
  %82 = phi i32 [ %61, %60 ], [ 0, %4 ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  ret i32 %82
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @unwrap_priv_data(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #2 {
  %5 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 33
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %5) #21
  %6 = load ptr, ptr %1, align 4
  %7 = getelementptr i32, ptr %6, i32 1
  %8 = load i32, ptr %6, align 4
  store ptr %7, ptr %1, align 4
  %9 = getelementptr inbounds %struct.kvec, ptr %1, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, -4
  store i32 %11, ptr %9, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %8) #21
  %13 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 13
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %53

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.xdr_buf, ptr %1, i32 0, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, %11
  %20 = getelementptr inbounds %struct.xdr_buf, ptr %1, i32 0, i32 1, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %19, %21
  %23 = icmp ult i32 %22, %12
  br i1 %23, label %61, label %24

24:                                               ; preds = %16
  %25 = sub i32 %22, %12
  %26 = getelementptr inbounds %struct.xdr_buf, ptr %1, i32 0, i32 8
  %27 = load i32, ptr %26, align 4
  %28 = sub i32 %27, %25
  store i32 %28, ptr %26, align 4
  %29 = icmp eq i32 %18, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = sub i32 %11, %25
  store i32 %31, ptr %9, align 4
  br label %32

32:                                               ; preds = %30, %24
  %33 = tail call i32 @gss_unwrap(ptr noundef %3, i32 noundef 0, i32 noundef %12, ptr noundef %1) #21
  %34 = load i32, ptr %9, align 4
  %35 = add i32 %34, 3
  %36 = and i32 %35, -4
  %37 = icmp eq i32 %36, %34
  br i1 %37, label %48, label %38

38:                                               ; preds = %32
  %39 = sub i32 %36, %34
  %40 = load i32, ptr %26, align 4
  %41 = getelementptr inbounds %struct.xdr_buf, ptr %1, i32 0, i32 7
  store i32 1048576, ptr %41, align 4
  tail call void @xdr_shift_buf(ptr noundef %1, i32 noundef %39) #21
  %42 = load i32, ptr %17, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = sub i32 %40, %12
  %46 = load i32, ptr %9, align 4
  %47 = add i32 %45, %46
  store i32 %47, ptr %9, align 4
  br label %48

48:                                               ; preds = %44, %38, %32
  %49 = icmp eq i32 %33, 0
  br i1 %49, label %50, label %93

50:                                               ; preds = %48
  %51 = load ptr, ptr %1, align 4
  %52 = load i32, ptr %9, align 4
  br label %53

53:                                               ; preds = %50, %4
  %54 = phi i32 [ %52, %50 ], [ %11, %4 ]
  %55 = phi ptr [ %51, %50 ], [ %7, %4 ]
  %56 = getelementptr i32, ptr %55, i32 1
  %57 = load i32, ptr %55, align 4
  store ptr %56, ptr %1, align 4
  %58 = add i32 %54, -4
  store i32 %58, ptr %9, align 4
  %59 = tail call i32 @llvm.bswap.i32(i32 %57) #21
  %60 = icmp eq i32 %59, %2
  br i1 %60, label %109, label %77

61:                                               ; preds = %16
  %62 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_svc_unwrap_failed, i32 0, i32 1), align 4
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %109

64:                                               ; preds = %61
  %65 = tail call ptr @llvm.thread.pointer() #21
  %66 = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 2
  %67 = load i32, ptr %66, align 8
  %68 = lshr i32 %67, 5
  %69 = getelementptr i32, ptr @__cpu_online_mask, i32 %68
  %70 = load volatile i32, ptr %69, align 4
  %71 = and i32 %67, 31
  %72 = shl nuw i32 1, %71
  %73 = and i32 %72, %70
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %109, label %75

75:                                               ; preds = %64
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !28
  %76 = tail call i32 @__traceiter_rpcgss_svc_unwrap_failed(ptr noundef null, ptr noundef %0) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !29
  br label %109

77:                                               ; preds = %53
  %78 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_svc_seqno_bad, i32 0, i32 1), align 4
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %109

80:                                               ; preds = %77
  %81 = tail call ptr @llvm.thread.pointer() #21
  %82 = getelementptr inbounds %struct.thread_info, ptr %81, i32 0, i32 2
  %83 = load i32, ptr %82, align 8
  %84 = lshr i32 %83, 5
  %85 = getelementptr i32, ptr @__cpu_online_mask, i32 %84
  %86 = load volatile i32, ptr %85, align 4
  %87 = and i32 %83, 31
  %88 = shl nuw i32 1, %87
  %89 = and i32 %88, %86
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %109, label %91

91:                                               ; preds = %80
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !30
  %92 = tail call i32 @__traceiter_rpcgss_svc_seqno_bad(ptr noundef null, ptr noundef %0, i32 noundef %2, i32 noundef %59) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !31
  br label %109

93:                                               ; preds = %48
  %94 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_svc_unwrap, i32 0, i32 1), align 4
  %95 = icmp sgt i32 %94, 0
  br i1 %95, label %96, label %109

96:                                               ; preds = %93
  %97 = tail call ptr @llvm.thread.pointer() #21
  %98 = getelementptr inbounds %struct.thread_info, ptr %97, i32 0, i32 2
  %99 = load i32, ptr %98, align 8
  %100 = lshr i32 %99, 5
  %101 = getelementptr i32, ptr @__cpu_online_mask, i32 %100
  %102 = load volatile i32, ptr %101, align 4
  %103 = and i32 %99, 31
  %104 = shl nuw i32 1, %103
  %105 = and i32 %104, %102
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %109, label %107

107:                                              ; preds = %96
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !32
  %108 = tail call i32 @__traceiter_rpcgss_svc_unwrap(ptr noundef null, ptr noundef %0, i32 noundef %33) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !33
  br label %109

109:                                              ; preds = %107, %96, %93, %91, %80, %77, %75, %64, %61, %53
  %110 = phi i32 [ 0, %53 ], [ -22, %61 ], [ -22, %64 ], [ -22, %75 ], [ -22, %77 ], [ -22, %80 ], [ -22, %91 ], [ -22, %93 ], [ -22, %96 ], [ -22, %107 ]
  ret i32 %110
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @cache_get(ptr noundef %0) unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.cache_head, ptr %0, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #21, !srcloc !10
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #21, !srcloc !34
  %4 = extractvalue { i32, i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6, !prof !35

6:                                                ; preds = %1
  %7 = add i32 %4, 1
  %8 = or i32 %7, %4
  %9 = icmp sgt i32 %8, -1
  br i1 %9, label %12, label %10, !prof !14

10:                                               ; preds = %6, %1
  %11 = phi i32 [ 2, %1 ], [ 1, %6 ]
  tail call void @refcount_warn_saturate(ptr noundef %2, i32 noundef %11) #21
  br label %12

12:                                               ; preds = %10, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gss_svc_to_pseudoflavor(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @trace_rpcgss_svc_authenticate(ptr noundef %0, ptr noundef %1) unnamed_addr #8 {
  %3 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_svc_authenticate, i32 0, i32 1), align 4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %18

5:                                                ; preds = %2
  %6 = tail call ptr @llvm.thread.pointer() #21
  %7 = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 8
  %9 = lshr i32 %8, 5
  %10 = getelementptr i32, ptr @__cpu_online_mask, i32 %9
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %8, 31
  %13 = shl nuw i32 1, %12
  %14 = and i32 %13, %11
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %5
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !36
  %17 = tail call i32 @__traceiter_rpcgss_svc_authenticate(ptr noundef null, ptr noundef %0, ptr noundef %1) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !37
  br label %18

18:                                               ; preds = %16, %5, %2
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @set_gss_proxy(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = load i32, ptr @sunrpc_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !8
  %4 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 37
  %5 = load volatile ptr, ptr %4, align 64
  %6 = getelementptr [0 x ptr], ptr %5, i32 0, i32 %3
  %7 = load ptr, ptr %6, align 4
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !9
  %8 = icmp ugt i32 %1, 1
  %9 = load i1, ptr @set_gss_proxy.__already_done, align 1
  %10 = xor i1 %9, true
  %11 = select i1 %8, i1 %10, i1 false
  br i1 %11, label %12, label %13, !prof !35

12:                                               ; preds = %2
  store i1 true, ptr @set_gss_proxy.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1414, i32 noundef 9, ptr noundef null) #21
  br label %13

13:                                               ; preds = %12, %2
  %14 = getelementptr inbounds %struct.sunrpc_net, ptr %7, i32 0, i32 17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %14) #21, !srcloc !10
  br label %15

15:                                               ; preds = %15, %13
  %16 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %14, i32 -1, i32 %1) #21, !srcloc !21
  %17 = extractvalue { i32, i32 } %16, 0
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %15

19:                                               ; preds = %15
  %20 = extractvalue { i32, i32 } %16, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !22
  %21 = icmp eq i32 %20, -1
  %22 = icmp eq i32 %20, %1
  %23 = or i1 %21, %22
  %24 = select i1 %23, i32 0, i32 -16
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gssp_accept_sec_context_upcall(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @gss_write_init_verf(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3) unnamed_addr #8 {
  %5 = load i32, ptr %3, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.svc_rqst, ptr %1, i32 0, i32 19
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.svc_rqst, ptr %1, i32 0, i32 19, i32 0, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr i8, ptr %9, i32 %11
  store i32 0, ptr %12, align 4
  %13 = load i32, ptr %10, align 4
  %14 = add i32 %13, 4
  %15 = load ptr, ptr %8, align 8
  %16 = getelementptr i8, ptr %15, i32 %14
  %17 = getelementptr i32, ptr %16, i32 1
  store i32 0, ptr %16, align 4
  %18 = load ptr, ptr %8, align 4
  %19 = ptrtoint ptr %17 to i32
  %20 = ptrtoint ptr %18 to i32
  %21 = sub i32 %19, %20
  store i32 %21, ptr %10, align 4
  %22 = icmp ugt i32 %21, 4096
  %23 = sext i1 %22 to i32
  br label %68

24:                                               ; preds = %4
  %25 = tail call fastcc ptr @gss_svc_searchbyctx(ptr noundef %0, ptr noundef %2)
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %44

27:                                               ; preds = %24
  store i32 524288, ptr %3, align 4
  %28 = getelementptr inbounds %struct.svc_rqst, ptr %1, i32 0, i32 19
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.svc_rqst, ptr %1, i32 0, i32 19, i32 0, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr i8, ptr %29, i32 %31
  store i32 0, ptr %32, align 4
  %33 = load i32, ptr %30, align 4
  %34 = add i32 %33, 4
  %35 = load ptr, ptr %28, align 8
  %36 = getelementptr i8, ptr %35, i32 %34
  %37 = getelementptr i32, ptr %36, i32 1
  store i32 0, ptr %36, align 4
  %38 = load ptr, ptr %28, align 4
  %39 = ptrtoint ptr %37 to i32
  %40 = ptrtoint ptr %38 to i32
  %41 = sub i32 %39, %40
  store i32 %41, ptr %30, align 4
  %42 = icmp ugt i32 %41, 4096
  %43 = sext i1 %42 to i32
  br label %68

44:                                               ; preds = %24
  %45 = getelementptr inbounds %struct.rsc, ptr %25, i32 0, i32 4
  %46 = load ptr, ptr %45, align 8
  %47 = tail call fastcc i32 @gss_write_verf(ptr noundef %1, ptr noundef %46, i32 noundef 128)
  %48 = getelementptr inbounds %struct.cache_head, ptr %25, i32 0, i32 3
  %49 = load volatile i32, ptr %48, align 4
  %50 = icmp ult i32 %49, 3
  br i1 %50, label %51, label %58

51:                                               ; preds = %44
  %52 = getelementptr inbounds %struct.cache_head, ptr %25, i32 0, i32 1
  %53 = load i64, ptr %52, align 8
  %54 = getelementptr inbounds %struct.cache_detail, ptr %0, i32 0, i32 18
  %55 = load i64, ptr %54, align 8
  %56 = icmp slt i64 %53, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  store i64 %53, ptr %54, align 8
  br label %58

58:                                               ; preds = %57, %51, %44
  %59 = getelementptr inbounds %struct.cache_detail, ptr %0, i32 0, i32 5
  %60 = load ptr, ptr %59, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %48) #21, !srcloc !10
  %61 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %48, ptr %48, i32 1, ptr elementtype(i32) %48) #21, !srcloc !13
  %62 = extractvalue { i32, i32, i32 } %61, 0
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %67, label %64

64:                                               ; preds = %58
  %65 = icmp sgt i32 %62, 0
  br i1 %65, label %68, label %66, !prof !14

66:                                               ; preds = %64
  tail call void @refcount_warn_saturate(ptr noundef %48, i32 noundef 3) #21
  br label %68

67:                                               ; preds = %58
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !15
  tail call void %60(ptr noundef %48) #21
  br label %68

68:                                               ; preds = %67, %66, %64, %27, %7
  %69 = phi i32 [ %23, %7 ], [ %43, %27 ], [ %47, %64 ], [ %47, %66 ], [ %47, %67 ]
  ret i32 %69
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gssp_free_upcall_data(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpcgss_svc_accept_upcall(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gss_mech_get_by_OID(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gss_import_sec_context(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @getboottime64(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rsc_free(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.rsc, ptr %0, i32 0, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #21
  %4 = getelementptr inbounds %struct.rsc, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call i32 @gss_delete_sec_context(ptr noundef %4) #21
  br label %9

9:                                                ; preds = %7, %1
  %10 = getelementptr inbounds %struct.rsc, ptr %0, i32 0, i32 2, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %11) #21, !srcloc !10
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %11, ptr nonnull %11, i32 1, ptr nonnull elementtype(i32) %11) #21, !srcloc !18
  %15 = extractvalue { i32, i32 } %14, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !19
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = load ptr, ptr %10, align 4
  tail call void @groups_free(ptr noundef %18) #21
  br label %19

19:                                               ; preds = %17, %13, %9
  %20 = getelementptr inbounds %struct.rsc, ptr %0, i32 0, i32 2, i32 4
  %21 = load ptr, ptr %20, align 4
  tail call void @kfree(ptr noundef %21) #21
  %22 = getelementptr inbounds %struct.rsc, ptr %0, i32 0, i32 2, i32 5
  %23 = load ptr, ptr %22, align 4
  tail call void @kfree(ptr noundef %23) #21
  %24 = getelementptr inbounds %struct.rsc, ptr %0, i32 0, i32 2, i32 6
  %25 = load ptr, ptr %24, align 4
  tail call void @kfree(ptr noundef %25) #21
  %26 = getelementptr inbounds %struct.rsc, ptr %0, i32 0, i32 2, i32 7
  %27 = load ptr, ptr %26, align 4
  tail call void @gss_mech_put(ptr noundef %27) #21
  store ptr null, ptr %10, align 4
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %20, i8 0, i64 16, i1 false) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sunrpc_cache_lookup_rcu(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @full_name_hash(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sunrpc_cache_update(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gss_delete_sec_context(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @groups_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gss_mech_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cache_check(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdr_buf_from_iov(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gss_verify_mic(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @trace_rpcgss_svc_seqno_large(ptr noundef %0, i32 noundef %1) unnamed_addr #8 {
  %3 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_svc_seqno_large, i32 0, i32 1), align 4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %18

5:                                                ; preds = %2
  %6 = tail call ptr @llvm.thread.pointer() #21
  %7 = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 8
  %9 = lshr i32 %8, 5
  %10 = getelementptr i32, ptr @__cpu_online_mask, i32 %9
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %8, 31
  %13 = shl nuw i32 1, %12
  %14 = and i32 %13, %11
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %5
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !38
  %17 = tail call i32 @__traceiter_rpcgss_svc_seqno_large(ptr noundef null, ptr noundef %0, i32 noundef %1) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !39
  br label %18

18:                                               ; preds = %16, %5, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @gss_check_seq_num(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.rsc, ptr %1, i32 0, i32 3
  %5 = getelementptr inbounds %struct.rsc, ptr %1, i32 0, i32 3, i32 2
  tail call void @_raw_spin_lock(ptr noundef %5) #21
  %6 = load i32, ptr %4, align 4
  %7 = icmp ult i32 %6, %2
  br i1 %7, label %8, label %34

8:                                                ; preds = %3
  %9 = add i32 %6, 128
  %10 = icmp ugt i32 %9, %2
  %11 = getelementptr inbounds %struct.rsc, ptr %1, i32 0, i32 3, i32 1
  br i1 %10, label %13, label %12

12:                                               ; preds = %8
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(16) %11, i8 0, i32 16, i1 false)
  br label %25

13:                                               ; preds = %13, %8
  %14 = phi i32 [ %15, %13 ], [ %6, %8 ]
  %15 = add nuw i32 %14, 1
  %16 = and i32 %15, 31
  %17 = shl nuw i32 1, %16
  %18 = lshr i32 %15, 5
  %19 = and i32 %18, 3
  %20 = getelementptr i32, ptr %11, i32 %19
  %21 = xor i32 %17, -1
  %22 = load i32, ptr %20, align 4
  %23 = and i32 %22, %21
  store i32 %23, ptr %20, align 4
  %24 = icmp eq i32 %15, %2
  br i1 %24, label %25, label %13

25:                                               ; preds = %13, %12
  store i32 %2, ptr %4, align 4
  %26 = getelementptr inbounds %struct.rsc, ptr %1, i32 0, i32 3, i32 1
  %27 = and i32 %2, 31
  %28 = shl nuw i32 1, %27
  %29 = lshr i32 %2, 5
  %30 = and i32 %29, 3
  %31 = getelementptr i32, ptr %26, i32 %30
  %32 = load i32, ptr %31, align 4
  %33 = or i32 %32, %28
  store i32 %33, ptr %31, align 4
  br label %48

34:                                               ; preds = %3
  %35 = add i32 %2, 128
  %36 = icmp ugt i32 %35, %6
  br i1 %36, label %37, label %52

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.rsc, ptr %1, i32 0, i32 3, i32 1
  %39 = and i32 %2, 31
  %40 = shl nuw i32 1, %39
  %41 = lshr i32 %2, 5
  %42 = and i32 %41, 3
  %43 = getelementptr i32, ptr %38, i32 %42
  %44 = load i32, ptr %43, align 4
  %45 = or i32 %44, %40
  store i32 %45, ptr %43, align 4
  %46 = and i32 %44, %40
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %69

48:                                               ; preds = %83, %72, %69, %67, %56, %52, %37, %25
  %49 = phi i1 [ true, %37 ], [ true, %25 ], [ false, %52 ], [ false, %56 ], [ false, %67 ], [ false, %69 ], [ false, %72 ], [ false, %83 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !40
  %50 = load i16, ptr %5, align 4
  %51 = add i16 %50, 1
  store i16 %51, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !41
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !42
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !43
  ret i1 %49

52:                                               ; preds = %34
  %53 = add i32 %6, -128
  %54 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_svc_seqno_low, i32 0, i32 1), align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %48

56:                                               ; preds = %52
  %57 = tail call ptr @llvm.thread.pointer() #21
  %58 = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 2
  %59 = load i32, ptr %58, align 8
  %60 = lshr i32 %59, 5
  %61 = getelementptr i32, ptr @__cpu_online_mask, i32 %60
  %62 = load volatile i32, ptr %61, align 4
  %63 = and i32 %59, 31
  %64 = shl nuw i32 1, %63
  %65 = and i32 %64, %62
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %48, label %67

67:                                               ; preds = %56
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !44
  %68 = tail call i32 @__traceiter_rpcgss_svc_seqno_low(ptr noundef null, ptr noundef %0, i32 noundef %2, i32 noundef %53, i32 noundef %6) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !45
  br label %48

69:                                               ; preds = %37
  %70 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_svc_seqno_seen, i32 0, i32 1), align 4
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %48

72:                                               ; preds = %69
  %73 = tail call ptr @llvm.thread.pointer() #21
  %74 = getelementptr inbounds %struct.thread_info, ptr %73, i32 0, i32 2
  %75 = load i32, ptr %74, align 8
  %76 = lshr i32 %75, 5
  %77 = getelementptr i32, ptr @__cpu_online_mask, i32 %76
  %78 = load volatile i32, ptr %77, align 4
  %79 = and i32 %75, 31
  %80 = shl nuw i32 1, %79
  %81 = and i32 %80, %78
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %48, label %83

83:                                               ; preds = %72
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !46
  %84 = tail call i32 @__traceiter_rpcgss_svc_seqno_seen(ptr noundef null, ptr noundef %0, i32 noundef %2) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !47
  br label %48
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpcgss_svc_seqno_large(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpcgss_svc_seqno_low(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpcgss_svc_seqno_seen(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gss_get_mic(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdr_buf_subsegment(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @read_bytes_from_xdr_buf(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdr_buf_trim(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @trace_rpcgss_svc_seqno_bad(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #8 {
  %4 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_svc_seqno_bad, i32 0, i32 1), align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %3
  %7 = tail call ptr @llvm.thread.pointer() #21
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
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !30
  %18 = tail call i32 @__traceiter_rpcgss_svc_seqno_bad(ptr noundef null, ptr noundef %0, i32 noundef %1, i32 noundef %2) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !31
  br label %19

19:                                               ; preds = %17, %6, %3
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @trace_rpcgss_svc_mic(ptr noundef %0, i32 noundef %1) unnamed_addr #8 {
  %3 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_svc_mic, i32 0, i32 1), align 4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %18

5:                                                ; preds = %2
  %6 = tail call ptr @llvm.thread.pointer() #21
  %7 = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 8
  %9 = lshr i32 %8, 5
  %10 = getelementptr i32, ptr @__cpu_online_mask, i32 %9
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %8, 31
  %13 = shl nuw i32 1, %12
  %14 = and i32 %13, %11
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %5
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !48
  %17 = tail call i32 @__traceiter_rpcgss_svc_mic(ptr noundef null, ptr noundef %0, i32 noundef %1) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !49
  br label %18

18:                                               ; preds = %16, %5, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpcgss_svc_unwrap_failed(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpcgss_svc_seqno_bad(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpcgss_svc_mic(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gss_unwrap(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdr_shift_buf(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpcgss_svc_unwrap(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpcgss_svc_authenticate(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i32(ptr nocapture writeonly, ptr nocapture readonly, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gss_wrap(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @svcauth_gss_domain_release_rcu(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -20
  %3 = getelementptr i8, ptr %0, i32 -8
  %4 = load ptr, ptr %3, align 4
  tail call void @kfree(ptr noundef %4) #21
  tail call void @kfree(ptr noundef %2) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @svcauth_unix_set_client(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gss_service_to_auth_domain_name(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @auth_domain_find(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cache_create_net(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cache_register_net(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cache_destroy_net(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rsc_put(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 72
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @gss_delete_sec_context(ptr noundef %2) #21
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr i8, ptr %0, i32 24
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %9) #21, !srcloc !10
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %9, ptr nonnull %9, i32 1, ptr nonnull elementtype(i32) %9) #21, !srcloc !18
  %13 = extractvalue { i32, i32 } %12, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !19
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = load ptr, ptr %8, align 4
  tail call void @groups_free(ptr noundef %16) #21
  br label %17

17:                                               ; preds = %15, %11, %7
  %18 = getelementptr i8, ptr %0, i32 32
  %19 = load ptr, ptr %18, align 4
  tail call void @kfree(ptr noundef %19) #21
  %20 = getelementptr i8, ptr %0, i32 36
  %21 = load ptr, ptr %20, align 4
  tail call void @kfree(ptr noundef %21) #21
  %22 = getelementptr i8, ptr %0, i32 40
  %23 = load ptr, ptr %22, align 4
  tail call void @kfree(ptr noundef %23) #21
  %24 = getelementptr i8, ptr %0, i32 44
  %25 = load ptr, ptr %24, align 4
  tail call void @gss_mech_put(ptr noundef %25) #21
  store ptr null, ptr %8, align 4
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %18, i8 0, i64 16, i1 false) #21
  %26 = getelementptr i8, ptr %0, i32 76
  tail call void @call_rcu(ptr noundef %26, ptr noundef nonnull @rsc_free_rcu) #21
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @rsc_upcall(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #13 {
  ret i32 -22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rsc_parse(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca [50 x i8], align 1
  %5 = alloca ptr, align 4
  %6 = alloca [50 x i8], align 1
  %7 = alloca ptr, align 4
  %8 = alloca [50 x i8], align 1
  %9 = alloca ptr, align 4
  %10 = alloca [50 x i8], align 1
  %11 = alloca i64, align 8
  %12 = alloca %struct.timespec64, align 8
  %13 = alloca ptr, align 4
  %14 = alloca %struct.rsc, align 8
  %15 = alloca i32, align 4
  store ptr %1, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %14) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %14, i8 0, i64 112, i1 false)
  %16 = call i32 @qword_get(ptr noundef nonnull %13, ptr noundef %1, i32 noundef %2) #21
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %137, label %18

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.rsc, ptr %14, i32 0, i32 1
  store i32 %16, ptr %19, align 8
  %20 = icmp eq i32 %16, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.rsc, ptr %14, i32 0, i32 1, i32 1
  store ptr null, ptr %22, align 4
  br label %27

23:                                               ; preds = %18
  %24 = call ptr @kmemdup(ptr noundef %1, i32 noundef %16, i32 noundef 3264) #21
  %25 = getelementptr inbounds %struct.rsc, ptr %14, i32 0, i32 1, i32 1
  store ptr %24, ptr %25, align 4
  %26 = icmp eq ptr %24, null
  br i1 %26, label %137, label %27

27:                                               ; preds = %23, %21
  %28 = getelementptr inbounds %struct.cache_head, ptr %14, i32 0, i32 4
  store i32 0, ptr %28, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #21
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i32 16, i1 false) #21, !annotation !16
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %10) #21
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(50) %10, i8 0, i32 50, i1 false) #21, !annotation !16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #21
  store i64 0, ptr %11, align 8, !annotation !16
  %29 = call i32 @qword_get(ptr noundef nonnull %13, ptr noundef nonnull %10, i32 noundef 50) #21
  %30 = icmp slt i32 %29, 1
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = call i32 @kstrtoll(ptr noundef nonnull %10, i32 noundef 0, ptr noundef nonnull %11) #21
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %31, %27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #21
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %10) #21
  br label %38

35:                                               ; preds = %31
  %36 = load i64, ptr %11, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #21
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %10) #21
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35, %34
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #21
  br label %137

39:                                               ; preds = %35
  call void @getboottime64(ptr noundef nonnull %12) #21
  %40 = load i64, ptr %12, align 8
  %41 = sub i64 %36, %40
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #21
  %42 = icmp eq i64 %36, %40
  br i1 %42, label %137, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.rsc, ptr %14, i32 0, i32 1, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = load i32, ptr %19, align 8
  %47 = call i32 @full_name_hash(ptr noundef null, ptr noundef %45, i32 noundef %46) #24
  %48 = lshr i32 %47, 22
  %49 = call ptr @sunrpc_cache_lookup_rcu(ptr noundef %0, ptr noundef nonnull %14, i32 noundef %48) #21
  %50 = icmp eq ptr %49, null
  br i1 %50, label %137, label %51

51:                                               ; preds = %43
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %8) #21
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(50) %8, i8 0, i32 50, i1 false) #21, !annotation !16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #21
  store ptr null, ptr %9, align 4, !annotation !16
  %52 = call i32 @qword_get(ptr noundef nonnull %13, ptr noundef nonnull %8, i32 noundef 50) #21
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %61, label %54

54:                                               ; preds = %51
  %55 = icmp eq i32 %52, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %54
  %57 = call i32 @simple_strtol(ptr noundef nonnull %8, ptr noundef nonnull %9, i32 noundef 0) #21
  %58 = load ptr, ptr %9, align 4
  %59 = load i8, ptr %58, align 1
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %56, %51
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %8) #21
  call fastcc void @rsc_free(ptr noundef nonnull %14)
  br label %142

62:                                               ; preds = %54
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %8) #21
  call void @_set_bit(i32 noundef 1, ptr noundef %28) #21
  br label %130

63:                                               ; preds = %56
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %8) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #21
  store i32 0, ptr %15, align 4, !annotation !16
  %64 = getelementptr inbounds %struct.rsc, ptr %14, i32 0, i32 2
  store i32 %57, ptr %64, align 8
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %6) #21
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(50) %6, i8 0, i32 50, i1 false) #21, !annotation !16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #21
  store ptr null, ptr %7, align 4, !annotation !16
  %65 = call i32 @qword_get(ptr noundef nonnull %13, ptr noundef nonnull %6, i32 noundef 50) #21
  %66 = icmp slt i32 %65, 1
  br i1 %66, label %72, label %67

67:                                               ; preds = %63
  %68 = call i32 @simple_strtol(ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef 0) #21
  %69 = load ptr, ptr %7, align 4
  %70 = load i8, ptr %69, align 1
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %67, %63
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %6) #21
  br label %127

73:                                               ; preds = %67
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %6) #21
  %74 = getelementptr inbounds %struct.rsc, ptr %14, i32 0, i32 2, i32 1
  store i32 %68, ptr %74, align 4
  %75 = call fastcc i32 @get_int(ptr noundef nonnull %13, ptr noundef nonnull %15)
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %127

77:                                               ; preds = %73
  %78 = load i32, ptr %15, align 4
  %79 = icmp ugt i32 %78, 65536
  br i1 %79, label %127, label %80

80:                                               ; preds = %77
  %81 = call ptr @groups_alloc(i32 noundef %78) #21
  %82 = getelementptr inbounds %struct.rsc, ptr %14, i32 0, i32 2, i32 2
  store ptr %81, ptr %82, align 8
  %83 = icmp eq ptr %81, null
  br i1 %83, label %127, label %84

84:                                               ; preds = %80
  %85 = icmp eq i32 %78, 0
  br i1 %85, label %105, label %86

86:                                               ; preds = %98, %84
  %87 = phi i32 [ %101, %98 ], [ 0, %84 ]
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %4) #21
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(50) %4, i8 0, i32 50, i1 false) #21, !annotation !16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #21
  store ptr null, ptr %5, align 4, !annotation !16
  %88 = call i32 @qword_get(ptr noundef nonnull %13, ptr noundef nonnull %4, i32 noundef 50) #21
  %89 = icmp slt i32 %88, 1
  br i1 %89, label %95, label %90

90:                                               ; preds = %86
  %91 = call i32 @simple_strtol(ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef 0) #21
  %92 = load ptr, ptr %5, align 4
  %93 = load i8, ptr %92, align 1
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %90, %86
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %4) #21
  br label %127

96:                                               ; preds = %90
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %4) #21
  %97 = icmp eq i32 %91, -1
  br i1 %97, label %127, label %98

98:                                               ; preds = %96
  %99 = load ptr, ptr %82, align 8
  %100 = getelementptr %struct.group_info, ptr %99, i32 0, i32 2, i32 %87
  store i32 %91, ptr %100, align 4
  %101 = add nuw nsw i32 %87, 1
  %102 = icmp eq i32 %101, %78
  br i1 %102, label %103, label %86

103:                                              ; preds = %98
  %104 = load ptr, ptr %82, align 8
  br label %105

105:                                              ; preds = %103, %84
  %106 = phi ptr [ %104, %103 ], [ %81, %84 ]
  call void @groups_sort(ptr noundef %106) #21
  %107 = call i32 @qword_get(ptr noundef nonnull %13, ptr noundef %1, i32 noundef %2) #21
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %127, label %109

109:                                              ; preds = %105
  %110 = call ptr @gss_mech_get_by_name(ptr noundef %1) #21
  %111 = getelementptr inbounds %struct.rsc, ptr %14, i32 0, i32 2, i32 7
  store ptr %110, ptr %111, align 4
  %112 = icmp eq ptr %110, null
  br i1 %112, label %127, label %113

113:                                              ; preds = %109
  %114 = call i32 @qword_get(ptr noundef nonnull %13, ptr noundef %1, i32 noundef %2) #21
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %127, label %116

116:                                              ; preds = %113
  %117 = getelementptr inbounds %struct.rsc, ptr %14, i32 0, i32 4
  %118 = call i32 @gss_import_sec_context(ptr noundef %1, i32 noundef %114, ptr noundef nonnull %110, ptr noundef %117, ptr noundef null, i32 noundef 3264) #21
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %127

120:                                              ; preds = %116
  %121 = call i32 @qword_get(ptr noundef nonnull %13, ptr noundef %1, i32 noundef %2) #21
  %122 = icmp sgt i32 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %120
  %124 = call noalias ptr @kstrdup(ptr noundef %1, i32 noundef 3264) #21
  %125 = getelementptr inbounds %struct.rsc, ptr %14, i32 0, i32 2, i32 5
  store ptr %124, ptr %125, align 4
  %126 = icmp eq ptr %124, null
  br i1 %126, label %127, label %129

127:                                              ; preds = %123, %116, %113, %109, %105, %96, %95, %80, %77, %73, %72
  %128 = phi i32 [ -22, %72 ], [ -12, %123 ], [ %118, %116 ], [ -22, %113 ], [ -95, %109 ], [ -22, %105 ], [ -12, %80 ], [ -22, %77 ], [ -22, %73 ], [ -22, %95 ], [ -22, %96 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #21
  br label %138

129:                                              ; preds = %123, %120
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #21
  br label %130

130:                                              ; preds = %129, %62
  %131 = getelementptr inbounds %struct.cache_head, ptr %14, i32 0, i32 1
  store i64 %41, ptr %131, align 8
  %132 = load ptr, ptr %44, align 4
  %133 = load i32, ptr %19, align 8
  %134 = call i32 @full_name_hash(ptr noundef null, ptr noundef %132, i32 noundef %133) #24
  %135 = lshr i32 %134, 22
  %136 = call ptr @sunrpc_cache_update(ptr noundef %0, ptr noundef nonnull %14, ptr noundef nonnull %49, i32 noundef %135) #21
  br label %138

137:                                              ; preds = %43, %39, %38, %23, %3
  call fastcc void @rsc_free(ptr noundef nonnull %14)
  br label %165

138:                                              ; preds = %130, %127
  %139 = phi ptr [ %136, %130 ], [ %49, %127 ]
  %140 = phi i32 [ 0, %130 ], [ %128, %127 ]
  call fastcc void @rsc_free(ptr noundef nonnull %14)
  %141 = icmp eq ptr %139, null
  br i1 %141, label %165, label %142

142:                                              ; preds = %138, %61
  %143 = phi i32 [ -22, %61 ], [ %140, %138 ]
  %144 = phi ptr [ %49, %61 ], [ %139, %138 ]
  %145 = getelementptr inbounds %struct.cache_head, ptr %144, i32 0, i32 3
  %146 = load volatile i32, ptr %145, align 4
  %147 = icmp ult i32 %146, 3
  br i1 %147, label %148, label %155

148:                                              ; preds = %142
  %149 = getelementptr inbounds %struct.cache_head, ptr %144, i32 0, i32 1
  %150 = load i64, ptr %149, align 8
  %151 = getelementptr inbounds %struct.cache_detail, ptr %0, i32 0, i32 18
  %152 = load i64, ptr %151, align 8
  %153 = icmp slt i64 %150, %152
  br i1 %153, label %154, label %155

154:                                              ; preds = %148
  store i64 %150, ptr %151, align 8
  br label %155

155:                                              ; preds = %154, %148, %142
  %156 = getelementptr inbounds %struct.cache_detail, ptr %0, i32 0, i32 5
  %157 = load ptr, ptr %156, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !12
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %145) #21, !srcloc !10
  %158 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %145, ptr %145, i32 1, ptr elementtype(i32) %145) #21, !srcloc !13
  %159 = extractvalue { i32, i32, i32 } %158, 0
  %160 = icmp eq i32 %159, 1
  br i1 %160, label %164, label %161

161:                                              ; preds = %155
  %162 = icmp sgt i32 %159, 0
  br i1 %162, label %165, label %163, !prof !14

163:                                              ; preds = %161
  call void @refcount_warn_saturate(ptr noundef %145, i32 noundef 3) #21
  br label %165

164:                                              ; preds = %155
  call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !15
  call void %157(ptr noundef %145) #21
  br label %165

165:                                              ; preds = %164, %163, %161, %138, %137
  %166 = phi i32 [ -12, %138 ], [ -12, %137 ], [ %143, %161 ], [ %143, %163 ], [ %143, %164 ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %14) #21
  ret i32 %166
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal noalias ptr @rsc_alloc() #2 {
  %1 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %2 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 112) #20
  ret ptr %2
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @rsc_match(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #14 {
  %3 = getelementptr inbounds %struct.rsc, ptr %0, i32 0, i32 1
  %4 = getelementptr inbounds %struct.rsc, ptr %1, i32 0, i32 1
  %5 = load i32, ptr %3, align 4
  %6 = load i32, ptr %4, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %8, label %16

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.rsc, ptr %0, i32 0, i32 1, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.rsc, ptr %1, i32 0, i32 1, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @bcmp(ptr %10, ptr %12, i32 %5) #21
  %14 = icmp eq i32 %13, 0
  %15 = zext i1 %14 to i32
  br label %16

16:                                               ; preds = %8, %2
  %17 = phi i32 [ 0, %2 ], [ %15, %8 ]
  ret i32 %17
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @rsc_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef %1) #15 {
  %3 = getelementptr inbounds %struct.rsc, ptr %1, i32 0, i32 1
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr inbounds %struct.rsc, ptr %0, i32 0, i32 1
  store i32 %4, ptr %5, align 8
  store i32 0, ptr %3, align 8
  %6 = getelementptr inbounds %struct.rsc, ptr %1, i32 0, i32 1, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.rsc, ptr %0, i32 0, i32 1, i32 1
  store ptr %7, ptr %8, align 4
  store ptr null, ptr %6, align 4
  %9 = getelementptr inbounds %struct.rsc, ptr %0, i32 0, i32 4
  store ptr null, ptr %9, align 8
  %10 = getelementptr inbounds %struct.rsc, ptr %0, i32 0, i32 2, i32 2
  store ptr null, ptr %10, align 4
  %11 = getelementptr inbounds %struct.rsc, ptr %0, i32 0, i32 2, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %11, i8 0, i64 16, i1 false) #21
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @update_rsc(ptr nocapture noundef writeonly %0, ptr nocapture noundef %1) #15 {
  %3 = getelementptr inbounds %struct.rsc, ptr %1, i32 0, i32 4
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.rsc, ptr %0, i32 0, i32 4
  store ptr %4, ptr %5, align 8
  store ptr null, ptr %3, align 8
  %6 = getelementptr inbounds %struct.rsc, ptr %0, i32 0, i32 3
  %7 = getelementptr inbounds %struct.rsc, ptr %0, i32 0, i32 2
  %8 = getelementptr inbounds %struct.rsc, ptr %1, i32 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(32) %7, ptr noundef align 8 dereferenceable(32) %8, i32 32, i1 false)
  %9 = getelementptr inbounds %struct.rsc, ptr %1, i32 0, i32 2, i32 2
  store ptr null, ptr %9, align 4
  %10 = getelementptr inbounds %struct.rsc, ptr %1, i32 0, i32 2, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %10, i8 0, i64 16, i1 false) #21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rsc_free_rcu(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -100
  %3 = getelementptr i8, ptr %0, i32 -64
  %4 = load ptr, ptr %3, align 4
  tail call void @kfree(ptr noundef %4) #21
  tail call void @kfree(ptr noundef %2) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qword_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @get_int(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #8 {
  %3 = alloca [50 x i8], align 1
  %4 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %3) #21
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(50) %3, i8 0, i32 50, i1 false), !annotation !16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #21
  store ptr null, ptr %4, align 4, !annotation !16
  %5 = call i32 @qword_get(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 50) #21
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %15, label %7

7:                                                ; preds = %2
  %8 = icmp eq i32 %5, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %7
  %10 = call i32 @simple_strtol(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 0) #21
  %11 = load ptr, ptr %4, align 4
  %12 = load i8, ptr %11, align 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  store i32 %10, ptr %1, align 4
  br label %15

15:                                               ; preds = %14, %9, %7, %2
  %16 = phi i32 [ 0, %14 ], [ -22, %2 ], [ -2, %7 ], [ -22, %9 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %3) #21
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @groups_alloc(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @groups_sort(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gss_mech_get_by_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoll(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rsi_put(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 48
  tail call void @call_rcu(ptr noundef %2, ptr noundef nonnull @rsi_free_rcu) #21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rsi_upcall(ptr noundef %0, ptr noundef %1) #2 {
  %3 = tail call i32 @sunrpc_cache_pipe_upcall_timeout(ptr noundef %0, ptr noundef %1) #21
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rsi_request(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) #2 {
  %5 = getelementptr inbounds %struct.rsi, ptr %1, i32 0, i32 1
  %6 = getelementptr inbounds %struct.rsi, ptr %1, i32 0, i32 1, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr %5, align 8
  tail call void @qword_addhex(ptr noundef %2, ptr noundef %3, ptr noundef %7, i32 noundef %8) #21
  %9 = getelementptr inbounds %struct.rsi, ptr %1, i32 0, i32 2
  %10 = getelementptr inbounds %struct.rsi, ptr %1, i32 0, i32 2, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = load i32, ptr %9, align 8
  tail call void @qword_addhex(ptr noundef %2, ptr noundef %3, ptr noundef %11, i32 noundef %12) #21
  %13 = load ptr, ptr %2, align 4
  %14 = getelementptr i8, ptr %13, i32 -1
  store i8 10, ptr %14, align 1
  %15 = load i32, ptr %3, align 4
  %16 = icmp slt i32 %15, 0
  %17 = load i1, ptr @rsi_request.__already_done, align 1
  %18 = xor i1 %17, true
  %19 = select i1 %16, i1 %18, i1 false
  br i1 %19, label %20, label %21, !prof !35

20:                                               ; preds = %4
  store i1 true, ptr @rsi_request.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 198, i32 noundef 9, ptr noundef nonnull @.str.6) #21
  br label %21

21:                                               ; preds = %20, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rsi_parse(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca [50 x i8], align 1
  %5 = alloca i64, align 8
  %6 = alloca %struct.timespec64, align 8
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca %struct.rsi, align 8
  store ptr %1, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #21
  store ptr null, ptr %8, align 4, !annotation !16
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %9) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %9, i8 0, i64 80, i1 false)
  %10 = call i32 @qword_get(ptr noundef nonnull %7, ptr noundef %1, i32 noundef %2) #21
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %108, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.rsi, ptr %9, i32 0, i32 1
  store i32 %10, ptr %13, align 8
  %14 = icmp eq i32 %10, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.rsi, ptr %9, i32 0, i32 1, i32 1
  store ptr null, ptr %16, align 4
  br label %21

17:                                               ; preds = %12
  %18 = call ptr @kmemdup(ptr noundef %1, i32 noundef %10, i32 noundef 3264) #21
  %19 = getelementptr inbounds %struct.rsi, ptr %9, i32 0, i32 1, i32 1
  store ptr %18, ptr %19, align 4
  %20 = icmp eq ptr %18, null
  br i1 %20, label %108, label %21

21:                                               ; preds = %17, %15
  %22 = call i32 @qword_get(ptr noundef nonnull %7, ptr noundef %1, i32 noundef %2) #21
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %108, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.rsi, ptr %9, i32 0, i32 2
  store i32 %22, ptr %25, align 8
  %26 = icmp eq i32 %22, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.rsi, ptr %9, i32 0, i32 2, i32 1
  store ptr null, ptr %28, align 4
  br label %35

29:                                               ; preds = %24
  %30 = call ptr @kmemdup(ptr noundef %1, i32 noundef %22, i32 noundef 3264) #21
  %31 = getelementptr inbounds %struct.rsi, ptr %9, i32 0, i32 2, i32 1
  store ptr %30, ptr %31, align 4
  %32 = icmp eq ptr %30, null
  br i1 %32, label %108, label %33

33:                                               ; preds = %29
  %34 = load i32, ptr %25, align 8
  br label %35

35:                                               ; preds = %33, %27
  %36 = phi i32 [ 0, %27 ], [ %34, %33 ]
  %37 = phi ptr [ null, %27 ], [ %30, %33 ]
  %38 = getelementptr inbounds %struct.rsi, ptr %9, i32 0, i32 1, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = load i32, ptr %13, align 8
  %41 = call i32 @full_name_hash(ptr noundef null, ptr noundef %39, i32 noundef %40) #24
  %42 = call i32 @full_name_hash(ptr noundef null, ptr noundef %37, i32 noundef %36) #24
  %43 = xor i32 %42, %41
  %44 = lshr i32 %43, 26
  %45 = call ptr @sunrpc_cache_lookup_rcu(ptr noundef %0, ptr noundef nonnull %9, i32 noundef %44) #21
  %46 = icmp eq ptr %45, null
  br i1 %46, label %108, label %47

47:                                               ; preds = %35
  %48 = getelementptr inbounds %struct.cache_head, ptr %9, i32 0, i32 4
  store i32 0, ptr %48, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #21
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i32 16, i1 false) #21, !annotation !16
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %4) #21
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(50) %4, i8 0, i32 50, i1 false) #21, !annotation !16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #21
  store i64 0, ptr %5, align 8, !annotation !16
  %49 = call i32 @qword_get(ptr noundef nonnull %7, ptr noundef nonnull %4, i32 noundef 50) #21
  %50 = icmp slt i32 %49, 1
  br i1 %50, label %54, label %51

51:                                               ; preds = %47
  %52 = call i32 @kstrtoll(ptr noundef nonnull %4, i32 noundef 0, ptr noundef nonnull %5) #21
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %51, %47
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %4) #21
  br label %58

55:                                               ; preds = %51
  %56 = load i64, ptr %5, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %4) #21
  %57 = icmp slt i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55, %54
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #21
  br label %108

59:                                               ; preds = %55
  call void @getboottime64(ptr noundef nonnull %6) #21
  %60 = load i64, ptr %6, align 8
  %61 = sub i64 %56, %60
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #21
  %62 = icmp eq i64 %56, %60
  br i1 %62, label %108, label %63

63:                                               ; preds = %59
  %64 = call i32 @qword_get(ptr noundef nonnull %7, ptr noundef %1, i32 noundef %2) #21
  %65 = icmp slt i32 %64, 1
  br i1 %65, label %108, label %66

66:                                               ; preds = %63
  %67 = call i32 @simple_strtoul(ptr noundef %1, ptr noundef nonnull %8, i32 noundef 10) #21
  %68 = getelementptr inbounds %struct.rsi, ptr %9, i32 0, i32 5
  store i32 %67, ptr %68, align 8
  %69 = load ptr, ptr %8, align 4
  %70 = load i8, ptr %69, align 1
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %72, label %108

72:                                               ; preds = %66
  %73 = call i32 @qword_get(ptr noundef nonnull %7, ptr noundef %1, i32 noundef %2) #21
  %74 = icmp slt i32 %73, 1
  br i1 %74, label %108, label %75

75:                                               ; preds = %72
  %76 = call i32 @simple_strtoul(ptr noundef %1, ptr noundef nonnull %8, i32 noundef 10) #21
  %77 = getelementptr inbounds %struct.rsi, ptr %9, i32 0, i32 6
  store i32 %76, ptr %77, align 4
  %78 = load ptr, ptr %8, align 4
  %79 = load i8, ptr %78, align 1
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %81, label %108

81:                                               ; preds = %75
  %82 = call i32 @qword_get(ptr noundef nonnull %7, ptr noundef %1, i32 noundef %2) #21
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %108, label %84

84:                                               ; preds = %81
  %85 = getelementptr inbounds %struct.rsi, ptr %9, i32 0, i32 3
  store i32 %82, ptr %85, align 8
  %86 = icmp eq i32 %82, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.rsi, ptr %9, i32 0, i32 3, i32 1
  store ptr null, ptr %88, align 4
  br label %93

89:                                               ; preds = %84
  %90 = call ptr @kmemdup(ptr noundef %1, i32 noundef %82, i32 noundef 3264) #21
  %91 = getelementptr inbounds %struct.rsi, ptr %9, i32 0, i32 3, i32 1
  store ptr %90, ptr %91, align 4
  %92 = icmp eq ptr %90, null
  br i1 %92, label %108, label %93

93:                                               ; preds = %89, %87
  %94 = call i32 @qword_get(ptr noundef nonnull %7, ptr noundef %1, i32 noundef %2) #21
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %108, label %96

96:                                               ; preds = %93
  %97 = getelementptr inbounds %struct.rsi, ptr %9, i32 0, i32 4
  store i32 %94, ptr %97, align 8
  %98 = icmp eq i32 %94, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %96
  %100 = getelementptr inbounds %struct.rsi, ptr %9, i32 0, i32 4, i32 1
  store ptr null, ptr %100, align 4
  br label %105

101:                                              ; preds = %96
  %102 = call ptr @kmemdup(ptr noundef %1, i32 noundef %94, i32 noundef 3264) #21
  %103 = getelementptr inbounds %struct.rsi, ptr %9, i32 0, i32 4, i32 1
  store ptr %102, ptr %103, align 4
  %104 = icmp eq ptr %102, null
  br i1 %104, label %108, label %105

105:                                              ; preds = %101, %99
  %106 = getelementptr inbounds %struct.cache_head, ptr %9, i32 0, i32 1
  store i64 %61, ptr %106, align 8
  %107 = call fastcc ptr @rsi_update(ptr noundef %0, ptr noundef nonnull %9, ptr noundef nonnull %45)
  br label %108

108:                                              ; preds = %105, %101, %93, %89, %81, %75, %72, %66, %63, %59, %58, %35, %29, %21, %17, %3
  %109 = phi ptr [ null, %3 ], [ null, %17 ], [ null, %21 ], [ null, %29 ], [ %45, %59 ], [ %45, %63 ], [ %45, %66 ], [ %45, %72 ], [ %45, %75 ], [ %45, %81 ], [ %45, %89 ], [ %45, %93 ], [ %45, %101 ], [ %107, %105 ], [ null, %35 ], [ %45, %58 ]
  %110 = phi i32 [ -22, %3 ], [ -12, %17 ], [ -22, %21 ], [ -12, %29 ], [ -22, %59 ], [ -22, %63 ], [ -22, %66 ], [ -22, %72 ], [ -22, %75 ], [ -22, %81 ], [ -12, %89 ], [ -22, %93 ], [ -12, %101 ], [ 0, %105 ], [ -12, %35 ], [ -22, %58 ]
  %111 = getelementptr inbounds %struct.rsi, ptr %9, i32 0, i32 1, i32 1
  %112 = load ptr, ptr %111, align 4
  call void @kfree(ptr noundef %112) #21
  %113 = getelementptr inbounds %struct.rsi, ptr %9, i32 0, i32 2, i32 1
  %114 = load ptr, ptr %113, align 4
  call void @kfree(ptr noundef %114) #21
  %115 = getelementptr inbounds %struct.rsi, ptr %9, i32 0, i32 3, i32 1
  %116 = load ptr, ptr %115, align 4
  call void @kfree(ptr noundef %116) #21
  %117 = getelementptr inbounds %struct.rsi, ptr %9, i32 0, i32 4, i32 1
  %118 = load ptr, ptr %117, align 4
  call void @kfree(ptr noundef %118) #21
  %119 = icmp eq ptr %109, null
  br i1 %119, label %141, label %120

120:                                              ; preds = %108
  %121 = getelementptr inbounds %struct.cache_head, ptr %109, i32 0, i32 3
  %122 = load volatile i32, ptr %121, align 4
  %123 = icmp ult i32 %122, 3
  br i1 %123, label %124, label %131

124:                                              ; preds = %120
  %125 = getelementptr inbounds %struct.cache_head, ptr %109, i32 0, i32 1
  %126 = load i64, ptr %125, align 8
  %127 = getelementptr inbounds %struct.cache_detail, ptr %0, i32 0, i32 18
  %128 = load i64, ptr %127, align 8
  %129 = icmp slt i64 %126, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %124
  store i64 %126, ptr %127, align 8
  br label %131

131:                                              ; preds = %130, %124, %120
  %132 = getelementptr inbounds %struct.cache_detail, ptr %0, i32 0, i32 5
  %133 = load ptr, ptr %132, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !12
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %121) #21, !srcloc !10
  %134 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %121, ptr %121, i32 1, ptr elementtype(i32) %121) #21, !srcloc !13
  %135 = extractvalue { i32, i32, i32 } %134, 0
  %136 = icmp eq i32 %135, 1
  br i1 %136, label %140, label %137

137:                                              ; preds = %131
  %138 = icmp sgt i32 %135, 0
  br i1 %138, label %141, label %139, !prof !14

139:                                              ; preds = %137
  call void @refcount_warn_saturate(ptr noundef %121, i32 noundef 3) #21
  br label %141

140:                                              ; preds = %131
  call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !15
  call void %133(ptr noundef %121) #21
  br label %141

141:                                              ; preds = %140, %139, %137, %108
  %142 = phi i32 [ -12, %108 ], [ %110, %137 ], [ %110, %139 ], [ %110, %140 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #21
  ret i32 %142
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal noalias ptr @rsi_alloc() #2 {
  %1 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %2 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 80) #20
  ret ptr %2
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @rsi_match(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #14 {
  %3 = getelementptr inbounds %struct.rsi, ptr %0, i32 0, i32 1
  %4 = getelementptr inbounds %struct.rsi, ptr %1, i32 0, i32 1
  %5 = load i32, ptr %3, align 4
  %6 = load i32, ptr %4, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %8, label %29

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.rsi, ptr %0, i32 0, i32 1, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.rsi, ptr %1, i32 0, i32 1, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @bcmp(ptr %10, ptr %12, i32 %5) #21
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.rsi, ptr %0, i32 0, i32 2
  %17 = getelementptr inbounds %struct.rsi, ptr %1, i32 0, i32 2
  %18 = load i32, ptr %16, align 4
  %19 = load i32, ptr %17, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.rsi, ptr %0, i32 0, i32 2, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.rsi, ptr %1, i32 0, i32 2, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i32 @bcmp(ptr %23, ptr %25, i32 %18) #21
  %27 = icmp eq i32 %26, 0
  %28 = zext i1 %27 to i32
  br label %29

29:                                               ; preds = %21, %15, %8, %2
  %30 = phi i32 [ 0, %8 ], [ 0, %2 ], [ 0, %15 ], [ %28, %21 ]
  ret i32 %30
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @rsi_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef %1) #16 {
  %3 = getelementptr inbounds %struct.rsi, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.rsi, ptr %1, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %5 = load i32, ptr %4, align 8
  %6 = getelementptr inbounds %struct.rsi, ptr %0, i32 0, i32 1
  store i32 %5, ptr %6, align 8
  store i32 0, ptr %4, align 8
  %7 = getelementptr inbounds %struct.rsi, ptr %1, i32 0, i32 2
  %8 = load i32, ptr %7, align 8
  %9 = getelementptr inbounds %struct.rsi, ptr %0, i32 0, i32 2
  store i32 %8, ptr %9, align 8
  store i32 0, ptr %7, align 8
  %10 = getelementptr inbounds %struct.rsi, ptr %1, i32 0, i32 1, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.rsi, ptr %0, i32 0, i32 1, i32 1
  store ptr %11, ptr %12, align 4
  store ptr null, ptr %10, align 4
  %13 = getelementptr inbounds %struct.rsi, ptr %1, i32 0, i32 2, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.rsi, ptr %0, i32 0, i32 2, i32 1
  store ptr %14, ptr %15, align 4
  store ptr null, ptr %13, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @update_rsi(ptr nocapture noundef %0, ptr nocapture noundef %1) #2 {
  %3 = getelementptr inbounds %struct.rsi, ptr %0, i32 0, i32 3, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %10, !prof !14

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rsi, ptr %0, i32 0, i32 4, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10, !prof !14

10:                                               ; preds = %6, %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/sunrpc/auth_gss/svcauth_gss.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #21, !srcloc !50
  unreachable

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.rsi, ptr %0, i32 0, i32 3
  %13 = getelementptr inbounds %struct.rsi, ptr %1, i32 0, i32 3
  %14 = load i32, ptr %13, align 8
  store i32 %14, ptr %12, align 8
  store i32 0, ptr %13, align 8
  %15 = getelementptr inbounds %struct.rsi, ptr %1, i32 0, i32 4
  %16 = load i32, ptr %15, align 8
  %17 = getelementptr inbounds %struct.rsi, ptr %0, i32 0, i32 4
  store i32 %16, ptr %17, align 8
  store i32 0, ptr %15, align 8
  %18 = getelementptr inbounds %struct.rsi, ptr %1, i32 0, i32 3, i32 1
  %19 = load ptr, ptr %18, align 4
  store ptr %19, ptr %3, align 4
  store ptr null, ptr %18, align 4
  %20 = getelementptr inbounds %struct.rsi, ptr %1, i32 0, i32 4, i32 1
  %21 = load ptr, ptr %20, align 4
  store ptr %21, ptr %7, align 4
  store ptr null, ptr %20, align 4
  %22 = getelementptr inbounds %struct.rsi, ptr %1, i32 0, i32 5
  %23 = load i32, ptr %22, align 8
  %24 = getelementptr inbounds %struct.rsi, ptr %0, i32 0, i32 5
  store i32 %23, ptr %24, align 8
  %25 = getelementptr inbounds %struct.rsi, ptr %1, i32 0, i32 6
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.rsi, ptr %0, i32 0, i32 6
  store i32 %26, ptr %27, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rsi_free_rcu(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -72
  %3 = getelementptr i8, ptr %0, i32 -36
  %4 = load ptr, ptr %3, align 4
  tail call void @kfree(ptr noundef %4) #21
  %5 = getelementptr i8, ptr %0, i32 -28
  %6 = load ptr, ptr %5, align 4
  tail call void @kfree(ptr noundef %6) #21
  %7 = getelementptr i8, ptr %0, i32 -20
  %8 = load ptr, ptr %7, align 4
  tail call void @kfree(ptr noundef %8) #21
  %9 = getelementptr i8, ptr %0, i32 -12
  %10 = load ptr, ptr %9, align 4
  tail call void @kfree(ptr noundef %10) #21
  tail call void @kfree(ptr noundef %2) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sunrpc_cache_pipe_upcall_timeout(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @qword_addhex(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @rsi_update(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.rsi, ptr %1, i32 0, i32 1
  %5 = getelementptr inbounds %struct.rsi, ptr %1, i32 0, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr %4, align 8
  %8 = tail call i32 @full_name_hash(ptr noundef null, ptr noundef %6, i32 noundef %7) #24
  %9 = getelementptr inbounds %struct.rsi, ptr %1, i32 0, i32 2
  %10 = getelementptr inbounds %struct.rsi, ptr %1, i32 0, i32 2, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = load i32, ptr %9, align 8
  %13 = tail call i32 @full_name_hash(ptr noundef null, ptr noundef %11, i32 noundef %12) #24
  %14 = xor i32 %13, %8
  %15 = lshr i32 %14, 26
  %16 = tail call ptr @sunrpc_cache_update(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %15) #21
  ret ptr %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_gssp_clnt(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nonseekable_open(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @read_gssp(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3) #2 {
  %5 = alloca [10 x i8], align 1
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 47
  %9 = load ptr, ptr %8, align 4
  %10 = load i32, ptr @sunrpc_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !8
  %11 = getelementptr inbounds %struct.net, ptr %9, i32 0, i32 37
  %12 = load volatile ptr, ptr %11, align 64
  %13 = getelementptr [0 x ptr], ptr %12, i32 0, i32 %10
  %14 = load ptr, ptr %13, align 4
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !9
  %15 = load i64, ptr %3, align 8
  %16 = trunc i64 %15 to i32
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %5) #21
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(10) %5, i8 0, i32 10, i1 false), !annotation !16
  %17 = getelementptr inbounds %struct.sunrpc_net, ptr %14, i32 0, i32 17
  %18 = load i32, ptr %17, align 4
  %19 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %5, i32 noundef 10, ptr noundef nonnull @.str.8, i32 noundef %18)
  %20 = call i32 @strlen(ptr noundef nonnull %5)
  %21 = icmp ugt i32 %20, %16
  br i1 %21, label %22, label %50

22:                                               ; preds = %4
  %23 = sub i32 %20, %16
  %24 = tail call i32 @llvm.umin.i32(i32 %23, i32 %2)
  %25 = getelementptr i8, ptr %5, i32 %16
  %26 = icmp slt i32 %24, 0
  %27 = load i1, ptr @check_copy_size.__already_done, align 1
  %28 = xor i1 %27, true
  %29 = select i1 %26, i1 %28, i1 false
  br i1 %29, label %30, label %31, !prof !35

30:                                               ; preds = %22
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 230, i32 noundef 9, ptr noundef null) #21
  br label %31

31:                                               ; preds = %30, %22
  br i1 %26, label %50, label %32, !prof !35

32:                                               ; preds = %31
  %33 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %24, i32 -1090519040) #25, !srcloc !51
  %34 = extractvalue { i32, i32 } %33, 0
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %32
  %37 = tail call ptr @llvm.thread.pointer() #21
  %38 = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 3
  %39 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %38) #26, !srcloc !52
  %40 = and i32 %39, -13
  %41 = or i32 %40, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %41) #21, !srcloc !53
  call void asm sideeffect "isb ", "~{memory}"() #21, !srcloc !54
  %42 = call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef %25, i32 noundef %24) #21
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %39) #21, !srcloc !53
  call void asm sideeffect "isb ", "~{memory}"() #21, !srcloc !54
  br label %43

43:                                               ; preds = %36, %32
  %44 = phi i32 [ %42, %36 ], [ %24, %32 ]
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = zext i32 %24 to i64
  %48 = load i64, ptr %3, align 8
  %49 = add i64 %48, %47
  store i64 %49, ptr %3, align 8
  br label %50

50:                                               ; preds = %46, %43, %31, %4
  %51 = phi i32 [ %24, %46 ], [ 0, %4 ], [ -14, %43 ], [ -14, %31 ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %5) #21
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @write_gssp(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) #2 {
  %5 = alloca [20 x i8], align 1
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 47
  %10 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #21
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(20) %5, i8 0, i32 20, i1 false), !annotation !16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #21
  store i32 0, ptr %6, align 4, !annotation !16
  %11 = load i64, ptr %3, align 8
  %12 = icmp ne i64 %11, 0
  %13 = icmp ugt i32 %2, 19
  %14 = or i1 %13, %12
  br i1 %14, label %46, label %15

15:                                               ; preds = %4
  %16 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %2, i32 -1090519040) #25, !srcloc !55
  %17 = extractvalue { i32, i32 } %16, 0
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %26, !prof !14

19:                                               ; preds = %15
  %20 = tail call ptr @llvm.thread.pointer() #21
  %21 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 3
  %22 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %21) #26, !srcloc !52
  %23 = and i32 %22, -13
  %24 = or i32 %23, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %24) #21, !srcloc !53
  tail call void asm sideeffect "isb ", "~{memory}"() #21, !srcloc !54
  %25 = call i32 @arm_copy_from_user(ptr noundef nonnull %5, ptr noundef %1, i32 noundef %2) #21
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %22) #21, !srcloc !53
  call void asm sideeffect "isb ", "~{memory}"() #21, !srcloc !54
  br label %26

26:                                               ; preds = %19, %15
  %27 = phi i32 [ %25, %19 ], [ %2, %15 ]
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29, !prof !14

29:                                               ; preds = %26
  %30 = sub i32 %2, %27
  %31 = getelementptr i8, ptr %5, i32 %30
  call void @llvm.memset.p0.i32(ptr align 1 %31, i8 0, i32 %27, i1 false) #21
  br label %46

32:                                               ; preds = %26
  %33 = getelementptr [20 x i8], ptr %5, i32 0, i32 %2
  store i8 0, ptr %33, align 1
  %34 = call i32 @_kstrtoul(ptr noundef nonnull %5, i32 noundef 0, ptr noundef nonnull %6) #21
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %32
  %37 = load i32, ptr %6, align 4
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %46

39:                                               ; preds = %36
  %40 = call i32 @set_gssp_clnt(ptr noundef %10) #21
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = call fastcc i32 @set_gss_proxy(ptr noundef %10, i32 noundef 1)
  %44 = icmp eq i32 %43, 0
  %45 = select i1 %44, i32 %2, i32 %43
  br label %46

46:                                               ; preds = %42, %39, %36, %32, %29, %4
  %47 = phi i32 [ -22, %4 ], [ %34, %32 ], [ -22, %36 ], [ %40, %39 ], [ %45, %42 ], [ -14, %29 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #21
  ret i32 %47
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #17

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #18

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_gssp_clnt(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cache_purge(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cache_unregister_net(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_gssp_clnt(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #9

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { argmemonly nofree nounwind willreturn writeonly }
attributes #11 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #12 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #17 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #18 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #19 = { argmemonly nofree nounwind readonly willreturn }
attributes #20 = { nounwind allocsize(2) }
attributes #21 = { nounwind }
attributes #22 = { cold nounwind }
attributes #23 = { nounwind allocsize(0) }
attributes #24 = { nounwind readonly willreturn }
attributes #25 = { nounwind readnone }
attributes #26 = { nounwind readonly }

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
!8 = !{i64 2149371609}
!9 = !{i64 2149371826}
!10 = !{i64 804233, i64 2148294204, i64 2148294230, i64 2148294277, i64 2148294299, i64 2148294327, i64 2148294347}
!11 = !{i64 2148305619, i64 2148305645, i64 2148305674, i64 2148305708, i64 2148305739, i64 2148305762}
!12 = !{i64 2148407299}
!13 = !{i64 2148309434, i64 2148309466, i64 2148309495, i64 2148309529, i64 2148309560, i64 2148309583}
!14 = !{!"branch_weights", i32 2000, i32 1}
!15 = !{i64 2149322189}
!16 = !{!"auto-init"}
!17 = !{i64 2148406298}
!18 = !{i64 2148308660, i64 2148308692, i64 2148308721, i64 2148308755, i64 2148308786, i64 2148308809}
!19 = !{i64 2148406501}
!20 = !{i64 2156571619}
!21 = !{i64 815607, i64 815628, i64 815651, i64 815670, i64 815689}
!22 = !{i64 2156571998}
!23 = !{i64 2154125197}
!24 = !{i64 2154125423}
!25 = !{i64 2148442937}
!26 = !{i64 2148317602, i64 2148317636, i64 2148317670, i64 2148317704, i64 2148317738, i64 2148317774, i64 2148317797}
!27 = !{i64 2148443142}
!28 = !{i64 2154086276}
!29 = !{i64 2154086446}
!30 = !{i64 2154103534}
!31 = !{i64 2154103736}
!32 = !{i64 2154053184}
!33 = !{i64 2154053360}
!34 = !{i64 2148307077, i64 2148307109, i64 2148307138, i64 2148307172, i64 2148307203, i64 2148307226}
!35 = !{!"branch_weights", i32 1, i32 2000}
!36 = !{i64 2154142813}
!37 = !{i64 2154142989}
!38 = !{i64 2154251079}
!39 = !{i64 2154251259}
!40 = !{i64 2148972837}
!41 = !{i64 2148968661}
!42 = !{i64 2148968736, i64 2148968763, i64 2148968810, i64 2148968832, i64 2148968860, i64 2148968880}
!43 = !{i64 2148995840}
!44 = !{i64 2154285454}
!45 = !{i64 2154285650}
!46 = !{i64 2154268251}
!47 = !{i64 2154268429}
!48 = !{i64 2154069912}
!49 = !{i64 2154070082}
!50 = !{i64 2156517422, i64 2156517920, i64 2156517459, i64 2156517515, i64 2156517549, i64 2156517573, i64 2156517614, i64 2156517635, i64 2156517663, i64 2156517697}
!51 = !{i64 2151872953, i64 2151872978}
!52 = !{i64 4368487}
!53 = !{i64 4368684}
!54 = !{i64 2151853963}
!55 = !{i64 2151872375, i64 2151872400}
