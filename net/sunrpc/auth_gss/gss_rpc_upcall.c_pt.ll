; ModuleID = '/llk/IR/net/sunrpc/auth_gss/gss_rpc_upcall.c_pt.bc'
source_filename = "../net/sunrpc/auth_gss/gss_rpc_upcall.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type {}
%struct.rpc_procinfo = type { i32, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.sockaddr_un = type { i16, [108 x i8] }
%struct.rpc_program = type { ptr, i32, i32, ptr, ptr, ptr }
%struct.rpc_stat = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rpc_version = type { i32, i32, ptr, ptr }
%struct.sunrpc_net = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.list_head, %struct.spinlock, ptr, ptr, %struct.spinlock, i32, i8, %struct.mutex, ptr, i32, i32, %struct.atomic_t, ptr }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.rpc_create_args = type { ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.88 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.gssx_ctx = type { %struct.xdr_netobj, %struct.xdr_netobj, i32, %struct.xdr_netobj, %struct.gssx_name, %struct.gssx_name, i64, i64, i32, i32, %struct.gssx_option_array }
%struct.xdr_netobj = type { i32, ptr }
%struct.gssx_name = type { %struct.xdr_netobj }
%struct.gssx_option_array = type { i32, ptr }
%struct.gssx_arg_accept_sec_context = type { %struct.gssx_call_ctx, ptr, ptr, %struct.gssp_in_token, ptr, i32, %struct.gssx_option_array, ptr, i32 }
%struct.gssx_call_ctx = type { %struct.xdr_netobj, %struct.xdr_netobj, %struct.gssx_option_array }
%struct.gssp_in_token = type { ptr, i32, i32 }
%struct.gssx_res_accept_sec_context = type { %struct.gssx_status, ptr, ptr, %struct.gssx_option_array }
%struct.gssx_status = type { i64, %struct.xdr_netobj, i64, %struct.xdr_netobj, %struct.xdr_netobj, %struct.xdr_netobj, %struct.gssx_option_array }
%struct.rpc_message = type { ptr, ptr, ptr, ptr }
%struct.gssp_upcall_data = type { %struct.xdr_netobj, %struct.gssp_in_token, %struct.xdr_netobj, %struct.xdr_netobj, %struct.rpcsec_gss_oid, %struct.svc_cred, i32, i32, i32 }
%struct.rpcsec_gss_oid = type { i32, [32 x i8] }
%struct.svc_cred = type { %struct.kuid_t, %struct.kgid_t, ptr, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.gssx_option = type { %struct.xdr_netobj, %struct.xdr_netobj }

@init_gssp_clnt.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [15 x i8] c"&sn->gssp_lock\00", align 1
@sunrpc_net_id = external dso_local local_unnamed_addr global i32, align 4
@gssp_procedures = internal constant [16 x %struct.rpc_procinfo] [%struct.rpc_procinfo zeroinitializer, %struct.rpc_procinfo { i32 1, ptr null, ptr null, i32 0, i32 0, i32 0, i32 1, ptr @.str.3 }, %struct.rpc_procinfo { i32 2, ptr null, ptr null, i32 0, i32 0, i32 0, i32 2, ptr @.str.4 }, %struct.rpc_procinfo { i32 3, ptr null, ptr null, i32 0, i32 0, i32 0, i32 3, ptr @.str.5 }, %struct.rpc_procinfo { i32 4, ptr null, ptr null, i32 0, i32 0, i32 0, i32 4, ptr @.str.6 }, %struct.rpc_procinfo { i32 5, ptr null, ptr null, i32 0, i32 0, i32 0, i32 5, ptr @.str.7 }, %struct.rpc_procinfo { i32 6, ptr null, ptr null, i32 0, i32 0, i32 0, i32 6, ptr @.str.8 }, %struct.rpc_procinfo { i32 7, ptr null, ptr null, i32 0, i32 0, i32 0, i32 7, ptr @.str.9 }, %struct.rpc_procinfo { i32 8, ptr null, ptr null, i32 0, i32 0, i32 0, i32 8, ptr @.str.10 }, %struct.rpc_procinfo { i32 9, ptr @gssx_enc_accept_sec_context, ptr @gssx_dec_accept_sec_context, i32 220, i32 2316, i32 0, i32 9, ptr @.str.11 }, %struct.rpc_procinfo { i32 10, ptr null, ptr null, i32 0, i32 0, i32 0, i32 10, ptr @.str.12 }, %struct.rpc_procinfo { i32 11, ptr null, ptr null, i32 0, i32 0, i32 0, i32 11, ptr @.str.13 }, %struct.rpc_procinfo { i32 12, ptr null, ptr null, i32 0, i32 0, i32 0, i32 12, ptr @.str.14 }, %struct.rpc_procinfo { i32 13, ptr null, ptr null, i32 0, i32 0, i32 0, i32 13, ptr @.str.15 }, %struct.rpc_procinfo { i32 14, ptr null, ptr null, i32 0, i32 0, i32 0, i32 14, ptr @.str.16 }, %struct.rpc_procinfo { i32 15, ptr null, ptr null, i32 0, i32 0, i32 0, i32 15, ptr @.str.17 }], align 4
@gssp_rpc_create.gssp_localaddr = internal constant %struct.sockaddr_un { i16 1, [108 x i8] c"/var/run/gssproxy.sock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, align 2
@.str.1 = private unnamed_addr constant [10 x i8] c"localhost\00", align 1
@gssp_program = internal constant %struct.rpc_program { ptr @.str.2, i32 400112, i32 2, ptr @gssp_version, ptr @gssp_stats, ptr null }, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"gssproxy\00", align 1
@gssp_version = internal global [2 x ptr] [ptr null, ptr @gssp_version1], align 4
@gssp_stats = internal global %struct.rpc_stat zeroinitializer, align 4
@gssp_version1 = internal constant %struct.rpc_version { i32 1, i32 16, ptr @gssp_procedures, ptr @gssp_version1_counts }, align 4
@gssp_version1_counts = internal global [16 x i32] zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"INDICATE_MECHS\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"GET_CALL_CONTEXT\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"IMPORT_AND_CANON_NAME\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"EXPORT_CRED\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"IMPORT_CRED\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"ACQUIRE_CRED\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"STORE_CRED\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"INIT_SEC_CONTEXT\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"ACCEPT_SEC_CONTEXT\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"RELEASE_HANDLE\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"GET_MIC\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"VERIFY\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"WRAP\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"UNWRAP\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"WRAP_SIZE_LIMIT\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @init_gssp_clnt(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.sunrpc_net, ptr %0, i32 0, i32 15
  tail call void @__mutex_init(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @init_gssp_clnt.__key) #8
  %3 = getelementptr inbounds %struct.sunrpc_net, ptr %0, i32 0, i32 16
  store ptr null, ptr %3, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @set_gssp_clnt(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.rpc_create_args, align 4
  %3 = load i32, ptr @sunrpc_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !8
  %4 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 37
  %5 = load volatile ptr, ptr %4, align 64
  %6 = getelementptr [0 x ptr], ptr %5, i32 0, i32 %3
  %7 = load ptr, ptr %6, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !9
  %8 = getelementptr inbounds %struct.sunrpc_net, ptr %7, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %8) #8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #8
  store ptr %0, ptr %2, align 4
  %9 = getelementptr inbounds %struct.rpc_create_args, ptr %2, i32 0, i32 1
  store i32 257, ptr %9, align 4
  %10 = getelementptr inbounds %struct.rpc_create_args, ptr %2, i32 0, i32 2
  store ptr @gssp_rpc_create.gssp_localaddr, ptr %10, align 4
  %11 = getelementptr inbounds %struct.rpc_create_args, ptr %2, i32 0, i32 3
  store i32 110, ptr %11, align 4
  %12 = getelementptr inbounds %struct.rpc_create_args, ptr %2, i32 0, i32 4
  store ptr null, ptr %12, align 4
  %13 = getelementptr inbounds %struct.rpc_create_args, ptr %2, i32 0, i32 5
  store ptr null, ptr %13, align 4
  %14 = getelementptr inbounds %struct.rpc_create_args, ptr %2, i32 0, i32 6
  store ptr @.str.1, ptr %14, align 4
  %15 = getelementptr inbounds %struct.rpc_create_args, ptr %2, i32 0, i32 7
  store ptr null, ptr %15, align 4
  %16 = getelementptr inbounds %struct.rpc_create_args, ptr %2, i32 0, i32 8
  store ptr @gssp_program, ptr %16, align 4
  %17 = getelementptr inbounds %struct.rpc_create_args, ptr %2, i32 0, i32 9
  store i32 0, ptr %17, align 4
  %18 = getelementptr inbounds %struct.rpc_create_args, ptr %2, i32 0, i32 10
  store i32 1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.rpc_create_args, ptr %2, i32 0, i32 11
  store i32 0, ptr %19, align 4
  %20 = getelementptr inbounds %struct.rpc_create_args, ptr %2, i32 0, i32 12
  store i32 0, ptr %20, align 4
  %21 = getelementptr inbounds %struct.rpc_create_args, ptr %2, i32 0, i32 13
  store i32 272, ptr %21, align 4
  %22 = getelementptr inbounds %struct.rpc_create_args, ptr %2, i32 0, i32 14
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %22, i8 0, i64 16, i1 false) #8
  %23 = call ptr @rpc_create(ptr noundef nonnull %2) #8
  %24 = icmp ugt ptr %23, inttoptr (i32 -4096 to ptr)
  %25 = ptrtoint ptr %23 to i32
  %26 = select i1 %24, ptr null, ptr %23
  %27 = select i1 %24, i32 %25, i32 0
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %1
  %30 = getelementptr inbounds %struct.sunrpc_net, ptr %7, i32 0, i32 16
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  call void @rpc_shutdown_client(ptr noundef nonnull %31) #8
  br label %34

34:                                               ; preds = %33, %29
  store ptr %26, ptr %30, align 4
  br label %35

35:                                               ; preds = %34, %1
  call void @mutex_unlock(ptr noundef %8) #8
  ret i32 %27
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_shutdown_client(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @clear_gssp_clnt(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.sunrpc_net, ptr %0, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %2) #8
  %3 = getelementptr inbounds %struct.sunrpc_net, ptr %0, i32 0, i32 16
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @rpc_shutdown_client(ptr noundef nonnull %4) #8
  store ptr null, ptr %3, align 4
  br label %7

7:                                                ; preds = %6, %1
  tail call void @mutex_unlock(ptr noundef %2) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gssp_accept_sec_context_upcall(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.gssx_ctx, align 8
  %4 = alloca %struct.gssx_arg_accept_sec_context, align 4
  %5 = alloca %struct.gssx_ctx, align 8
  %6 = alloca %struct.gssx_res_accept_sec_context, align 8
  %7 = alloca %struct.rpc_message, align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #8
  %8 = getelementptr inbounds %struct.gssx_ctx, ptr %3, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %3, i8 0, i64 80, i1 false)
  %9 = load i64, ptr %1, align 4
  store i64 %9, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %4) #8
  %10 = getelementptr inbounds %struct.gssx_arg_accept_sec_context, ptr %4, i32 0, i32 3
  %11 = getelementptr inbounds %struct.gssp_upcall_data, ptr %1, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %4, i8 0, i64 68, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %10, ptr noundef align 4 dereferenceable(12) %11, i32 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %5) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(80) %5, i8 0, i32 80, i1 false)
  store i32 128, ptr %5, align 8
  %12 = getelementptr inbounds { %struct.xdr_netobj, %struct.xdr_netobj, i32, %struct.xdr_netobj, %struct.gssx_name, %struct.gssx_name, [4 x i8], i64, i64, i32, i32, %struct.gssx_option_array }, ptr %5, i32 0, i32 3
  store i32 32, ptr %12, align 4
  %13 = getelementptr inbounds { %struct.xdr_netobj, %struct.xdr_netobj, i32, %struct.xdr_netobj, %struct.gssx_name, %struct.gssx_name, [4 x i8], i64, i64, i32, i32, %struct.gssx_option_array }, ptr %5, i32 0, i32 4
  store i32 256, ptr %13, align 4
  %14 = getelementptr inbounds { %struct.xdr_netobj, %struct.xdr_netobj, i32, %struct.xdr_netobj, %struct.gssx_name, %struct.gssx_name, [4 x i8], i64, i64, i32, i32, %struct.gssx_option_array }, ptr %5, i32 0, i32 5
  store i32 256, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %6) #8
  %15 = getelementptr inbounds %struct.gssx_res_accept_sec_context, ptr %6, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %6, i8 0, i64 72, i1 false)
  store ptr %5, ptr %15, align 8
  %16 = getelementptr inbounds %struct.gssx_res_accept_sec_context, ptr %6, i32 0, i32 2
  %17 = getelementptr inbounds %struct.gssp_upcall_data, ptr %1, i32 0, i32 3
  store ptr %17, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #8
  store ptr getelementptr inbounds ([16 x %struct.rpc_procinfo], ptr @gssp_procedures, i32 0, i32 9), ptr %7, align 4
  %18 = getelementptr inbounds %struct.rpc_message, ptr %7, i32 0, i32 1
  store ptr %4, ptr %18, align 4
  %19 = getelementptr inbounds %struct.rpc_message, ptr %7, i32 0, i32 2
  store ptr %6, ptr %19, align 4
  %20 = getelementptr inbounds %struct.rpc_message, ptr %7, i32 0, i32 3
  store ptr null, ptr %20, align 4
  %21 = trunc i64 %9 to i32
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.gssx_arg_accept_sec_context, ptr %4, i32 0, i32 1
  store ptr %3, ptr %24, align 4
  br label %25

