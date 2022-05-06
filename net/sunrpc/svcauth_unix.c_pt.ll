; ModuleID = '/llk/IR/net/sunrpc/svcauth_unix.c_pt.bc'
source_filename = "../net/sunrpc/svcauth_unix.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unix_domain_find:\09\09\09\09\09"
module asm "\09.asciz \09\22unix_domain_find\22\09\09\09\09\09"
module asm "__kstrtabns_unix_domain_find:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_svcauth_unix_purge:\09\09\09\09\09"
module asm "\09.asciz \09\22svcauth_unix_purge\22\09\09\09\09\09"
module asm "__kstrtabns_svcauth_unix_purge:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_svcauth_unix_set_client:\09\09\09\09\09"
module asm "\09.asciz \09\22svcauth_unix_set_client\22\09\09\09\09\09"
module asm "__kstrtabns_svcauth_unix_set_client:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.auth_ops = type { ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.cache_detail = type { ptr, i32, ptr, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, %struct.list_head, i64, i32, %struct.list_head, %struct.atomic_t, i64, i64, %union.anon.141, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%union.anon.141 = type { ptr }
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
%struct.svc_xprt = type { ptr, ptr, %struct.kref, %struct.list_head, %struct.list_head, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.mutex, %struct.spinlock, ptr, %struct.list_head, %struct.__kernel_sockaddr_storage, i32, %struct.__kernel_sockaddr_storage, i32, [58 x i8], %struct.list_head, ptr, ptr, ptr, ptr }
%struct.__kernel_sockaddr_storage = type { %union.anon.120 }
%union.anon.120 = type { ptr, [124 x i8] }
%struct.cache_head = type { %struct.hlist_node, i64, i64, %struct.kref, i32 }
%struct.unix_gid = type { %struct.cache_head, %struct.kuid_t, ptr, %struct.callback_head }
%struct.kuid_t = type { i32 }
%struct.ip_map = type { %struct.cache_head, [8 x i8], %struct.in6_addr, ptr, %struct.callback_head }
%struct.in6_addr = type { %union.anon.69 }
%union.anon.69 = type { [4 x i32] }
%struct.timespec64 = type { i64, i32 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.svc_rqst = type { %struct.list_head, %struct.callback_head, ptr, %struct.__kernel_sockaddr_storage, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, ptr, ptr, %struct.svc_cred, ptr, ptr, i32, %struct.xdr_buf, %struct.xdr_stream, %struct.xdr_stream, ptr, %struct.xdr_buf, [260 x ptr], ptr, ptr, ptr, %struct.pagevec, [259 x %struct.kvec], [259 x %struct.bio_vec], i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i32, i32, i32, i64, %struct.cache_req, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, ptr }
%struct.svc_cred = type { %struct.kuid_t, %struct.kgid_t, ptr, i32, ptr, ptr, ptr, ptr }
%struct.xdr_stream = type { ptr, ptr, ptr, ptr, %struct.kvec, ptr, i32, ptr }
%struct.kvec = type { ptr, i32 }
%struct.xdr_buf = type { [1 x %struct.kvec], [1 x %struct.kvec], ptr, ptr, i32, i32, i32, i32, i32 }
%struct.pagevec = type { i8, i8, [15 x ptr] }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.cache_req = type { ptr, i32 }
%struct.svc_program = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.142 = type { %struct.sockaddr_in6 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }

@svcauth_unix = dso_local global %struct.auth_ops { ptr @.str.1, ptr null, i32 1, ptr @svcauth_unix_accept, ptr @svcauth_unix_release, ptr @svcauth_unix_domain_release, ptr @svcauth_unix_set_client }, align 4
@__kstrtab_unix_domain_find = external dso_local constant [0 x i8], align 1
@__kstrtabns_unix_domain_find = external dso_local constant [0 x i8], align 1
@__ksymtab_unix_domain_find = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unix_domain_find to i32), ptr @__kstrtab_unix_domain_find, ptr @__kstrtabns_unix_domain_find }, section "___ksymtab_gpl+unix_domain_find", align 4
@sunrpc_net_id = external dso_local local_unnamed_addr global i32, align 4
@__kstrtab_svcauth_unix_purge = external dso_local constant [0 x i8], align 1
@__kstrtabns_svcauth_unix_purge = external dso_local constant [0 x i8], align 1
@__ksymtab_svcauth_unix_purge = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @svcauth_unix_purge to i32), ptr @__kstrtab_svcauth_unix_purge, ptr @__kstrtabns_svcauth_unix_purge }, section "___ksymtab_gpl+svcauth_unix_purge", align 4
@unix_gid_cache_template = internal constant %struct.cache_detail { ptr null, i32 256, ptr null, %struct.spinlock zeroinitializer, ptr @.str.2, ptr @unix_gid_put, ptr @unix_gid_upcall, ptr @unix_gid_request, ptr @unix_gid_parse, ptr @unix_gid_show, ptr null, ptr @unix_gid_alloc, ptr null, ptr @unix_gid_match, ptr @unix_gid_init, ptr @unix_gid_update, i64 0, %struct.list_head zeroinitializer, i64 0, i32 0, %struct.list_head zeroinitializer, %struct.atomic_t zeroinitializer, i64 0, i64 0, %union.anon.141 zeroinitializer, ptr null }, align 8
@__kstrtab_svcauth_unix_set_client = external dso_local constant [0 x i8], align 1
@__kstrtabns_svcauth_unix_set_client = external dso_local constant [0 x i8], align 1
@__ksymtab_svcauth_unix_set_client = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @svcauth_unix_set_client to i32), ptr @__kstrtab_svcauth_unix_set_client, ptr @__kstrtabns_svcauth_unix_set_client }, section "___ksymtab_gpl+svcauth_unix_set_client", align 4
@.str = private unnamed_addr constant [5 x i8] c"null\00", align 1
@svcauth_null = dso_local local_unnamed_addr global %struct.auth_ops { ptr @.str, ptr null, i32 0, ptr @svcauth_null_accept, ptr @svcauth_null_release, ptr null, ptr @svcauth_unix_set_client }, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"unix\00", align 1
@ip_map_cache_template = internal constant %struct.cache_detail { ptr null, i32 256, ptr null, %struct.spinlock zeroinitializer, ptr @.str.8, ptr @ip_map_put, ptr @ip_map_upcall, ptr @ip_map_request, ptr @ip_map_parse, ptr @ip_map_show, ptr null, ptr @ip_map_alloc, ptr null, ptr @ip_map_match, ptr @ip_map_init, ptr @update, i64 0, %struct.list_head zeroinitializer, i64 0, i32 0, %struct.list_head zeroinitializer, %struct.atomic_t zeroinitializer, i64 0, i64 0, %union.anon.141 zeroinitializer, ptr null }, align 8
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"auth.unix.gid\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"#uid cnt: gids...\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"%u %d:\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@overflowuid = external dso_local local_unnamed_addr global i32, align 4
@overflowgid = external dso_local local_unnamed_addr global i32, align 4
@.str.8 = private unnamed_addr constant [13 x i8] c"auth.unix.ip\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"%pI4\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"%pI6\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"-no-domain-\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"#class IP domain\0A\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"%s %pI4 %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"%s %pI6 %s\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_svcauth_unix_purge, ptr @__ksymtab_svcauth_unix_set_client, ptr @__ksymtab_unix_domain_find], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @unix_domain_find(ptr noundef %0) #0 {
  %2 = tail call ptr @auth_domain_find(ptr noundef %0) #16
  %3 = icmp eq ptr %2, null
  br i1 %3, label %14, label %8

4:                                                ; preds = %23
  %5 = icmp eq ptr %25, %16
  br i1 %5, label %8, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.auth_domain, ptr %16, i32 0, i32 4
  tail call void @call_rcu(ptr noundef %7, ptr noundef nonnull @svcauth_unix_domain_release_rcu) #16
  br label %8

8:                                                ; preds = %6, %4, %1
  %9 = phi ptr [ %25, %6 ], [ %25, %4 ], [ %2, %1 ]
  %10 = getelementptr inbounds %struct.auth_domain, ptr %9, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, @svcauth_unix
  br i1 %12, label %27, label %13

13:                                               ; preds = %8
  tail call void @auth_domain_put(ptr noundef nonnull %9) #16
  br label %27

14:                                               ; preds = %23, %1
  %15 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %16 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3264, i32 noundef 28) #17
  %17 = icmp eq ptr %16, null
  br i1 %17, label %27, label %18

18:                                               ; preds = %14
  store volatile i32 1, ptr %16, align 8
  %19 = tail call noalias ptr @kstrdup(ptr noundef %0, i32 noundef 3264) #16
  %20 = getelementptr inbounds %struct.auth_domain, ptr %16, i32 0, i32 2
  store ptr %19, ptr %20, align 4
  %21 = icmp eq ptr %19, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  tail call void @kfree(ptr noundef nonnull %16) #16
  br label %27

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.auth_domain, ptr %16, i32 0, i32 3
  store ptr @svcauth_unix, ptr %24, align 8
  %25 = tail call ptr @auth_domain_lookup(ptr noundef %0, ptr noundef nonnull %16) #16
  %26 = icmp eq ptr %25, null
  br i1 %26, label %14, label %4

