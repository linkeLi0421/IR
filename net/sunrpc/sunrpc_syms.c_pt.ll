; ModuleID = '/llk/IR/net/sunrpc/sunrpc_syms.c_pt.bc'
source_filename = "../net/sunrpc/sunrpc_syms.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sunrpc_net_id:\09\09\09\09\09"
module asm "\09.asciz \09\22sunrpc_net_id\22\09\09\09\09\09"
module asm "__kstrtabns_sunrpc_net_id:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type {}
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.10, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.10 = type { %struct.anon.11 }
%struct.anon.11 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.130, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.130 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.sunrpc_net = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.list_head, %struct.spinlock, ptr, ptr, %struct.spinlock, i32, i8, %struct.mutex, ptr, i32, i32, %struct.atomic_t, ptr }

@sunrpc_net_id = dso_local global i32 0, align 4
@__kstrtab_sunrpc_net_id = external dso_local constant [0 x i8], align 1
@__kstrtabns_sunrpc_net_id = external dso_local constant [0 x i8], align 1
@__ksymtab_sunrpc_net_id = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sunrpc_net_id to i32), ptr @__kstrtab_sunrpc_net_id, ptr @__kstrtabns_sunrpc_net_id }, section "___ksymtab_gpl+sunrpc_net_id", align 4
@sunrpc_net_ops = internal global %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @sunrpc_init_net, ptr null, ptr @sunrpc_exit_net, ptr null, ptr @sunrpc_net_id, i32 120 }, align 4
@__UNIQUE_ID_file441 = internal constant [30 x i8] c"sunrpc.file=net/sunrpc/sunrpc\00", section ".modinfo", align 1
@__UNIQUE_ID_license442 = internal constant [19 x i8] c"sunrpc.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_sunrpc__443_152_init_sunrpc5 = internal global ptr @init_sunrpc, section ".initcall5.init", align 4
@__exitcall_cleanup_sunrpc = internal global ptr @cleanup_sunrpc, section ".exitcall.exit", align 4
@sunrpc_exit_net.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [25 x i8] c"net/sunrpc/sunrpc_syms.c\00", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_file441, ptr @__UNIQUE_ID_license442, ptr @__exitcall_cleanup_sunrpc, ptr @__initcall__kmod_sunrpc__443_152_init_sunrpc5, ptr @__ksymtab_sunrpc_net_id, ptr @cleanup_sunrpc], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @cleanup_sunrpc() #0 section ".exit.text" {
  tail call void @rpc_sysfs_exit() #4
  tail call void @rpc_cleanup_clids() #4
  tail call void @xprt_cleanup_ids() #4
  tail call void @xprt_multipath_cleanup_ids() #4
  tail call void @rpcauth_remove_module() #4
  tail call void @cleanup_socket_xprt() #4
  tail call void @svc_cleanup_xprt_sock() #4
  tail call void @unregister_rpc_pipefs() #4
  tail call void @rpc_destroy_mempool() #4
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @sunrpc_net_ops) #4
  tail call void @auth_domain_cleanup() #4
  tail call void @rcu_barrier() #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_sysfs_exit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_cleanup_clids() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_cleanup_ids() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_multipath_cleanup_ids() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpcauth_remove_module() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cleanup_socket_xprt() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @svc_cleanup_xprt_sock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_rpc_pipefs() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_destroy_mempool() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @auth_domain_cleanup() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @init_sunrpc() #0 section ".init.text" {
  %1 = tail call i32 @rpc_init_mempool() #4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %24

3:                                                ; preds = %0
  %4 = tail call i32 @rpcauth_init_module() #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %22

6:                                                ; preds = %3
  tail call void @cache_initialize() #5
  %7 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @sunrpc_net_ops) #4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %20

9:                                                ; preds = %6
  %10 = tail call i32 @register_rpc_pipefs() #4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %9
  %13 = tail call i32 @rpc_sysfs_init() #4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  tail call void @svc_init_xprt_sock() #4
  %16 = tail call i32 @init_socket_xprt() #4
  br label %24

17:                                               ; preds = %12
  tail call void @unregister_rpc_pipefs() #4
  br label %18

18:                                               ; preds = %17, %9
  %19 = phi i32 [ %10, %9 ], [ %13, %17 ]
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @sunrpc_net_ops) #4
  br label %20