25:                                               ; preds = %23, %2
  store i32 1024, ptr %17, align 4
  %26 = getelementptr inbounds %struct.gssx_arg_accept_sec_context, ptr %4, i32 0, i32 8
  store i32 64, ptr %26, align 4
  %27 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %28 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %27, i32 noundef 3520, i32 noundef 256) #9
  %29 = getelementptr inbounds %struct.gssx_arg_accept_sec_context, ptr %4, i32 0, i32 7
  store ptr %28, ptr %29, align 4
  %30 = icmp eq ptr %28, null
  br i1 %30, label %215, label %31

31:                                               ; preds = %25
  %32 = load i32, ptr %26, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %61, label %38

34:                                               ; preds = %38
  %35 = add nuw i32 %39, 1
  %36 = load i32, ptr %26, align 4
  %37 = icmp ult i32 %35, %36
  br i1 %37, label %38, label %61

38:                                               ; preds = %34, %31
  %39 = phi i32 [ %35, %34 ], [ 0, %31 ]
  %40 = call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #8
  %41 = load ptr, ptr %29, align 4
  %42 = getelementptr ptr, ptr %41, i32 %39
  store ptr %40, ptr %42, align 4
  %43 = load ptr, ptr %29, align 4
  %44 = getelementptr ptr, ptr %43, i32 %39
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %34