27:                                               ; preds = %22, %14, %13, %8
  %28 = phi ptr [ null, %13 ], [ null, %22 ], [ %9, %8 ], [ null, %14 ]
  ret ptr %28
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @auth_domain_find(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @svcauth_unix_domain_release(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.auth_domain, ptr %0, i32 0, i32 4
  tail call void @call_rcu(ptr noundef %2, ptr noundef nonnull @svcauth_unix_domain_release_rcu) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @auth_domain_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @auth_domain_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @svcauth_unix_purge(ptr noundef %0) #0 {
  %2 = load i32, ptr @sunrpc_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !8
  %3 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 37
  %4 = load volatile ptr, ptr %3, align 64
  %5 = getelementptr [0 x ptr], ptr %4, i32 0, i32 %2
  %6 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !9
  %7 = getelementptr inbounds %struct.sunrpc_net, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  tail call void @cache_purge(ptr noundef %8) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cache_purge(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @svcauth_unix_info_release(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.svc_xprt, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %35, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.svc_xprt, ptr %0, i32 0, i32 19
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr @sunrpc_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !8
  %9 = getelementptr inbounds %struct.net, ptr %7, i32 0, i32 37
  %10 = load volatile ptr, ptr %9, align 64
  %11 = getelementptr [0 x ptr], ptr %10, i32 0, i32 %8
  %12 = load ptr, ptr %11, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !9
  %13 = getelementptr inbounds %struct.sunrpc_net, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.cache_head, ptr %3, i32 0, i32 3
  %16 = load volatile i32, ptr %15, align 4
  %17 = icmp ult i32 %16, 3
  br i1 %17, label %18, label %25

18:                                               ; preds = %5
  %19 = getelementptr inbounds %struct.cache_head, ptr %3, i32 0, i32 1
  %20 = load i64, ptr %19, align 8
  %21 = getelementptr inbounds %struct.cache_detail, ptr %14, i32 0, i32 18
  %22 = load i64, ptr %21, align 8
  %23 = icmp slt i64 %20, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i64 %20, ptr %21, align 8
  br label %25

25:                                               ; preds = %24, %18, %5
  %26 = getelementptr inbounds %struct.cache_detail, ptr %14, i32 0, i32 5
  %27 = load ptr, ptr %26, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %15) #16, !srcloc !11
  %28 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %15, ptr %15, i32 1, ptr elementtype(i32) %15) #16, !srcloc !12
  %29 = extractvalue { i32, i32, i32 } %28, 0
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %34, label %31

31:                                               ; preds = %25
  %32 = icmp sgt i32 %29, 0
  br i1 %32, label %35, label %33, !prof !13

33:                                               ; preds = %31
  tail call void @refcount_warn_saturate(ptr noundef %15, i32 noundef 3) #16
  br label %35

34:                                               ; preds = %25
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !14
  tail call void %27(ptr noundef %15) #16
  br label %35

35:                                               ; preds = %34, %33, %31, %1
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @cache_put(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.cache_head, ptr %0, i32 0, i32 3
  %4 = load volatile i32, ptr %3, align 4
  %5 = icmp ult i32 %4, 3
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.cache_head, ptr %0, i32 0, i32 1
  %8 = load i64, ptr %7, align 8
  %9 = getelementptr inbounds %struct.cache_detail, ptr %1, i32 0, i32 18
  %10 = load i64, ptr %9, align 8
  %11 = icmp slt i64 %8, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %6
  store i64 %8, ptr %9, align 8
  br label %13

13:                                               ; preds = %12, %6, %2
  %14 = getelementptr inbounds %struct.cache_detail, ptr %1, i32 0, i32 5
  %15 = load ptr, ptr %14, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %3) #16, !srcloc !11
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %3, ptr %3, i32 1, ptr elementtype(i32) %3) #16, !srcloc !12
  %17 = extractvalue { i32, i32, i32 } %16, 0
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %22, label %19

19:                                               ; preds = %13
  %20 = icmp sgt i32 %17, 0
  br i1 %20, label %23, label %21, !prof !13

21:                                               ; preds = %19
  tail call void @refcount_warn_saturate(ptr noundef %3, i32 noundef 3) #16
  br label %23

22:                                               ; preds = %13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !14
  tail call void %15(ptr noundef %3) #16
  br label %23

23:                                               ; preds = %22, %21, %19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @unix_gid_cache_create(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @sunrpc_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !8
  %3 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 37
  %4 = load volatile ptr, ptr %3, align 64
  %5 = getelementptr [0 x ptr], ptr %4, i32 0, i32 %2
  %6 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !9
  %7 = tail call ptr @cache_create_net(ptr noundef nonnull @unix_gid_cache_template, ptr noundef %0) #16
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = ptrtoint ptr %7 to i32
  br label %17

11:                                               ; preds = %1
  %12 = tail call i32 @cache_register_net(ptr noundef %7, ptr noundef %0) #16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  tail call void @cache_destroy_net(ptr noundef %7, ptr noundef %0) #16
  br label %17

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.sunrpc_net, ptr %6, i32 0, i32 2
  store ptr %7, ptr %16, align 4
  br label %17

17:                                               ; preds = %15, %14, %9
  %18 = phi i32 [ %10, %9 ], [ %12, %14 ], [ 0, %15 ]
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cache_create_net(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cache_register_net(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cache_destroy_net(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @unix_gid_cache_destroy(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @sunrpc_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !8
  %3 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 37
  %4 = load volatile ptr, ptr %3, align 64
  %5 = getelementptr [0 x ptr], ptr %4, i32 0, i32 %2
  %6 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !9
  %7 = getelementptr inbounds %struct.sunrpc_net, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  store ptr null, ptr %7, align 4
  tail call void @cache_purge(ptr noundef %8) #16
  tail call void @cache_unregister_net(ptr noundef %8, ptr noundef %0) #16
  tail call void @cache_destroy_net(ptr noundef %8, ptr noundef %0) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cache_unregister_net(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @svcauth_unix_set_client(ptr noundef %0) #0 {
  %2 = alloca %struct.unix_gid, align 8
  %3 = alloca %struct.ip_map, align 8
  %4 = alloca %struct.timespec64, align 8
  %5 = alloca %struct.sockaddr_in6, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %5, i8 0, i32 28, i1 false), !annotation !15
  %6 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 11
  %7 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.svc_xprt, ptr %8, i32 0, i32 19
  %10 = load ptr, ptr %9, align 4
  %11 = load i32, ptr @sunrpc_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !8
  %12 = getelementptr inbounds %struct.net, ptr %10, i32 0, i32 37
  %13 = load volatile ptr, ptr %12, align 64
  %14 = getelementptr [0 x ptr], ptr %13, i32 0, i32 %11
  %15 = load ptr, ptr %14, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !9
  %16 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 3
  %17 = load i16, ptr %16, align 4
  switch i16 %17, label %25 [
    i16 2, label %18
    i16 10, label %26
  ]

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 3, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.sockaddr_in6, ptr %5, i32 0, i32 3
  store i32 0, ptr %21, align 4
  %22 = getelementptr inbounds %struct.sockaddr_in6, ptr %5, i32 0, i32 3, i32 0, i32 0, i32 1
  store i32 0, ptr %22, align 4
  %23 = getelementptr inbounds %struct.sockaddr_in6, ptr %5, i32 0, i32 3, i32 0, i32 0, i32 2
  store i32 -65536, ptr %23, align 4
  %24 = getelementptr inbounds %struct.sockaddr_in6, ptr %5, i32 0, i32 3, i32 0, i32 0, i32 3
  store i32 %20, ptr %24, align 4
  br label %26

25:                                               ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/sunrpc/svcauth_unix.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 679, 0\0A.popsection", ""() #16, !srcloc !16
  unreachable

26:                                               ; preds = %18, %1
  %27 = phi ptr [ %5, %18 ], [ %16, %1 ]
  %28 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 43
  store ptr null, ptr %28, align 8
  %29 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 30
  %30 = load i32, ptr %29, align 8
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %268, label %32

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 38
  store i32 16777216, ptr %33, align 4
  %34 = getelementptr inbounds %struct.svc_xprt, ptr %8, i32 0, i32 5
  %35 = load volatile i32, ptr %34, align 4
  %36 = and i32 %35, 2048
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %104, label %38

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.svc_xprt, ptr %8, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %39) #16
  %40 = getelementptr inbounds %struct.svc_xprt, ptr %8, i32 0, i32 11
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %101, label %43

43:                                               ; preds = %38
  %44 = load ptr, ptr %9, align 4
  %45 = load i32, ptr @sunrpc_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !8
  %46 = getelementptr inbounds %struct.net, ptr %44, i32 0, i32 37
  %47 = load volatile ptr, ptr %46, align 64
  %48 = getelementptr [0 x ptr], ptr %47, i32 0, i32 %45
  %49 = load ptr, ptr %48, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !9
  %50 = getelementptr inbounds %struct.sunrpc_net, ptr %49, i32 0, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.cache_head, ptr %41, i32 0, i32 1
  %53 = load i64, ptr %52, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i32 16, i1 false) #16, !annotation !15
  call void @getboottime64(ptr noundef nonnull %4) #16
  %54 = call i64 @ktime_get_real_seconds() #16
  %55 = load i64, ptr %4, align 8
  %56 = sub i64 %54, %55
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #16
  %57 = icmp slt i64 %53, %56
  br i1 %57, label %69, label %58

58:                                               ; preds = %43
  %59 = getelementptr inbounds %struct.cache_head, ptr %41, i32 0, i32 4
  %60 = load volatile i32, ptr %59, align 4
  %61 = and i32 %60, 1
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %92, label %63

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.cache_detail, ptr %51, i32 0, i32 16
  %65 = load i64, ptr %64, align 8
  %66 = getelementptr inbounds %struct.cache_head, ptr %41, i32 0, i32 2
  %67 = load i64, ptr %66, align 8
  %68 = icmp slt i64 %65, %67
  br i1 %68, label %92, label %69

69:                                               ; preds = %63, %43
  store ptr null, ptr %40, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !17
  %70 = load i16, ptr %39, align 4
  %71 = add i16 %70, 1
  store i16 %71, ptr %39, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !18
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !19
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !20
  %72 = load ptr, ptr %50, align 4
  %73 = getelementptr inbounds %struct.cache_head, ptr %41, i32 0, i32 3
  %74 = load volatile i32, ptr %73, align 4
  %75 = icmp ult i32 %74, 3
  br i1 %75, label %76, label %82

76:                                               ; preds = %69
  %77 = load i64, ptr %52, align 8
  %78 = getelementptr inbounds %struct.cache_detail, ptr %72, i32 0, i32 18
  %79 = load i64, ptr %78, align 8
  %80 = icmp slt i64 %77, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  store i64 %77, ptr %78, align 8
  br label %82

82:                                               ; preds = %81, %76, %69
  %83 = getelementptr inbounds %struct.cache_detail, ptr %72, i32 0, i32 5
  %84 = load ptr, ptr %83, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !10
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %73) #16, !srcloc !11
  %85 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %73, ptr %73, i32 1, ptr elementtype(i32) %73) #16, !srcloc !12
  %86 = extractvalue { i32, i32, i32 } %85, 0
  %87 = icmp eq i32 %86, 1
  br i1 %87, label %91, label %88

88:                                               ; preds = %82
  %89 = icmp sgt i32 %86, 0
  br i1 %89, label %104, label %90, !prof !13

90:                                               ; preds = %88
  call void @refcount_warn_saturate(ptr noundef %73, i32 noundef 3) #16
  br label %104

91:                                               ; preds = %82
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !14
  call void %84(ptr noundef %73) #16
  br label %104

92:                                               ; preds = %63, %58
  %93 = getelementptr inbounds %struct.cache_head, ptr %41, i32 0, i32 3
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %93) #16, !srcloc !11
  %94 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %93, ptr %93, i32 1, ptr elementtype(i32) %93) #16, !srcloc !21
  %95 = extractvalue { i32, i32, i32 } %94, 0
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %139, label %97, !prof !22