20:                                               ; preds = %18, %6
  %21 = phi i32 [ %7, %6 ], [ %19, %18 ]
  tail call void @rpcauth_remove_module() #4
  br label %22

22:                                               ; preds = %20, %3
  %23 = phi i32 [ %4, %3 ], [ %21, %20 ]
  tail call void @rpc_destroy_mempool() #4
  br label %24

24:                                               ; preds = %22, %15, %0
  %25 = phi i32 [ 0, %15 ], [ %1, %0 ], [ %23, %22 ]
  ret i32 %25
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @sunrpc_init_net(ptr noundef %0) #0 section ".init.text" {
  %2 = load i32, ptr @sunrpc_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !8
  %3 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 37
  %4 = load volatile ptr, ptr %3, align 64
  %5 = getelementptr [0 x ptr], ptr %4, i32 0, i32 %2
  %6 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !9
  %7 = tail call i32 @rpc_proc_init(ptr noundef %0) #4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %28

9:                                                ; preds = %1
  %10 = tail call i32 @ip_map_cache_create(ptr noundef %0) #4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %26

12:                                               ; preds = %9
  %13 = tail call i32 @unix_gid_cache_create(ptr noundef %0) #4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %12
  %16 = tail call i32 @rpc_pipefs_init_net(ptr noundef %0) #4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.sunrpc_net, ptr %6, i32 0, i32 8
  store volatile ptr %19, ptr %19, align 4
  %20 = getelementptr inbounds %struct.sunrpc_net, ptr %6, i32 0, i32 8, i32 1
  store ptr %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.sunrpc_net, ptr %6, i32 0, i32 9
  store i32 0, ptr %21, align 4
  %22 = getelementptr inbounds %struct.sunrpc_net, ptr %6, i32 0, i32 12
  store i32 0, ptr %22, align 4
  br label %28

23:                                               ; preds = %15
  tail call void @unix_gid_cache_destroy(ptr noundef %0) #4
  br label %24

24:                                               ; preds = %23, %12
  %25 = phi i32 [ %13, %12 ], [ %16, %23 ]
  tail call void @ip_map_cache_destroy(ptr noundef %0) #4
  br label %26

26:                                               ; preds = %24, %9
  %27 = phi i32 [ %10, %9 ], [ %25, %24 ]
  tail call void @rpc_proc_exit(ptr noundef %0) #4
  br label %28

28:                                               ; preds = %26, %18, %1
  %29 = phi i32 [ 0, %18 ], [ %7, %1 ], [ %27, %26 ]
  ret i32 %29
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sunrpc_exit_net(ptr noundef %0) #2 section ".ref.text" {
  %2 = load i32, ptr @sunrpc_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !8
  %3 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 37
  %4 = load volatile ptr, ptr %3, align 64
  %5 = getelementptr [0 x ptr], ptr %4, i32 0, i32 %2
  %6 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !9
  tail call void @rpc_pipefs_exit_net(ptr noundef %0) #4
  tail call void @unix_gid_cache_destroy(ptr noundef %0) #4
  tail call void @ip_map_cache_destroy(ptr noundef %0) #4
  tail call void @rpc_proc_exit(ptr noundef %0) #4
  %7 = getelementptr inbounds %struct.sunrpc_net, ptr %6, i32 0, i32 8
  %8 = load volatile ptr, ptr %7, align 4
  %9 = icmp ne ptr %8, %7
  %10 = load i1, ptr @sunrpc_exit_net.__already_done, align 1
  %11 = xor i1 %10, true
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %14, !prof !10

13:                                               ; preds = %1
  store i1 true, ptr @sunrpc_exit_net.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 77, i32 noundef 9, ptr noundef null) #4
  br label %14

14:                                               ; preds = %13, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpc_proc_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_map_cache_create(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unix_gid_cache_create(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpc_pipefs_init_net(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unix_gid_cache_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_map_cache_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_proc_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_pipefs_exit_net(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpc_init_mempool() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @rpcauth_init_module() local_unnamed_addr #3 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @cache_initialize() local_unnamed_addr #3 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_rpc_pipefs() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpc_sysfs_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @svc_init_xprt_sock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @init_socket_xprt() local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { noinline nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }

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
!8 = !{i64 2149045729}
!9 = !{i64 2149045946}
!10 = !{!"branch_weights", i32 1, i32 2000}