47:                                               ; preds = %38
  %48 = load i32, ptr %26, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %212, label %50

50:                                               ; preds = %56, %47
  %51 = phi ptr [ %60, %56 ], [ %43, %47 ]
  %52 = phi i32 [ %57, %56 ], [ 0, %47 ]
  %53 = getelementptr ptr, ptr %51, i32 %52
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %212, label %56

56:                                               ; preds = %50
  call void @__free_pages(ptr noundef nonnull %54, i32 noundef 0) #8
  %57 = add nuw i32 %52, 1
  %58 = load i32, ptr %26, align 4
  %59 = icmp ult i32 %57, %58
  %60 = load ptr, ptr %29, align 4
  br i1 %59, label %50, label %212

61:                                               ; preds = %34, %31
  %62 = load i32, ptr @sunrpc_net_id, align 4
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !8
  %63 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 37
  %64 = load volatile ptr, ptr %63, align 64
  %65 = getelementptr [0 x ptr], ptr %64, i32 0, i32 %62
  %66 = load ptr, ptr %65, align 4
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !9
  %67 = getelementptr inbounds %struct.sunrpc_net, ptr %66, i32 0, i32 15
  call void @mutex_lock(ptr noundef %67) #8
  %68 = getelementptr inbounds %struct.sunrpc_net, ptr %66, i32 0, i32 16
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %81, label %71