97:                                               ; preds = %92
  %98 = add i32 %95, 1
  %99 = or i32 %98, %95
  %100 = icmp sgt i32 %99, -1
  br i1 %100, label %133, label %136, !prof !13

101:                                              ; preds = %38
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !17
  %102 = load i16, ptr %39, align 4
  %103 = add i16 %102, 1
  store i16 %103, ptr %39, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !18
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !19
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !20
  br label %104

104:                                              ; preds = %101, %91, %90, %88, %32
  %105 = getelementptr inbounds %struct.sunrpc_net, ptr %15, i32 0, i32 1
  %106 = load ptr, ptr %105, align 4
  %107 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 7
  %108 = load ptr, ptr %107, align 4
  %109 = load ptr, ptr %108, align 4
  %110 = getelementptr inbounds %struct.svc_program, ptr %109, i32 0, i32 7
  %111 = load ptr, ptr %110, align 4
  %112 = getelementptr inbounds %struct.sockaddr_in6, ptr %27, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(72) %3, i8 0, i32 72, i1 false) #16, !annotation !15
  %113 = getelementptr inbounds %struct.ip_map, ptr %3, i32 0, i32 1
  %114 = call ptr @strcpy(ptr noundef %113, ptr noundef %111) #16
  %115 = getelementptr inbounds %struct.ip_map, ptr %3, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %115, ptr noundef align 4 dereferenceable(16) %112, i32 16, i1 false) #16
  %116 = call i64 @hashlen_string(ptr noundef null, ptr noundef %111) #18
  %117 = trunc i64 %116 to i32
  %118 = load i32, ptr %112, align 4
  %119 = getelementptr %struct.sockaddr_in6, ptr %27, i32 0, i32 3, i32 0, i32 0, i32 1
  %120 = load i32, ptr %119, align 4
  %121 = xor i32 %120, %118
  %122 = getelementptr %struct.sockaddr_in6, ptr %27, i32 0, i32 3, i32 0, i32 0, i32 2
  %123 = load i32, ptr %122, align 4
  %124 = xor i32 %121, %123
  %125 = getelementptr %struct.sockaddr_in6, ptr %27, i32 0, i32 3, i32 0, i32 0, i32 3
  %126 = load i32, ptr %125, align 4
  %127 = xor i32 %124, %126
  %128 = mul i32 %127, 1640531527
  %129 = xor i32 %128, %117
  %130 = lshr i32 %129, 24
  %131 = call ptr @sunrpc_cache_lookup_rcu(ptr noundef %106, ptr noundef nonnull %3, i32 noundef %130) #16
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #16
  %132 = icmp eq ptr %131, null
  br i1 %132, label %270, label %142

133:                                              ; preds = %97
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !17
  %134 = load i16, ptr %39, align 4
  %135 = add i16 %134, 1
  store i16 %135, ptr %39, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !18
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !19
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !20
  br label %142

136:                                              ; preds = %97
  call void @refcount_warn_saturate(ptr noundef %93, i32 noundef 1) #16
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !17
  %137 = load i16, ptr %39, align 4
  %138 = add i16 %137, 1
  store i16 %138, ptr %39, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !18
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !19
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !20
  br label %142

139:                                              ; preds = %92
  call void @refcount_warn_saturate(ptr noundef %93, i32 noundef 2) #16
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !17
  %140 = load i16, ptr %39, align 4
  %141 = add i16 %140, 1
  store i16 %141, ptr %39, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !18
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !19
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !20
  br label %142

142:                                              ; preds = %139, %136, %133, %104
  %143 = phi ptr [ %131, %104 ], [ %41, %133 ], [ %41, %136 ], [ %41, %139 ]
  %144 = getelementptr inbounds %struct.sunrpc_net, ptr %15, i32 0, i32 1
  %145 = load ptr, ptr %144, align 4
  %146 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 42
  %147 = call i32 @cache_check(ptr noundef %145, ptr noundef nonnull %143, ptr noundef %146) #16
  switch i32 %147, label %148 [
    i32 -110, label %270
    i32 -11, label %149
    i32 -2, label %150
    i32 0, label %151
  ]

148:                                              ; preds = %142
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/sunrpc/svcauth_unix.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 697, 0\0A.popsection", ""() #16, !srcloc !23
  unreachable

149:                                              ; preds = %142
  br label %270

150:                                              ; preds = %142
  br label %270

151:                                              ; preds = %142
  %152 = getelementptr inbounds %struct.ip_map, ptr %143, i32 0, i32 3
  %153 = load ptr, ptr %152, align 8
  store ptr %153, ptr %28, align 8
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %153) #16, !srcloc !11
  %154 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %153, ptr %153, i32 1, ptr elementtype(i32) %153) #16, !srcloc !21
  %155 = extractvalue { i32, i32, i32 } %154, 0
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %161, label %157, !prof !22

157:                                              ; preds = %151
  %158 = add i32 %155, 1
  %159 = or i32 %158, %155
  %160 = icmp sgt i32 %159, -1
  br i1 %160, label %163, label %161, !prof !13

161:                                              ; preds = %157, %151
  %162 = phi i32 [ 2, %151 ], [ 1, %157 ]
  call void @refcount_warn_saturate(ptr noundef %153, i32 noundef %162) #16
  br label %163

163:                                              ; preds = %161, %157
  %164 = load volatile i32, ptr %34, align 4
  %165 = and i32 %164, 2048
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %178, label %167

167:                                              ; preds = %163
  %168 = getelementptr inbounds %struct.svc_xprt, ptr %8, i32 0, i32 10
  call void @_raw_spin_lock(ptr noundef %168) #16
  %169 = getelementptr inbounds %struct.svc_xprt, ptr %8, i32 0, i32 11
  %170 = load ptr, ptr %169, align 4
  %171 = icmp eq ptr %170, null
  br i1 %171, label %172, label %173

172:                                              ; preds = %167
  store ptr %143, ptr %169, align 4
  br label %173

173:                                              ; preds = %172, %167
  %174 = phi ptr [ null, %172 ], [ %143, %167 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !17
  %175 = load i16, ptr %168, align 4
  %176 = add i16 %175, 1
  store i16 %176, ptr %168, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !18
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !19
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !20
  %177 = icmp eq ptr %174, null
  br i1 %177, label %208, label %178

178:                                              ; preds = %173, %163
  %179 = phi ptr [ %174, %173 ], [ %143, %163 ]
  %180 = load ptr, ptr %9, align 4
  %181 = load i32, ptr @sunrpc_net_id, align 4
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !8
  %182 = getelementptr inbounds %struct.net, ptr %180, i32 0, i32 37
  %183 = load volatile ptr, ptr %182, align 64
  %184 = getelementptr [0 x ptr], ptr %183, i32 0, i32 %181
  %185 = load ptr, ptr %184, align 4
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !9
  %186 = getelementptr inbounds %struct.sunrpc_net, ptr %185, i32 0, i32 1
  %187 = load ptr, ptr %186, align 4
  %188 = getelementptr inbounds %struct.cache_head, ptr %179, i32 0, i32 3
  %189 = load volatile i32, ptr %188, align 4
  %190 = icmp ult i32 %189, 3
  br i1 %190, label %191, label %198

191:                                              ; preds = %178
  %192 = getelementptr inbounds %struct.cache_head, ptr %179, i32 0, i32 1
  %193 = load i64, ptr %192, align 8
  %194 = getelementptr inbounds %struct.cache_detail, ptr %187, i32 0, i32 18
  %195 = load i64, ptr %194, align 8
  %196 = icmp slt i64 %193, %195
  br i1 %196, label %197, label %198

197:                                              ; preds = %191
  store i64 %193, ptr %194, align 8
  br label %198

198:                                              ; preds = %197, %191, %178
  %199 = getelementptr inbounds %struct.cache_detail, ptr %187, i32 0, i32 5
  %200 = load ptr, ptr %199, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !10
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %188) #16, !srcloc !11
  %201 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %188, ptr %188, i32 1, ptr elementtype(i32) %188) #16, !srcloc !12
  %202 = extractvalue { i32, i32, i32 } %201, 0
  %203 = icmp eq i32 %202, 1
  br i1 %203, label %207, label %204