71:                                               ; preds = %61
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %69) #8, !srcloc !10
  %72 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %69, ptr nonnull %69, i32 1, ptr nonnull elementtype(i32) %69) #8, !srcloc !11
  %73 = extractvalue { i32, i32, i32 } %72, 0
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %79, label %75, !prof !12

75:                                               ; preds = %71
  %76 = add i32 %73, 1
  %77 = or i32 %76, %73
  %78 = icmp sgt i32 %77, -1
  br i1 %78, label %82, label %79, !prof !13

79:                                               ; preds = %75, %71
  %80 = phi i32 [ 2, %71 ], [ 1, %75 ]
  call void @refcount_warn_saturate(ptr noundef nonnull %69, i32 noundef %80) #8
  br label %82

81:                                               ; preds = %61
  call void @mutex_unlock(ptr noundef %67) #8
  br label %100

82:                                               ; preds = %79, %75
  call void @mutex_unlock(ptr noundef %67) #8
  %83 = call i32 @rpc_call_sync(ptr noundef nonnull %69, ptr noundef nonnull %7, i32 noundef 0) #8
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %98

85:                                               ; preds = %82
  switch i32 %83, label %98 [
    i32 -93, label %86
    i32 -111, label %87
    i32 -110, label %87
    i32 -107, label %87
    i32 -512, label %88
  ]