204:                                              ; preds = %198
  %205 = icmp sgt i32 %202, 0
  br i1 %205, label %208, label %206, !prof !13

206:                                              ; preds = %204
  call void @refcount_warn_saturate(ptr noundef %188, i32 noundef 3) #16
  br label %208

207:                                              ; preds = %198
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !14
  call void %200(ptr noundef %188) #16
  br label %208

208:                                              ; preds = %207, %206, %204, %173
  %209 = load i32, ptr %6, align 4
  %210 = load ptr, ptr %7, align 8
  %211 = getelementptr inbounds %struct.svc_xprt, ptr %210, i32 0, i32 19
  %212 = load ptr, ptr %211, align 4
  %213 = load i32, ptr @sunrpc_net_id, align 4
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !8
  %214 = getelementptr inbounds %struct.net, ptr %212, i32 0, i32 37
  %215 = load volatile ptr, ptr %214, align 64
  %216 = getelementptr [0 x ptr], ptr %215, i32 0, i32 %213
  %217 = load ptr, ptr %216, align 4
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !9
  %218 = getelementptr inbounds %struct.sunrpc_net, ptr %217, i32 0, i32 2
  %219 = load ptr, ptr %218, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %2) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(48) %2, i8 0, i32 48, i1 false) #16, !annotation !15
  %220 = getelementptr inbounds %struct.unix_gid, ptr %2, i32 0, i32 1
  store i32 %209, ptr %220, align 8
  %221 = mul i32 %209, 1640531527
  %222 = lshr i32 %221, 24
  %223 = call ptr @sunrpc_cache_lookup_rcu(ptr noundef %219, ptr noundef nonnull %2, i32 noundef %222) #16
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #16
  %224 = icmp eq ptr %223, null
  br i1 %224, label %255, label %225

225:                                              ; preds = %208
  %226 = load ptr, ptr %218, align 4
  %227 = call i32 @cache_check(ptr noundef %226, ptr noundef nonnull %223, ptr noundef %146) #16
  switch i32 %227, label %254 [
    i32 -2, label %255
    i32 -110, label %228
    i32 0, label %229
  ]

228:                                              ; preds = %225
  br label %255

229:                                              ; preds = %225
  %230 = getelementptr inbounds %struct.unix_gid, ptr %223, i32 0, i32 2
  %231 = load ptr, ptr %230, align 4
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %231) #16, !srcloc !11
  %232 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %231, ptr %231, i32 1, ptr elementtype(i32) %231) #16, !srcloc !24
  %233 = load ptr, ptr %218, align 4
  %234 = getelementptr inbounds %struct.cache_head, ptr %223, i32 0, i32 3
  %235 = load volatile i32, ptr %234, align 4
  %236 = icmp ult i32 %235, 3
  br i1 %236, label %237, label %244

237:                                              ; preds = %229
  %238 = getelementptr inbounds %struct.cache_head, ptr %223, i32 0, i32 1
  %239 = load i64, ptr %238, align 8
  %240 = getelementptr inbounds %struct.cache_detail, ptr %233, i32 0, i32 18
  %241 = load i64, ptr %240, align 8
  %242 = icmp slt i64 %239, %241
  br i1 %242, label %243, label %244

243:                                              ; preds = %237
  store i64 %239, ptr %240, align 8
  br label %244

244:                                              ; preds = %243, %237, %229
  %245 = getelementptr inbounds %struct.cache_detail, ptr %233, i32 0, i32 5
  %246 = load ptr, ptr %245, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !10
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %234) #16, !srcloc !11
  %247 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %234, ptr %234, i32 1, ptr elementtype(i32) %234) #16, !srcloc !12
  %248 = extractvalue { i32, i32, i32 } %247, 0
  %249 = icmp eq i32 %248, 1
  br i1 %249, label %253, label %250

250:                                              ; preds = %244
  %251 = icmp sgt i32 %248, 0
  br i1 %251, label %255, label %252, !prof !13

252:                                              ; preds = %250
  call void @refcount_warn_saturate(ptr noundef %234, i32 noundef 3) #16
  br label %255

253:                                              ; preds = %244
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !14
  call void %246(ptr noundef %234) #16
  br label %255

254:                                              ; preds = %225
  br label %255

255:                                              ; preds = %254, %253, %252, %250, %228, %225, %208
  %256 = phi ptr [ inttoptr (i32 -11 to ptr), %254 ], [ inttoptr (i32 -108 to ptr), %228 ], [ inttoptr (i32 -11 to ptr), %208 ], [ inttoptr (i32 -2 to ptr), %225 ], [ %231, %250 ], [ %231, %252 ], [ %231, %253 ]
  %257 = ptrtoint ptr %256 to i32
  switch i32 %257, label %259 [
    i32 -11, label %270
    i32 -108, label %258
    i32 -2, label %268
  ]

258:                                              ; preds = %255
  br label %270

259:                                              ; preds = %255
  %260 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 11, i32 2
  %261 = load ptr, ptr %260, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !25
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %261) #16, !srcloc !11
  %262 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %261, ptr %261, i32 1, ptr elementtype(i32) %261) #16, !srcloc !26
  %263 = extractvalue { i32, i32 } %262, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !27
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %265, label %267

265:                                              ; preds = %259
  %266 = load ptr, ptr %260, align 4
  call void @groups_free(ptr noundef %266) #16
  br label %267

267:                                              ; preds = %265, %259
  store ptr %256, ptr %260, align 4
  br label %268

268:                                              ; preds = %267, %255, %26
  %269 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 38
  store i32 0, ptr %269, align 4
  br label %270

270:                                              ; preds = %268, %258, %255, %150, %149, %142, %104
  %271 = phi i32 [ 5, %268 ], [ 7, %258 ], [ 8, %150 ], [ 6, %149 ], [ 8, %104 ], [ 7, %142 ], [ 6, %255 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #16
  ret i32 %271
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cache_check(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @groups_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @svcauth_null_accept(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 15
  %3 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 19
  %4 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 11
  %5 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 15, i32 0, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp ult i32 %6, 12
  br i1 %7, label %45, label %8

8:                                                ; preds = %1
  %9 = load ptr, ptr %2, align 4
  %10 = getelementptr i32, ptr %9, i32 1
  %11 = load i32, ptr %9, align 4
  store ptr %10, ptr %2, align 4
  %12 = add i32 %6, -4
  store i32 %12, ptr %5, align 4
  %13 = icmp eq i32 %11, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 38
  store i32 16777216, ptr %15, align 4
  br label %45

16:                                               ; preds = %8
  %17 = getelementptr i32, ptr %9, i32 2
  %18 = load i32, ptr %10, align 4
  store ptr %17, ptr %2, align 4
  %19 = add i32 %6, -8
  store i32 %19, ptr %5, align 4
  %20 = icmp eq i32 %18, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = getelementptr i32, ptr %9, i32 3
  %23 = load i32, ptr %17, align 4
  store ptr %22, ptr %2, align 4
  %24 = add i32 %6, -12
  store i32 %24, ptr %5, align 4
  %25 = icmp eq i32 %23, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %21, %16
  %27 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 38
  store i32 50331648, ptr %27, align 4
  br label %45

28:                                               ; preds = %21
  store i32 -1, ptr %4, align 4
  %29 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 11, i32 1
  store i32 -1, ptr %29, align 4
  %30 = tail call ptr @groups_alloc(i32 noundef 0) #16
  %31 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 11, i32 2
  store ptr %30, ptr %31, align 4
  %32 = icmp eq ptr %30, null
  br i1 %32, label %45, label %33

33:                                               ; preds = %28
  %34 = load ptr, ptr %3, align 4
  %35 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 19, i32 0, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr i8, ptr %34, i32 %36
  store i32 0, ptr %37, align 4
  %38 = load i32, ptr %35, align 4
  %39 = add i32 %38, 4
  store i32 %39, ptr %35, align 4
  %40 = load ptr, ptr %3, align 4
  %41 = getelementptr i8, ptr %40, i32 %39
  store i32 0, ptr %41, align 4
  %42 = load i32, ptr %35, align 4
  %43 = add i32 %42, 4
  store i32 %43, ptr %35, align 4
  %44 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 11, i32 3
  store i32 0, ptr %44, align 4
  br label %45

45:                                               ; preds = %33, %28, %26, %14, %1
  %46 = phi i32 [ 8, %14 ], [ 8, %26 ], [ 5, %33 ], [ 1, %1 ], [ 7, %28 ]
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @svcauth_null_release(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 43
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @auth_domain_put(ptr noundef nonnull %3) #16
  br label %6

6:                                                ; preds = %5, %1
  store ptr null, ptr %2, align 8
  %7 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 11, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !25
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %8) #16, !srcloc !11
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %8, ptr nonnull %8, i32 1, ptr nonnull elementtype(i32) %8) #16, !srcloc !26
  %12 = extractvalue { i32, i32 } %11, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !27
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = load ptr, ptr %7, align 4
  tail call void @groups_free(ptr noundef %15) #16
  br label %16

16:                                               ; preds = %14, %10, %6
  store ptr null, ptr %7, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @svcauth_unix_accept(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 15
  %3 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 19
  %4 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 11
  %5 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 15, i32 0, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, -12
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %97, label %9

9:                                                ; preds = %1
  %10 = load ptr, ptr %2, align 4
  %11 = getelementptr i32, ptr %10, i32 2
  store ptr %11, ptr %2, align 4
  %12 = add i32 %6, -8
  store i32 %12, ptr %5, align 4
  %13 = getelementptr i32, ptr %10, i32 3
  %14 = load i32, ptr %11, align 4
  store ptr %13, ptr %2, align 4
  store i32 %7, ptr %5, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #16
  %16 = add i32 %15, 3
  %17 = lshr i32 %16, 2
  %18 = icmp ugt i32 %16, 259
  br i1 %18, label %95, label %19

19:                                               ; preds = %9
  %20 = add nsw i32 %15, 15
  %21 = and i32 %20, -4
  %22 = sub nsw i32 %7, %21
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %95, label %24

24:                                               ; preds = %19
  %25 = getelementptr i32, ptr %13, i32 %17
  store ptr %25, ptr %2, align 4
  %26 = and i32 %16, -4
  %27 = sub nsw i32 %7, %26
  store i32 %27, ptr %5, align 4
  %28 = getelementptr i32, ptr %25, i32 1
  %29 = load i32, ptr %25, align 4
  store ptr %28, ptr %2, align 4
  %30 = add nsw i32 %27, -4
  store i32 %30, ptr %5, align 4
  %31 = tail call i32 @llvm.bswap.i32(i32 %29) #16
  store i32 %31, ptr %4, align 4
  %32 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 11, i32 1
  %33 = getelementptr i32, ptr %28, i32 1
  %34 = load i32, ptr %28, align 4
  store ptr %33, ptr %2, align 4
  %35 = add nsw i32 %27, -8
  store i32 %35, ptr %5, align 4
  %36 = tail call i32 @llvm.bswap.i32(i32 %34) #16
  store i32 %36, ptr %32, align 4
  %37 = getelementptr i32, ptr %33, i32 1
  %38 = load i32, ptr %33, align 4
  store ptr %37, ptr %2, align 4
  %39 = add nsw i32 %27, -12
  store i32 %39, ptr %5, align 4
  %40 = tail call i32 @llvm.bswap.i32(i32 %38) #16
  %41 = icmp ugt i32 %40, 16
  br i1 %41, label %95, label %42

42:                                               ; preds = %24
  %43 = mul nsw i32 %40, -4
  %44 = add nsw i32 %22, -8
  %45 = add nsw i32 %44, %43
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %95, label %47

47:                                               ; preds = %42
  %48 = tail call ptr @groups_alloc(i32 noundef %40) #16
  %49 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 11, i32 2
  store ptr %48, ptr %49, align 4
  %50 = icmp eq ptr %48, null
  br i1 %50, label %97, label %51

51:                                               ; preds = %47
  %52 = icmp eq i32 %38, 0
  br i1 %52, label %68, label %53

53:                                               ; preds = %51
  %54 = call i32 @llvm.umax.i32(i32 %40, i32 1)
  br label %55

55:                                               ; preds = %55, %53
  %56 = phi ptr [ %48, %53 ], [ %67, %55 ]
  %57 = phi i32 [ 0, %53 ], [ %65, %55 ]
  %58 = load ptr, ptr %2, align 4
  %59 = getelementptr i32, ptr %58, i32 1
  %60 = load i32, ptr %58, align 4
  store ptr %59, ptr %2, align 4
  %61 = load i32, ptr %5, align 4
  %62 = add i32 %61, -4
  store i32 %62, ptr %5, align 4
  %63 = tail call i32 @llvm.bswap.i32(i32 %60) #16
  %64 = getelementptr %struct.group_info, ptr %56, i32 0, i32 2, i32 %57
  store i32 %63, ptr %64, align 4
  %65 = add nuw i32 %57, 1
  %66 = icmp eq i32 %65, %54
  %67 = load ptr, ptr %49, align 4
  br i1 %66, label %68, label %55

68:                                               ; preds = %55, %51
  %69 = phi ptr [ %48, %51 ], [ %67, %55 ]
  tail call void @groups_sort(ptr noundef %69) #16
  %70 = load ptr, ptr %2, align 4
  %71 = getelementptr i32, ptr %70, i32 1
  %72 = load i32, ptr %70, align 4
  store ptr %71, ptr %2, align 4
  %73 = load i32, ptr %5, align 4
  %74 = add i32 %73, -4
  store i32 %74, ptr %5, align 4
  %75 = icmp eq i32 %72, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %68
  %77 = getelementptr i32, ptr %70, i32 2
  %78 = load i32, ptr %71, align 4
  store ptr %77, ptr %2, align 4
  %79 = add i32 %73, -8
  store i32 %79, ptr %5, align 4
  %80 = icmp eq i32 %78, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %76, %68
  %82 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 38
  store i32 50331648, ptr %82, align 4
  br label %97

83:                                               ; preds = %76
  %84 = load ptr, ptr %3, align 4
  %85 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 19, i32 0, i32 0, i32 1
  %86 = load i32, ptr %85, align 4
  %87 = getelementptr i8, ptr %84, i32 %86
  store i32 0, ptr %87, align 4
  %88 = load i32, ptr %85, align 4
  %89 = add i32 %88, 4
  store i32 %89, ptr %85, align 4
  %90 = load ptr, ptr %3, align 4
  %91 = getelementptr i8, ptr %90, i32 %89
  store i32 0, ptr %91, align 4
  %92 = load i32, ptr %85, align 4
  %93 = add i32 %92, 4
  store i32 %93, ptr %85, align 4
  %94 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 11, i32 3
  store i32 1, ptr %94, align 4
  br label %97

95:                                               ; preds = %42, %24, %19, %9
  %96 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 38
  store i32 16777216, ptr %96, align 4
  br label %97

97:                                               ; preds = %95, %83, %81, %47, %1
  %98 = phi i32 [ 8, %95 ], [ 8, %81 ], [ 5, %83 ], [ 1, %1 ], [ 7, %47 ]
  ret i32 %98
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @svcauth_unix_release(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 43
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @auth_domain_put(ptr noundef nonnull %3) #16
  br label %6

6:                                                ; preds = %5, %1
  store ptr null, ptr %2, align 8
  %7 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 11, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !25
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %8) #16, !srcloc !11
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %8, ptr nonnull %8, i32 1, ptr nonnull elementtype(i32) %8) #16, !srcloc !26
  %12 = extractvalue { i32, i32 } %11, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !27
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = load ptr, ptr %7, align 4
  tail call void @groups_free(ptr noundef %15) #16
  br label %16

16:                                               ; preds = %14, %10, %6
  store ptr null, ptr %7, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ip_map_cache_create(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @sunrpc_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !8
  %3 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 37
  %4 = load volatile ptr, ptr %3, align 64
  %5 = getelementptr [0 x ptr], ptr %4, i32 0, i32 %2
  %6 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !9
  %7 = tail call ptr @cache_create_net(ptr noundef nonnull @ip_map_cache_template, ptr noundef %0) #16
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = ptrtoint ptr %7 to i32
  br label %17

11:                                               ; preds = %1
  %12 = tail call i32 @cache_register_net(ptr noundef %7, ptr noundef %0) #16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  tail call void @cache_destroy_net(ptr noundef %7, ptr noundef %0) #16
  br label %17

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.sunrpc_net, ptr %6, i32 0, i32 1
  store ptr %7, ptr %16, align 4
  br label %17

17:                                               ; preds = %15, %14, %9
  %18 = phi i32 [ %10, %9 ], [ %12, %14 ], [ 0, %15 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ip_map_cache_destroy(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @sunrpc_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !8
  %3 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 37
  %4 = load volatile ptr, ptr %3, align 64
  %5 = getelementptr [0 x ptr], ptr %4, i32 0, i32 %2
  %6 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !9
  %7 = getelementptr inbounds %struct.sunrpc_net, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  store ptr null, ptr %7, align 4
  tail call void @cache_purge(ptr noundef %8) #16
  tail call void @cache_unregister_net(ptr noundef %8, ptr noundef %0) #16
  tail call void @cache_destroy_net(ptr noundef %8, ptr noundef %0) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @svcauth_unix_domain_release_rcu(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -20
  %3 = getelementptr i8, ptr %0, i32 -8
  %4 = load ptr, ptr %3, align 4
  tail call void @kfree(ptr noundef %4) #16
  tail call void @kfree(ptr noundef %2) #16
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @unix_gid_put(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -24
  %3 = getelementptr i8, ptr %0, i32 4
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %19, label %7

7:                                                ; preds = %1
  %8 = load volatile i32, ptr %3, align 4
  %9 = and i32 %8, 2
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %7
  %12 = getelementptr i8, ptr %0, i32 12
  %13 = load ptr, ptr %12, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !25
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %13) #16, !srcloc !11
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %13, ptr %13, i32 1, ptr elementtype(i32) %13) #16, !srcloc !26
  %15 = extractvalue { i32, i32 } %14, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !27
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = load ptr, ptr %12, align 4
  tail call void @groups_free(ptr noundef %18) #16
  br label %19

19:                                               ; preds = %17, %11, %7, %1
  %20 = icmp eq ptr %2, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %19
  %22 = getelementptr i8, ptr %0, i32 16
  tail call void @kvfree_call_rcu(ptr noundef %22, ptr noundef nonnull inttoptr (i32 40 to ptr)) #16
  br label %23

23:                                               ; preds = %21, %19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @unix_gid_upcall(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @sunrpc_cache_pipe_upcall_timeout(ptr noundef %0, ptr noundef %1) #16
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @unix_gid_request(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca [20 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(20) %5, i8 0, i32 20, i1 false), !annotation !15
  %6 = getelementptr inbounds %struct.unix_gid, ptr %1, i32 0, i32 1
  %7 = load i32, ptr %6, align 8
  %8 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %5, i32 noundef 20, ptr noundef nonnull @.str.3, i32 noundef %7)
  call void @qword_add(ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5) #16
  %9 = load ptr, ptr %2, align 4
  %10 = getelementptr i8, ptr %9, i32 -1
  store i8 10, ptr %10, align 1
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @unix_gid_parse(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.unix_gid, align 8
  %5 = alloca [50 x i8], align 1
  %6 = alloca ptr, align 4
  %7 = alloca [50 x i8], align 1
  %8 = alloca ptr, align 4
  %9 = alloca [50 x i8], align 1
  %10 = alloca i64, align 8
  %11 = alloca %struct.timespec64, align 8
  %12 = alloca [50 x i8], align 1
  %13 = alloca ptr, align 4
  %14 = alloca ptr, align 4
  %15 = alloca %struct.unix_gid, align 8
  store ptr %1, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %15) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(48) %15, i8 0, i32 48, i1 false), !annotation !15
  %16 = add i32 %2, -1
  %17 = getelementptr i8, ptr %1, i32 %16
  %18 = load i8, ptr %17, align 1
  %19 = icmp eq i8 %18, 10
  br i1 %19, label %20, label %104

20:                                               ; preds = %3
  store i8 0, ptr %17, align 1
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %12) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(50) %12, i8 0, i32 50, i1 false) #16, !annotation !15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #16
  store ptr null, ptr %13, align 4, !annotation !15
  %21 = call i32 @qword_get(ptr noundef nonnull %14, ptr noundef nonnull %12, i32 noundef 50) #16
  %22 = icmp slt i32 %21, 1
  br i1 %22, label %28, label %23

23:                                               ; preds = %20
  %24 = call i32 @simple_strtol(ptr noundef nonnull %12, ptr noundef nonnull %13, i32 noundef 0) #16
  %25 = load ptr, ptr %13, align 4
  %26 = load i8, ptr %25, align 1
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %23, %20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #16
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %12) #16
  br label %104

29:                                               ; preds = %23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #16
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %12) #16
  %30 = getelementptr inbounds %struct.unix_gid, ptr %15, i32 0, i32 1
  store i32 %24, ptr %30, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i32 16, i1 false) #16, !annotation !15
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %9) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(50) %9, i8 0, i32 50, i1 false) #16, !annotation !15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #16
  store i64 0, ptr %10, align 8, !annotation !15
  %31 = call i32 @qword_get(ptr noundef nonnull %14, ptr noundef nonnull %9, i32 noundef 50) #16
  %32 = icmp slt i32 %31, 1
  br i1 %32, label %36, label %33