86:                                               ; preds = %85
  br label %98

87:                                               ; preds = %85, %85, %85
  br label %98

88:                                               ; preds = %85
  %89 = tail call ptr @llvm.thread.pointer() #8
  %90 = load volatile i32, ptr %89, align 4
  %91 = and i32 %90, 256
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %98, !prof !13

93:                                               ; preds = %88
  %94 = load volatile i32, ptr %89, align 4
  %95 = and i32 %94, 1
  %96 = icmp eq i32 %95, 0
  %97 = select i1 %96, i32 -512, i32 -4
  br label %98

98:                                               ; preds = %93, %88, %87, %86, %85, %82
  %99 = phi i32 [ %83, %85 ], [ -11, %87 ], [ -22, %86 ], [ %83, %82 ], [ -4, %88 ], [ %97, %93 ]
  call void @rpc_release_client(ptr noundef nonnull %69) #8
  br label %100

100:                                              ; preds = %98, %81
  %101 = phi i32 [ %99, %98 ], [ -5, %81 ]
  %102 = load i32, ptr %26, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %114, label %104

104:                                              ; preds = %110, %100
  %105 = phi i32 [ %111, %110 ], [ 0, %100 ]
  %106 = load ptr, ptr %29, align 4
  %107 = getelementptr ptr, ptr %106, i32 %105
  %108 = load ptr, ptr %107, align 4
  %109 = icmp eq ptr %108, null
  br i1 %109, label %114, label %110

110:                                              ; preds = %104
  call void @__free_pages(ptr noundef nonnull %108, i32 noundef 0) #8
  %111 = add nuw i32 %105, 1
  %112 = load i32, ptr %26, align 4
  %113 = icmp ult i32 %111, %112
  br i1 %113, label %104, label %114