33:                                               ; preds = %29
  %34 = call i32 @kstrtoll(ptr noundef nonnull %9, i32 noundef 0, ptr noundef nonnull %10) #16
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %33, %29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %9) #16
  br label %40

37:                                               ; preds = %33
  %38 = load i64, ptr %10, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %9) #16
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37, %36
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #16
  br label %104

41:                                               ; preds = %37
  call void @getboottime64(ptr noundef nonnull %11) #16
  %42 = load i64, ptr %11, align 8
  %43 = sub i64 %38, %42
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #16
  %44 = icmp eq i64 %38, %42
  br i1 %44, label %104, label %45

45:                                               ; preds = %41
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %7) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(50) %7, i8 0, i32 50, i1 false) #16, !annotation !15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #16
  store ptr null, ptr %8, align 4, !annotation !15
  %46 = call i32 @qword_get(ptr noundef nonnull %14, ptr noundef nonnull %7, i32 noundef 50) #16
  %47 = icmp slt i32 %46, 1
  br i1 %47, label %53, label %48

48:                                               ; preds = %45
  %49 = call i32 @simple_strtol(ptr noundef nonnull %7, ptr noundef nonnull %8, i32 noundef 0) #16
  %50 = load ptr, ptr %8, align 4
  %51 = load i8, ptr %50, align 1
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %48, %45
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %7) #16
  br label %104

54:                                               ; preds = %48
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %7) #16
  %55 = icmp ugt i32 %49, 8192
  br i1 %55, label %104, label %56

56:                                               ; preds = %54
  %57 = call ptr @groups_alloc(i32 noundef %49) #16
  %58 = getelementptr inbounds %struct.unix_gid, ptr %15, i32 0, i32 2
  store ptr %57, ptr %58, align 4
  %59 = icmp eq ptr %57, null
  br i1 %59, label %104, label %60

60:                                               ; preds = %56
  %61 = icmp eq i32 %49, 0
  br i1 %61, label %81, label %62

62:                                               ; preds = %74, %60
  %63 = phi i32 [ %77, %74 ], [ 0, %60 ]
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %5) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(50) %5, i8 0, i32 50, i1 false) #16, !annotation !15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  store ptr null, ptr %6, align 4, !annotation !15
  %64 = call i32 @qword_get(ptr noundef nonnull %14, ptr noundef nonnull %5, i32 noundef 50) #16
  %65 = icmp slt i32 %64, 1
  br i1 %65, label %71, label %66

66:                                               ; preds = %62
  %67 = call i32 @simple_strtol(ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef 0) #16
  %68 = load ptr, ptr %6, align 4
  %69 = load i8, ptr %68, align 1
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %66, %62
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %5) #16
  br label %94

72:                                               ; preds = %66
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %5) #16
  %73 = icmp eq i32 %67, -1
  br i1 %73, label %94, label %74

74:                                               ; preds = %72
  %75 = load ptr, ptr %58, align 4
  %76 = getelementptr %struct.group_info, ptr %75, i32 0, i32 2, i32 %63
  store i32 %67, ptr %76, align 4
  %77 = add nuw nsw i32 %63, 1
  %78 = icmp eq i32 %77, %49
  br i1 %78, label %79, label %62

79:                                               ; preds = %74
  %80 = load ptr, ptr %58, align 4
  br label %81

81:                                               ; preds = %79, %60
  %82 = phi ptr [ %80, %79 ], [ %57, %60 ]
  call void @groups_sort(ptr noundef %82) #16
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(48) %4, i8 0, i32 48, i1 false) #16, !annotation !15
  %83 = getelementptr inbounds %struct.unix_gid, ptr %4, i32 0, i32 1
  store i32 %24, ptr %83, align 8
  %84 = mul i32 %24, 1640531527
  %85 = lshr i32 %84, 24
  %86 = call ptr @sunrpc_cache_lookup_rcu(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %85) #16
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #16
  %87 = icmp eq ptr %86, null
  br i1 %87, label %94, label %88

88:                                               ; preds = %81
  %89 = getelementptr inbounds %struct.cache_head, ptr %15, i32 0, i32 4
  store i32 0, ptr %89, align 4
  %90 = getelementptr inbounds %struct.cache_head, ptr %15, i32 0, i32 1
  store i64 %43, ptr %90, align 8
  %91 = call ptr @sunrpc_cache_update(ptr noundef %0, ptr noundef nonnull %15, ptr noundef nonnull %86, i32 noundef %85) #16
  %92 = icmp eq ptr %91, null
  br i1 %92, label %94, label %93

93:                                               ; preds = %88
  call fastcc void @cache_put(ptr noundef nonnull %91, ptr noundef %0)
  br label %94

94:                                               ; preds = %93, %88, %81, %72, %71
  %95 = phi i32 [ 0, %93 ], [ -12, %88 ], [ -12, %81 ], [ -22, %71 ], [ -22, %72 ]
  %96 = load ptr, ptr %58, align 4
  %97 = icmp eq ptr %96, null
  br i1 %97, label %104, label %98

98:                                               ; preds = %94
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !25
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %96) #16, !srcloc !11
  %99 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %96, ptr nonnull %96, i32 1, ptr nonnull elementtype(i32) %96) #16, !srcloc !26
  %100 = extractvalue { i32, i32 } %99, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !27
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %98
  %103 = load ptr, ptr %58, align 4
  call void @groups_free(ptr noundef %103) #16
  br label %104

104:                                              ; preds = %102, %98, %94, %56, %54, %53, %41, %40, %28, %3
  %105 = phi i32 [ -22, %3 ], [ -22, %41 ], [ -22, %54 ], [ -12, %56 ], [ %95, %98 ], [ %95, %102 ], [ %95, %94 ], [ -22, %28 ], [ -22, %40 ], [ -22, %53 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %15) #16
  ret i32 %105
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @unix_gid_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.4) #16
  br label %41

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.cache_head, ptr %2, i32 0, i32 4
  %8 = load volatile i32, ptr %7, align 4
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %20, label %11

11:                                               ; preds = %6
  %12 = load volatile i32, ptr %7, align 4
  %13 = and i32 %12, 2
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.unix_gid, ptr %2, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.group_info, ptr %17, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  br label %20

20:                                               ; preds = %15, %11, %6
  %21 = phi i32 [ %19, %15 ], [ 0, %11 ], [ 0, %6 ]
  %22 = getelementptr inbounds %struct.unix_gid, ptr %2, i32 0, i32 1
  %23 = load i32, ptr %22, align 8
  %24 = icmp eq i32 %23, -1
  %25 = load i32, ptr @overflowuid, align 4
  %26 = select i1 %24, i32 %25, i32 %23
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef %26, i32 noundef %21) #16
  %27 = icmp sgt i32 %21, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.unix_gid, ptr %2, i32 0, i32 2
  br label %30

30:                                               ; preds = %30, %28
  %31 = phi i32 [ 0, %28 ], [ %38, %30 ]
  %32 = load ptr, ptr %29, align 4
  %33 = getelementptr %struct.group_info, ptr %32, i32 0, i32 2, i32 %31
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, -1
  %36 = load i32, ptr @overflowgid, align 4
  %37 = select i1 %35, i32 %36, i32 %34
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %37) #16
  %38 = add nuw nsw i32 %31, 1
  %39 = icmp eq i32 %38, %21
  br i1 %39, label %40, label %30

40:                                               ; preds = %30, %20
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.7) #16
  br label %41