114:                                              ; preds = %110, %104, %100
  %115 = load ptr, ptr %29, align 4
  call void @kfree(ptr noundef %115) #8
  %116 = load i64, ptr %6, align 8
  %117 = trunc i64 %116 to i32
  %118 = getelementptr inbounds %struct.gssp_upcall_data, ptr %1, i32 0, i32 7
  store i32 %117, ptr %118, align 4
  %119 = getelementptr inbounds %struct.gssx_status, ptr %6, i32 0, i32 2
  %120 = load i64, ptr %119, align 8
  %121 = trunc i64 %120 to i32
  %122 = getelementptr inbounds %struct.gssp_upcall_data, ptr %1, i32 0, i32 8
  store i32 %121, ptr %122, align 4
  %123 = load ptr, ptr %15, align 8
  %124 = icmp eq ptr %123, null
  br i1 %124, label %144, label %125

125:                                              ; preds = %114
  %126 = getelementptr inbounds %struct.gssp_upcall_data, ptr %1, i32 0, i32 2
  %127 = load i64, ptr %5, align 8
  store i64 %127, ptr %126, align 4
  %128 = load i32, ptr %12, align 4
  %129 = getelementptr inbounds %struct.gssp_upcall_data, ptr %1, i32 0, i32 4
  store i32 %128, ptr %129, align 4
  %130 = getelementptr inbounds %struct.gssx_ctx, ptr %5, i32 0, i32 3, i32 1
  %131 = load ptr, ptr %130, align 8
  %132 = icmp eq ptr %131, null
  br i1 %132, label %135, label %133

133:                                              ; preds = %125
  %134 = getelementptr inbounds %struct.gssp_upcall_data, ptr %1, i32 0, i32 4, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %134, ptr nonnull align 1 %131, i32 %128, i1 false)
  call void @kfree(ptr noundef nonnull %131) #8
  br label %135

135:                                              ; preds = %133, %125
  %136 = load i32, ptr %13, align 4
  %137 = getelementptr inbounds %struct.gssx_ctx, ptr %5, i32 0, i32 4, i32 0, i32 1
  %138 = load i32, ptr %137, align 8
  %139 = inttoptr i32 %138 to ptr
  %140 = load i32, ptr %14, align 4
  %141 = getelementptr inbounds %struct.gssx_ctx, ptr %5, i32 0, i32 5, i32 0, i32 1
  %142 = load i32, ptr %141, align 8
  %143 = inttoptr i32 %142 to ptr
  br label %144

144:                                              ; preds = %135, %114
  %145 = phi ptr [ null, %114 ], [ %139, %135 ]
  %146 = phi i32 [ 0, %114 ], [ %136, %135 ]
  %147 = phi ptr [ null, %114 ], [ %143, %135 ]
  %148 = phi i32 [ 0, %114 ], [ %140, %135 ]
  %149 = getelementptr inbounds %struct.gssx_res_accept_sec_context, ptr %6, i32 0, i32 3
  %150 = load i32, ptr %149, align 8
  %151 = icmp eq i32 %150, 1
  br i1 %151, label %152, label %167

152:                                              ; preds = %144
  %153 = getelementptr inbounds %struct.gssx_res_accept_sec_context, ptr %6, i32 0, i32 3, i32 1
  %154 = load ptr, ptr %153, align 4
  %155 = getelementptr inbounds %struct.gssx_option, ptr %154, i32 0, i32 1
  %156 = load i32, ptr %155, align 4
  %157 = icmp eq i32 %156, 1
  br i1 %157, label %158, label %163