41:                                               ; preds = %40, %5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal noalias ptr @unix_gid_alloc() #0 {
  %1 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %2 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 48) #17
  ret ptr %2
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @unix_gid_match(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #6 {
  %3 = getelementptr inbounds %struct.unix_gid, ptr %0, i32 0, i32 1
  %4 = getelementptr inbounds %struct.unix_gid, ptr %1, i32 0, i32 1
  %5 = load i32, ptr %3, align 8
  %6 = load i32, ptr %4, align 8
  %7 = icmp eq i32 %5, %6
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @unix_gid_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) #7 {
  %3 = getelementptr inbounds %struct.unix_gid, ptr %0, i32 0, i32 1
  %4 = getelementptr inbounds %struct.unix_gid, ptr %1, i32 0, i32 1
  %5 = load i32, ptr %4, align 8
  store i32 %5, ptr %3, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @unix_gid_update(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.unix_gid, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #16, !srcloc !11
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #16, !srcloc !24
  %6 = load ptr, ptr %3, align 4
  %7 = getelementptr inbounds %struct.unix_gid, ptr %0, i32 0, i32 2
  store ptr %6, ptr %7, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sunrpc_cache_pipe_upcall_timeout(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @qword_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @groups_alloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @groups_sort(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sunrpc_cache_update(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qword_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @getboottime64(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoll(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sunrpc_cache_lookup_rcu(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i64 @hashlen_string(ptr noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #12

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ip_map_put(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -24
  %3 = getelementptr i8, ptr %0, i32 4
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %1
  %8 = load volatile i32, ptr %3, align 4
  %9 = and i32 %8, 2
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = getelementptr i8, ptr %0, i32 32
  %13 = load ptr, ptr %12, align 8
  tail call void @auth_domain_put(ptr noundef %13) #16
  br label %14

14:                                               ; preds = %11, %7, %1
  %15 = icmp eq ptr %2, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %14
  %17 = getelementptr i8, ptr %0, i32 36
  tail call void @kvfree_call_rcu(ptr noundef %17, ptr noundef nonnull inttoptr (i32 60 to ptr)) #16
  br label %18

18:                                               ; preds = %16, %14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ip_map_upcall(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @sunrpc_cache_pipe_upcall(ptr noundef %0, ptr noundef %1) #16
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ip_map_request(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca [40 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(40) %5, i8 0, i32 40, i1 false), !annotation !15
  %6 = getelementptr inbounds %struct.ip_map, ptr %1, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr %struct.ip_map, ptr %1, i32 0, i32 2, i32 0, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = or i32 %9, %7
  %11 = getelementptr %struct.ip_map, ptr %1, i32 0, i32 2, i32 0, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = xor i32 %12, -65536
  %14 = or i32 %10, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = getelementptr %struct.ip_map, ptr %1, i32 0, i32 2, i32 0, i32 0, i32 3
  %18 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %5, i32 noundef 20, ptr noundef nonnull @.str.9, ptr noundef %17)
  br label %21

19:                                               ; preds = %4
  %20 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %5, i32 noundef 40, ptr noundef nonnull @.str.10, ptr noundef %6)
  br label %21

21:                                               ; preds = %19, %16
  %22 = getelementptr inbounds %struct.ip_map, ptr %1, i32 0, i32 1
  tail call void @qword_add(ptr noundef %2, ptr noundef %3, ptr noundef %22) #16
  call void @qword_add(ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5) #16
  %23 = load ptr, ptr %2, align 4
  %24 = getelementptr i8, ptr %23, i32 -1
  store i8 10, ptr %24, align 1
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ip_map_parse(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.ip_map, align 8
  %5 = alloca [50 x i8], align 1
  %6 = alloca i64, align 8
  %7 = alloca %struct.timespec64, align 8
  %8 = alloca ptr, align 4
  %9 = alloca [8 x i8], align 8
  %10 = alloca %union.anon.142, align 4
  store ptr %1, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #16
  store i64 0, ptr %9, align 8, !annotation !15
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %10) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %10, i8 0, i32 28, i1 false), !annotation !15
  %11 = add i32 %2, -1
  %12 = getelementptr i8, ptr %1, i32 %11
  %13 = load i8, ptr %12, align 1
  %14 = icmp eq i8 %13, 10
  br i1 %14, label %15, label %91

15:                                               ; preds = %3
  store i8 0, ptr %12, align 1
  %16 = call i32 @qword_get(ptr noundef nonnull %8, ptr noundef nonnull %9, i32 noundef 8) #16
  %17 = icmp slt i32 %16, 1
  br i1 %17, label %91, label %18

18:                                               ; preds = %15
  %19 = call i32 @qword_get(ptr noundef nonnull %8, ptr noundef %1, i32 noundef %2) #16
  %20 = icmp slt i32 %19, 1
  br i1 %20, label %91, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.cache_detail, ptr %0, i32 0, i32 25
  %23 = load ptr, ptr %22, align 4
  %24 = call i32 @rpc_pton(ptr noundef %23, ptr noundef %1, i32 noundef %19, ptr noundef nonnull %10, i32 noundef 28) #16
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %91, label %26

26:                                               ; preds = %21
  %27 = load i16, ptr %10, align 4
  switch i16 %27, label %91 [
    i16 2, label %28
    i16 10, label %30
  ]

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.sockaddr_in, ptr %10, i32 0, i32 2
  br label %38

30:                                               ; preds = %26
  %31 = getelementptr inbounds i8, ptr %10, i32 8
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds i8, ptr %10, i32 12
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds i8, ptr %10, i32 16
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds i8, ptr %10, i32 20
  br label %38

38:                                               ; preds = %30, %28
  %39 = phi ptr [ %37, %30 ], [ %29, %28 ]
  %40 = phi i32 [ %32, %30 ], [ 0, %28 ]
  %41 = phi i32 [ %34, %30 ], [ 0, %28 ]
  %42 = phi i32 [ %36, %30 ], [ -65536, %28 ]
  %43 = load i32, ptr %39, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i32 16, i1 false) #16, !annotation !15
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %5) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(50) %5, i8 0, i32 50, i1 false) #16, !annotation !15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  store i64 0, ptr %6, align 8, !annotation !15
  %44 = call i32 @qword_get(ptr noundef nonnull %8, ptr noundef nonnull %5, i32 noundef 50) #16
  %45 = icmp slt i32 %44, 1
  br i1 %45, label %49, label %46

46:                                               ; preds = %38
  %47 = call i32 @kstrtoll(ptr noundef nonnull %5, i32 noundef 0, ptr noundef nonnull %6) #16
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %46, %38
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %5) #16
  br label %53

50:                                               ; preds = %46
  %51 = load i64, ptr %6, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %5) #16
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50, %49
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #16
  br label %91

54:                                               ; preds = %50
  call void @getboottime64(ptr noundef nonnull %7) #16
  %55 = load i64, ptr %7, align 8
  %56 = sub i64 %51, %55
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #16
  %57 = icmp eq i64 %51, %55
  br i1 %57, label %91, label %58

58:                                               ; preds = %54
  %59 = call i32 @qword_get(ptr noundef nonnull %8, ptr noundef %1, i32 noundef %2) #16
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %91, label %61

61:                                               ; preds = %58
  %62 = icmp eq i32 %59, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %61
  %64 = call ptr @unix_domain_find(ptr noundef %1)
  %65 = icmp eq ptr %64, null
  br i1 %65, label %91, label %66

66:                                               ; preds = %63, %61
  %67 = phi ptr [ %64, %63 ], [ null, %61 ]
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(72) %4, i8 0, i32 72, i1 false) #16, !annotation !15
  %68 = getelementptr inbounds %struct.ip_map, ptr %4, i32 0, i32 1
  %69 = call ptr @strcpy(ptr noundef %68, ptr noundef nonnull %9) #16
  %70 = getelementptr inbounds %struct.ip_map, ptr %4, i32 0, i32 2
  store i32 %40, ptr %70, align 8
  %71 = getelementptr inbounds %struct.ip_map, ptr %4, i32 0, i32 2, i32 0, i32 0, i32 1
  store i32 %41, ptr %71, align 4
  %72 = getelementptr inbounds %struct.ip_map, ptr %4, i32 0, i32 2, i32 0, i32 0, i32 2
  store i32 %42, ptr %72, align 8
  %73 = getelementptr inbounds %struct.ip_map, ptr %4, i32 0, i32 2, i32 0, i32 0, i32 3
  store i32 %43, ptr %73, align 4
  %74 = call i64 @hashlen_string(ptr noundef null, ptr noundef nonnull %9) #18
  %75 = trunc i64 %74 to i32
  %76 = xor i32 %41, %40
  %77 = xor i32 %76, %42
  %78 = xor i32 %77, %43
  %79 = mul i32 %78, 1640531527
  %80 = xor i32 %79, %75
  %81 = lshr i32 %80, 24
  %82 = call ptr @sunrpc_cache_lookup_rcu(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %81) #16
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #16
  %83 = icmp eq ptr %82, null
  br i1 %83, label %86, label %84

84:                                               ; preds = %66
  %85 = call fastcc i32 @__ip_map_update(ptr noundef %0, ptr noundef nonnull %82, ptr noundef %67, i64 noundef %56)
  br label %86

86:                                               ; preds = %84, %66
  %87 = phi i32 [ %85, %84 ], [ -12, %66 ]
  %88 = icmp eq ptr %67, null
  br i1 %88, label %90, label %89

89:                                               ; preds = %86
  call void @auth_domain_put(ptr noundef nonnull %67) #16
  br label %90

90:                                               ; preds = %89, %86
  call void @cache_flush() #16
  br label %91

91:                                               ; preds = %90, %63, %58, %54, %53, %26, %21, %18, %15, %3
  %92 = phi i32 [ %87, %90 ], [ -22, %3 ], [ -22, %15 ], [ -22, %18 ], [ -22, %21 ], [ -22, %26 ], [ -22, %54 ], [ -22, %58 ], [ -2, %63 ], [ -22, %53 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #16
  ret i32 %92
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ip_map_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = alloca %struct.in6_addr, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #16
  %5 = icmp eq ptr %2, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.12) #16
  br label %37

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ip_map, ptr %2, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef align 8 dereferenceable(16) %8, i32 16, i1 false)
  %9 = getelementptr inbounds %struct.cache_head, ptr %2, i32 0, i32 4
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %22, label %13

13:                                               ; preds = %7
  %14 = load volatile i32, ptr %9, align 4
  %15 = and i32 %14, 2
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.ip_map, ptr %2, i32 0, i32 3
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.auth_domain, ptr %19, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  br label %22

22:                                               ; preds = %17, %13, %7
  %23 = phi ptr [ @.str.11, %13 ], [ %21, %17 ], [ @.str.11, %7 ]
  %24 = load i32, ptr %4, align 4
  %25 = getelementptr inbounds [4 x i32], ptr %4, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = or i32 %26, %24
  %28 = getelementptr inbounds [4 x i32], ptr %4, i32 0, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = xor i32 %29, -65536
  %31 = or i32 %27, %30
  %32 = icmp eq i32 %31, 0
  %33 = getelementptr inbounds %struct.ip_map, ptr %2, i32 0, i32 1
  br i1 %32, label %34, label %36

34:                                               ; preds = %22
  %35 = getelementptr inbounds [4 x i32], ptr %4, i32 0, i32 3
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.13, ptr noundef %33, ptr noundef %35, ptr noundef %23) #16
  br label %37