158:                                              ; preds = %152
  %159 = getelementptr inbounds %struct.gssp_upcall_data, ptr %1, i32 0, i32 5
  %160 = getelementptr inbounds %struct.gssx_option, ptr %154, i32 0, i32 1, i32 1
  %161 = load ptr, ptr %160, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(32) %159, ptr noundef align 4 dereferenceable(32) %161, i32 32, i1 false)
  %162 = getelementptr inbounds %struct.gssp_upcall_data, ptr %1, i32 0, i32 6
  store i32 1, ptr %162, align 4
  br label %163

163:                                              ; preds = %158, %152
  %164 = getelementptr inbounds %struct.gssx_option, ptr %154, i32 0, i32 1, i32 1
  %165 = load ptr, ptr %164, align 4
  call void @kfree(ptr noundef %165) #8
  %166 = load i32, ptr %149, align 8
  br label %167

167:                                              ; preds = %163, %144
  %168 = phi i32 [ %166, %163 ], [ %150, %144 ]
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %173, label %170

170:                                              ; preds = %167
  %171 = getelementptr inbounds %struct.gssx_res_accept_sec_context, ptr %6, i32 0, i32 3, i32 1
  %172 = load ptr, ptr %171, align 4
  call void @kfree(ptr noundef %172) #8
  br label %173

173:                                              ; preds = %170, %167
  %174 = getelementptr inbounds %struct.gssp_upcall_data, ptr %1, i32 0, i32 6
  %175 = load i32, ptr %174, align 4
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %211, label %177

177:                                              ; preds = %173
  %178 = icmp eq ptr %145, null
  br i1 %178, label %195, label %179

179:                                              ; preds = %177
  %180 = call ptr @kmemdup_nul(ptr noundef nonnull %145, i32 noundef %146, i32 noundef 3264) #8
  %181 = getelementptr inbounds %struct.gssp_upcall_data, ptr %1, i32 0, i32 5, i32 4
  store ptr %180, ptr %181, align 4
  %182 = call ptr @kmemdup_nul(ptr noundef nonnull %145, i32 noundef %146, i32 noundef 3264) #8
  %183 = getelementptr inbounds %struct.gssp_upcall_data, ptr %1, i32 0, i32 5, i32 5
  store ptr %182, ptr %183, align 4
  %184 = icmp eq ptr %182, null
  br i1 %184, label %195, label %185

185:                                              ; preds = %179
  %186 = call ptr @strchr(ptr noundef nonnull %182, i32 noundef 64) #8
  %187 = icmp eq ptr %186, null
  br i1 %187, label %193, label %188

188:                                              ; preds = %185
  store i8 0, ptr %186, align 1
  %189 = load ptr, ptr %183, align 4
  %190 = call ptr @strchr(ptr noundef %189, i32 noundef 47) #8
  %191 = icmp eq ptr %190, null
  br i1 %191, label %193, label %192

192:                                              ; preds = %188
  store i8 64, ptr %190, align 1
  br label %195

193:                                              ; preds = %188, %185
  %194 = phi ptr [ %182, %185 ], [ %189, %188 ]
  call void @kfree(ptr noundef %194) #8
  store ptr null, ptr %183, align 4
  br label %195

195:                                              ; preds = %193, %192, %179, %177
  %196 = icmp eq ptr %147, null
  br i1 %196, label %211, label %197

197:                                              ; preds = %195
  %198 = call ptr @kmemdup_nul(ptr noundef nonnull %147, i32 noundef %148, i32 noundef 3264) #8
  %199 = getelementptr inbounds %struct.gssp_upcall_data, ptr %1, i32 0, i32 5, i32 6
  store ptr %198, ptr %199, align 4
  %200 = icmp eq ptr %198, null
  br i1 %200, label %211, label %201

201:                                              ; preds = %197
  %202 = call ptr @strchr(ptr noundef nonnull %198, i32 noundef 64) #8
  %203 = icmp eq ptr %202, null
  br i1 %203, label %209, label %204

204:                                              ; preds = %201
  store i8 0, ptr %202, align 1
  %205 = load ptr, ptr %199, align 4
  %206 = call ptr @strchr(ptr noundef %205, i32 noundef 47) #8
  %207 = icmp eq ptr %206, null
  br i1 %207, label %209, label %208

208:                                              ; preds = %204
  store i8 64, ptr %206, align 1
  br label %211

209:                                              ; preds = %204, %201
  %210 = phi ptr [ %198, %201 ], [ %205, %204 ]
  call void @kfree(ptr noundef %210) #8
  store ptr null, ptr %199, align 4
  br label %211

211:                                              ; preds = %209, %208, %197, %195, %173
  call void @kfree(ptr noundef %145) #8
  br label %212

212:                                              ; preds = %211, %56, %50, %47
  %213 = phi ptr [ %147, %211 ], [ %43, %47 ], [ %51, %50 ], [ %60, %56 ]
  %214 = phi i32 [ %101, %211 ], [ -12, %47 ], [ -12, %56 ], [ -12, %50 ]
  call void @kfree(ptr noundef %213) #8
  br label %215

215:                                              ; preds = %212, %25
  %216 = phi i32 [ -12, %25 ], [ %214, %212 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #8
  ret i32 %216
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gssp_free_upcall_data(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.xdr_netobj, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #8
  %4 = getelementptr inbounds %struct.gssp_upcall_data, ptr %0, i32 0, i32 2, i32 1
  %5 = load ptr, ptr %4, align 4
  tail call void @kfree(ptr noundef %5) #8
  %6 = getelementptr inbounds %struct.gssp_upcall_data, ptr %0, i32 0, i32 3, i32 1
  %7 = load ptr, ptr %6, align 4
  tail call void @kfree(ptr noundef %7) #8
  %8 = getelementptr inbounds %struct.gssp_upcall_data, ptr %0, i32 0, i32 5, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %9) #8, !srcloc !10
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %9, ptr nonnull %9, i32 1, ptr nonnull elementtype(i32) %9) #8, !srcloc !15
  %13 = extractvalue { i32, i32 } %12, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !16
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = load ptr, ptr %8, align 4
  tail call void @groups_free(ptr noundef %16) #8
  br label %17

17:                                               ; preds = %15, %11, %1
  %18 = getelementptr inbounds %struct.gssp_upcall_data, ptr %0, i32 0, i32 5, i32 4
  %19 = load ptr, ptr %18, align 4
  tail call void @kfree(ptr noundef %19) #8
  %20 = getelementptr inbounds %struct.gssp_upcall_data, ptr %0, i32 0, i32 5, i32 5
  %21 = load ptr, ptr %20, align 4
  tail call void @kfree(ptr noundef %21) #8
  %22 = getelementptr inbounds %struct.gssp_upcall_data, ptr %0, i32 0, i32 5, i32 6
  %23 = load ptr, ptr %22, align 4
  tail call void @kfree(ptr noundef %23) #8
  %24 = getelementptr inbounds %struct.gssp_upcall_data, ptr %0, i32 0, i32 5, i32 7
  %25 = load ptr, ptr %24, align 4
  tail call void @gss_mech_put(ptr noundef %25) #8
  store ptr null, ptr %8, align 4
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %18, i8 0, i64 16, i1 false) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rpc_create(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gssx_enc_accept_sec_context(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gssx_dec_accept_sec_context(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpc_call_sync(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_release_client(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup_nul(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @groups_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gss_mech_put(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(2) }

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
!8 = !{i64 2149018667}
!9 = !{i64 2149018884}
!10 = !{i64 454082, i64 2147944053, i64 2147944079, i64 2147944126, i64 2147944148, i64 2147944176, i64 2147944196}
!11 = !{i64 2147957723, i64 2147957755, i64 2147957784, i64 2147957818, i64 2147957849, i64 2147957872}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{i64 2148056920}
!15 = !{i64 2147959306, i64 2147959338, i64 2147959367, i64 2147959401, i64 2147959432, i64 2147959455}
!16 = !{i64 2148057123}