36:                                               ; preds = %22
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.14, ptr noundef %33, ptr noundef nonnull %4, ptr noundef %23) #16
  br label %37

37:                                               ; preds = %36, %34, %6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal noalias ptr @ip_map_alloc() #0 {
  %1 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %2 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 72) #17
  ret ptr %2
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @ip_map_match(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #13 {
  %3 = getelementptr inbounds %struct.ip_map, ptr %0, i32 0, i32 1
  %4 = getelementptr inbounds %struct.ip_map, ptr %1, i32 0, i32 1
  %5 = tail call i32 @strcmp(ptr noundef %3, ptr noundef %4)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %33

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ip_map, ptr %0, i32 0, i32 2
  %9 = getelementptr inbounds %struct.ip_map, ptr %1, i32 0, i32 2
  %10 = load i32, ptr %8, align 4
  %11 = load i32, ptr %9, align 4
  %12 = xor i32 %11, %10
  %13 = getelementptr %struct.ip_map, ptr %0, i32 0, i32 2, i32 0, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr %struct.ip_map, ptr %1, i32 0, i32 2, i32 0, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = xor i32 %16, %14
  %18 = or i32 %17, %12
  %19 = getelementptr %struct.ip_map, ptr %0, i32 0, i32 2, i32 0, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr %struct.ip_map, ptr %1, i32 0, i32 2, i32 0, i32 0, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = xor i32 %22, %20
  %24 = or i32 %18, %23
  %25 = getelementptr %struct.ip_map, ptr %0, i32 0, i32 2, i32 0, i32 0, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr %struct.ip_map, ptr %1, i32 0, i32 2, i32 0, i32 0, i32 3
  %28 = load i32, ptr %27, align 4
  %29 = xor i32 %28, %26
  %30 = or i32 %24, %29
  %31 = icmp eq i32 %30, 0
  %32 = zext i1 %31 to i32
  br label %33

33:                                               ; preds = %7, %2
  %34 = phi i32 [ 0, %2 ], [ %32, %7 ]
  ret i32 %34
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @ip_map_init(ptr noundef %0, ptr nocapture noundef readonly %1) #14 {
  %3 = getelementptr inbounds %struct.ip_map, ptr %0, i32 0, i32 1
  %4 = getelementptr inbounds %struct.ip_map, ptr %1, i32 0, i32 1
  %5 = tail call ptr @strcpy(ptr noundef %3, ptr noundef %4)
  %6 = getelementptr inbounds %struct.ip_map, ptr %0, i32 0, i32 2
  %7 = getelementptr inbounds %struct.ip_map, ptr %1, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %6, ptr noundef align 8 dereferenceable(16) %7, i32 16, i1 false)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @update(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.ip_map, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #16, !srcloc !11
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #16, !srcloc !21
  %6 = extractvalue { i32, i32, i32 } %5, 0
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8, !prof !22

8:                                                ; preds = %2
  %9 = add i32 %6, 1
  %10 = or i32 %9, %6
  %11 = icmp sgt i32 %10, -1
  br i1 %11, label %14, label %12, !prof !13

12:                                               ; preds = %8, %2
  %13 = phi i32 [ 2, %2 ], [ 1, %8 ]
  tail call void @refcount_warn_saturate(ptr noundef %4, i32 noundef %13) #16
  br label %14

14:                                               ; preds = %12, %8
  %15 = load ptr, ptr %3, align 8
  %16 = getelementptr inbounds %struct.ip_map, ptr %0, i32 0, i32 3
  store ptr %15, ptr %16, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sunrpc_cache_pipe_upcall(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpc_pton(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__ip_map_update(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.ip_map, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %5) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(72) %5, i8 0, i32 72, i1 false), !annotation !15
  %6 = getelementptr inbounds %struct.ip_map, ptr %5, i32 0, i32 3
  store ptr %2, ptr %6, align 8
  %7 = icmp eq ptr %2, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.cache_head, ptr %5, i32 0, i32 4
  call void @_set_bit(i32 noundef 1, ptr noundef %9) #16
  br label %10

10:                                               ; preds = %8, %4
  %11 = getelementptr inbounds %struct.cache_head, ptr %5, i32 0, i32 1
  store i64 %3, ptr %11, align 8
  %12 = getelementptr inbounds %struct.ip_map, ptr %1, i32 0, i32 1
  %13 = call i64 @hashlen_string(ptr noundef null, ptr noundef %12) #18
  %14 = trunc i64 %13 to i32
  %15 = getelementptr inbounds %struct.ip_map, ptr %1, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr %struct.ip_map, ptr %1, i32 0, i32 2, i32 0, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = xor i32 %18, %16
  %20 = getelementptr %struct.ip_map, ptr %1, i32 0, i32 2, i32 0, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = xor i32 %19, %21
  %23 = getelementptr %struct.ip_map, ptr %1, i32 0, i32 2, i32 0, i32 0, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = xor i32 %22, %24
  %26 = mul i32 %25, 1640531527
  %27 = xor i32 %26, %14
  %28 = lshr i32 %27, 24
  %29 = call ptr @sunrpc_cache_update(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %1, i32 noundef %28) #16
  %30 = icmp eq ptr %29, null
  br i1 %30, label %52, label %31

31:                                               ; preds = %10
  %32 = getelementptr inbounds %struct.cache_head, ptr %29, i32 0, i32 3
  %33 = load volatile i32, ptr %32, align 4
  %34 = icmp ult i32 %33, 3
  br i1 %34, label %35, label %42

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.cache_head, ptr %29, i32 0, i32 1
  %37 = load i64, ptr %36, align 8
  %38 = getelementptr inbounds %struct.cache_detail, ptr %0, i32 0, i32 18
  %39 = load i64, ptr %38, align 8
  %40 = icmp slt i64 %37, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store i64 %37, ptr %38, align 8
  br label %42

42:                                               ; preds = %41, %35, %31
  %43 = getelementptr inbounds %struct.cache_detail, ptr %0, i32 0, i32 5
  %44 = load ptr, ptr %43, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !10
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %32) #16, !srcloc !11
  %45 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %32, ptr %32, i32 1, ptr elementtype(i32) %32) #16, !srcloc !12
  %46 = extractvalue { i32, i32, i32 } %45, 0
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %51, label %48

48:                                               ; preds = %42
  %49 = icmp sgt i32 %46, 0
  br i1 %49, label %52, label %50, !prof !13

50:                                               ; preds = %48
  call void @refcount_warn_saturate(ptr noundef %32, i32 noundef 3) #16
  br label %52

51:                                               ; preds = %42
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !14
  call void %44(ptr noundef %32) #16
  br label %52

52:                                               ; preds = %51, %50, %48, %10
  %53 = phi i32 [ -12, %10 ], [ 0, %48 ], [ 0, %50 ], [ 0, %51 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #16
  ret i32 %53
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cache_flush() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #12

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind willreturn }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { nounwind }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nounwind readonly willreturn }

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
!8 = !{i64 2148958725}
!9 = !{i64 2148958942}
!10 = !{i64 2148203219}
!11 = !{i64 536711, i64 2148038277, i64 2148038303, i64 2148038350, i64 2148038372, i64 2148038400, i64 2148038420}
!12 = !{i64 2148105354, i64 2148105386, i64 2148105415, i64 2148105449, i64 2148105480, i64 2148105503}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{i64 2149258839}
!15 = !{!"auto-init"}
!16 = !{i64 2155825251, i64 2155825741, i64 2155825288, i64 2155825344, i64 2155825378, i64 2155825402, i64 2155825443, i64 2155825464, i64 2155825492, i64 2155825526}
!17 = !{i64 2149184924}
!18 = !{i64 2149180748}
!19 = !{i64 2149180823, i64 2149180850, i64 2149180897, i64 2149180919, i64 2149180947, i64 2149180967}
!20 = !{i64 2149207927}
!21 = !{i64 2148102997, i64 2148103029, i64 2148103058, i64 2148103092, i64 2148103123, i64 2148103146}
!22 = !{!"branch_weights", i32 1, i32 2000}
!23 = !{i64 2155826372, i64 2155826862, i64 2155826409, i64 2155826465, i64 2155826499, i64 2155826523, i64 2155826564, i64 2155826585, i64 2155826613, i64 2155826647}
!24 = !{i64 2148101539, i64 2148101565, i64 2148101594, i64 2148101628, i64 2148101659, i64 2148101682}
!25 = !{i64 2148202218}
!26 = !{i64 2148104580, i64 2148104612, i64 2148104641, i64 2148104675, i64 2148104706, i64 2148104729}
!27 = !{i64 2148202421}
