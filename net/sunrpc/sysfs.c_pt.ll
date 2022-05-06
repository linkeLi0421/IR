; ModuleID = '/llk/IR/net/sunrpc/sysfs.c_pt.bc'
source_filename = "../net/sunrpc/sysfs.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kobj_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sysfs_ops = type { ptr, ptr }
%struct.kobj_ns_type_operations = type { i32, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.kobj_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.rpc_clnt = type { %struct.refcount_struct, i32, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.spinlock, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i8, ptr, ptr, %struct.atomic_t, i32, [65 x i8], %struct.rpc_pipe_dir_head, ptr, %struct.rpc_rtt, %struct.rpc_timeout, ptr, ptr, ptr, %union.anon.140, ptr, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.rpc_pipe_dir_head = type { %struct.list_head, ptr }
%struct.rpc_rtt = type { i32, [5 x i32], [5 x i32], [5 x i32] }
%struct.rpc_timeout = type { i32, i32, i32, i32, i8 }
%union.anon.140 = type { %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.rpc_sysfs_client = type { %struct.kobject, ptr, ptr, ptr }
%struct.rpc_xprt_switch = type { %struct.spinlock, %struct.kref, i32, i32, i32, i32, %struct.atomic_t, %struct.list_head, ptr, ptr, ptr, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.rpc_xprt = type { %struct.kref, ptr, i32, ptr, %struct.__kernel_sockaddr_storage, i32, i32, i32, i32, i32, %struct.rpc_wait_queue, %struct.rpc_wait_queue, %struct.rpc_wait_queue, %struct.rpc_wait_queue, %struct.list_head, i32, i32, i32, i32, i8, %struct.atomic_t, i32, %struct.list_head, i32, i32, i32, %struct.work_struct, %struct.timer_list, i32, i32, i32, i32, %struct.atomic_t, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, ptr, %struct.list_head, %struct.atomic_t, ptr, ptr, i32, i32, %struct.atomic_t, %struct.spinlock, %struct.list_head, %struct.rb_root, %struct.anon.139, ptr, ptr, [6 x ptr], %struct.callback_head, ptr, ptr, i8 }
%struct.__kernel_sockaddr_storage = type { %union.anon.137 }
%union.anon.137 = type { ptr, [124 x i8] }
%struct.rpc_wait_queue = type { %struct.spinlock, [4 x %struct.list_head], i8, i8, i8, i16, %struct.rpc_timer, ptr }
%struct.rpc_timer = type { %struct.list_head, i32, %struct.delayed_work }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rb_root = type { ptr }
%struct.anon.139 = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.rpc_sysfs_xprt_switch = type { %struct.kobject, ptr, ptr, ptr }
%struct.rpc_sysfs_xprt = type { %struct.kobject, ptr, ptr }
%struct.xprt_class = type { %struct.list_head, i32, ptr, ptr, [32 x i8], [0 x ptr] }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.69 }
%union.anon.69 = type { [4 x i32] }
%struct.xprt_addr = type { ptr, %struct.callback_head }
%struct.sock_xprt = type { %struct.rpc_xprt, ptr, ptr, ptr, %struct.anon.141, %struct.anon.143, i32, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.mutex, %struct.__kernel_sockaddr_storage, i16, i32, i32, i32, %struct.rpc_timeout, ptr, ptr, ptr, ptr }
%struct.anon.141 = type { %struct.anon.142, i32, i32, i32 }
%struct.anon.142 = type { i32, i32, i32 }
%struct.anon.143 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }

@.str = private unnamed_addr constant [7 x i8] c"sunrpc\00", align 1
@kernel_kobj = external dso_local local_unnamed_addr global ptr, align 4
@rpc_sunrpc_kset = internal unnamed_addr global ptr null, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"rpc-clients\00", align 1
@rpc_sunrpc_client_kobj = internal unnamed_addr global ptr null, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"xprt-switches\00", align 1
@rpc_sunrpc_xprt_switch_kobj = internal unnamed_addr global ptr null, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"\014can't create link to %s in sysfs (%d)\0A\00", align 1
@__const.rpc_sysfs_client_destroy.name = private unnamed_addr constant [7 x i8] c"switch\00", align 1
@rpc_sysfs_object_type = internal global %struct.kobj_type { ptr @rpc_sysfs_object_release, ptr @kobj_sysfs_ops, ptr null, ptr null, ptr @rpc_sysfs_object_child_ns_type, ptr null, ptr null }, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@kobj_sysfs_ops = external dso_local constant %struct.sysfs_ops, align 4
@net_ns_type_operations = external dso_local constant %struct.kobj_ns_type_operations, align 4
@rpc_sysfs_client_type = internal global %struct.kobj_type { ptr @rpc_sysfs_client_release, ptr @kobj_sysfs_ops, ptr null, ptr null, ptr null, ptr @rpc_sysfs_client_namespace, ptr null }, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"clnt-%d\00", align 1
@rpc_sysfs_xprt_switch_type = internal global %struct.kobj_type { ptr @rpc_sysfs_xprt_switch_release, ptr @kobj_sysfs_ops, ptr null, ptr @rpc_sysfs_xprt_switch_groups, ptr null, ptr @rpc_sysfs_xprt_switch_namespace, ptr null }, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"switch-%d\00", align 1
@rpc_sysfs_xprt_switch_groups = internal global [2 x ptr] [ptr @rpc_sysfs_xprt_switch_group, ptr null], align 4
@rpc_sysfs_xprt_switch_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @rpc_sysfs_xprt_switch_attrs, ptr null }, align 4
@rpc_sysfs_xprt_switch_attrs = internal global [2 x ptr] [ptr @rpc_sysfs_xprt_switch_info, ptr null], align 4
@rpc_sysfs_xprt_switch_info = internal global %struct.kobj_attribute { %struct.attribute { ptr @.str.7, i16 292 }, ptr @rpc_sysfs_xprt_switch_info_show, ptr null }, align 4
@.str.7 = private unnamed_addr constant [17 x i8] c"xprt_switch_info\00", align 1
@.str.8 = private unnamed_addr constant [65 x i8] c"num_xprts=%u\0Anum_active=%u\0Anum_unique_destaddr=%u\0Aqueue_len=%ld\0A\00", align 1
@rpc_sysfs_xprt_type = internal global %struct.kobj_type { ptr @rpc_sysfs_xprt_release, ptr @kobj_sysfs_ops, ptr null, ptr @rpc_sysfs_xprt_groups, ptr null, ptr @rpc_sysfs_xprt_namespace, ptr null }, align 4
@.str.9 = private unnamed_addr constant [11 x i8] c"xprt-%d-%s\00", align 1
@rpc_sysfs_xprt_groups = internal global [2 x ptr] [ptr @rpc_sysfs_xprt_group, ptr null], align 4
@rpc_sysfs_xprt_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @rpc_sysfs_xprt_attrs, ptr null }, align 4
@rpc_sysfs_xprt_attrs = internal global [5 x ptr] [ptr @rpc_sysfs_xprt_dstaddr, ptr @rpc_sysfs_xprt_srcaddr, ptr @rpc_sysfs_xprt_info, ptr @rpc_sysfs_xprt_change_state, ptr null], align 4
@rpc_sysfs_xprt_dstaddr = internal global %struct.kobj_attribute { %struct.attribute { ptr @.str.10, i16 420 }, ptr @rpc_sysfs_xprt_dstaddr_show, ptr @rpc_sysfs_xprt_dstaddr_store }, align 4
@rpc_sysfs_xprt_srcaddr = internal global %struct.kobj_attribute { %struct.attribute { ptr @.str.13, i16 420 }, ptr @rpc_sysfs_xprt_srcaddr_show, ptr null }, align 4
@rpc_sysfs_xprt_info = internal global %struct.kobj_attribute { %struct.attribute { ptr @.str.15, i16 292 }, ptr @rpc_sysfs_xprt_info_show, ptr null }, align 4
@rpc_sysfs_xprt_change_state = internal global %struct.kobj_attribute { %struct.attribute { ptr @.str.18, i16 420 }, ptr @rpc_sysfs_xprt_state_show, ptr @rpc_sysfs_xprt_state_change }, align 4
@.str.10 = private unnamed_addr constant [8 x i8] c"dstaddr\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"srcaddr\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"%pISc\0A\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"xprt_info\00", align 1
@.str.16 = private unnamed_addr constant [211 x i8] c"last_used=%lu\0Acur_cong=%lu\0Acong_win=%lu\0Amax_num_slots=%u\0Amin_num_slots=%u\0Anum_reqs=%u\0Abinding_q_len=%u\0Asending_q_len=%u\0Apending_q_len=%u\0Abacklog_q_len=%u\0Amain_xprt=%d\0Asrc_port=%u\0Atasks_queuelen=%ld\0Adst_port=%s\0A\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"xprt_state\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"state=CLOSED\0A\00", align 1
@.str.20 = private unnamed_addr constant [43 x i8] c"state=%s %s %s %s %s %s %s %s %s %s %s %s\0A\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"LOCKED\00", align 1
@.str.22 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"CONNECTED\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"CONNECTING\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"CLOSE_WAIT\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"BOUND\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"BOUNDING\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"CLOSING\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"CONGESTED\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"CWND_WAIT\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"WRITE_SPACE\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"OFFLINE\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"REMOVE\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"offline\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"online\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"remove\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rpc_sysfs_init() local_unnamed_addr #0 {
  %1 = load ptr, ptr @kernel_kobj, align 4
  %2 = tail call ptr @kset_create_and_add(ptr noundef nonnull @.str, ptr noundef null, ptr noundef %1) #13
  store ptr %2, ptr @rpc_sunrpc_kset, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %28, label %4

4:                                                ; preds = %0
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 36) #14
  %7 = icmp eq ptr %6, null
  br i1 %7, label %26, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.kobject, ptr %6, i32 0, i32 3
  store ptr %2, ptr %9, align 8
  %10 = tail call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef nonnull %6, ptr noundef nonnull @rpc_sysfs_object_type, ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1) #13
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @kobject_put(ptr noundef nonnull %6) #13
  br label %26

13:                                               ; preds = %8
  store ptr %6, ptr @rpc_sunrpc_client_kobj, align 4
  %14 = load ptr, ptr @rpc_sunrpc_kset, align 4
  %15 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %16 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 36) #14
  %17 = icmp eq ptr %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.kobject, ptr %16, i32 0, i32 3
  store ptr %14, ptr %19, align 8
  %20 = tail call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef nonnull %16, ptr noundef nonnull @rpc_sysfs_object_type, ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2) #13
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  tail call void @kobject_put(ptr noundef nonnull %16) #13
  br label %24

23:                                               ; preds = %18
  store ptr %16, ptr @rpc_sunrpc_xprt_switch_kobj, align 4
  br label %28

24:                                               ; preds = %22, %13
  store ptr null, ptr @rpc_sunrpc_xprt_switch_kobj, align 4
  %25 = load ptr, ptr @rpc_sunrpc_client_kobj, align 4
  tail call void @kobject_put(ptr noundef %25) #13
  br label %26

26:                                               ; preds = %24, %12, %4
  store ptr null, ptr @rpc_sunrpc_client_kobj, align 4
  %27 = load ptr, ptr @rpc_sunrpc_kset, align 4
  tail call void @kset_unregister(ptr noundef %27) #13
  store ptr null, ptr @rpc_sunrpc_kset, align 4
  br label %28

28:                                               ; preds = %26, %23, %0
  %29 = phi i32 [ -12, %26 ], [ -12, %0 ], [ 0, %23 ]
  ret i32 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kset_create_and_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kset_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rpc_sysfs_exit() local_unnamed_addr #0 {
  %1 = load ptr, ptr @rpc_sunrpc_client_kobj, align 4
  tail call void @kobject_put(ptr noundef %1) #13
  %2 = load ptr, ptr @rpc_sunrpc_xprt_switch_kobj, align 4
  tail call void @kobject_put(ptr noundef %2) #13
  %3 = load ptr, ptr @rpc_sunrpc_kset, align 4
  tail call void @kset_unregister(ptr noundef %3) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rpc_sysfs_client_setup(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [7 x i8], align 1
  %5 = load ptr, ptr @rpc_sunrpc_client_kobj, align 4
  %6 = getelementptr inbounds %struct.rpc_clnt, ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 48) #14
  %10 = icmp eq ptr %9, null
  br i1 %10, label %30, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.rpc_sysfs_client, ptr %9, i32 0, i32 1
  store ptr %2, ptr %12, align 4
  %13 = load ptr, ptr @rpc_sunrpc_kset, align 4
  %14 = getelementptr inbounds %struct.kobject, ptr %9, i32 0, i32 3
  store ptr %13, ptr %14, align 8
  %15 = tail call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef nonnull %9, ptr noundef nonnull @rpc_sysfs_client_type, ptr noundef %5, ptr noundef nonnull @.str.5, i32 noundef %7) #13
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  tail call void @kobject_put(ptr noundef nonnull %9) #13
  br label %30

18:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %4) #13
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(7) %4, ptr noundef nonnull align 1 dereferenceable(7) @__const.rpc_sysfs_client_destroy.name, i32 7, i1 false)
  %19 = getelementptr inbounds %struct.rpc_xprt_switch, ptr %1, i32 0, i32 10
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.rpc_clnt, ptr %0, i32 0, i32 26
  store ptr %9, ptr %21, align 4
  %22 = getelementptr inbounds %struct.rpc_sysfs_client, ptr %9, i32 0, i32 2
  store ptr %0, ptr %22, align 8
  %23 = getelementptr inbounds %struct.rpc_sysfs_client, ptr %9, i32 0, i32 3
  store ptr %1, ptr %23, align 4
  %24 = tail call i32 @kobject_uevent(ptr noundef nonnull %9, i32 noundef 0) #13
  %25 = call i32 @sysfs_create_link_nowarn(ptr noundef nonnull %9, ptr noundef %20, ptr noundef nonnull %4) #13
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %18
  %28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull %4, i32 noundef %25) #15
  br label %29

29:                                               ; preds = %27, %18
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %4) #13
  br label %30

30:                                               ; preds = %29, %17, %3
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_link_nowarn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rpc_sysfs_xprt_switch_setup(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.rpc_xprt_switch, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rpc_xprt, ptr %1, i32 0, i32 49
  %9 = load ptr, ptr %8, align 8
  br label %10

10:                                               ; preds = %7, %3
  %11 = phi ptr [ %9, %7 ], [ %5, %3 ]
  %12 = load ptr, ptr @rpc_sunrpc_xprt_switch_kobj, align 4
  %13 = or i32 %2, 256
  %14 = and i32 %2, 17
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16, !prof !8

16:                                               ; preds = %10
  %17 = and i32 %2, 1
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %18, i32 1, i32 2
  br label %20

20:                                               ; preds = %16, %10
  %21 = phi i32 [ 0, %10 ], [ %19, %16 ]
  %22 = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %21, i32 6
  %23 = load ptr, ptr %22, align 4
  %24 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %23, i32 noundef %13, i32 noundef 48) #14
  %25 = icmp eq ptr %24, null
  br i1 %25, label %40, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.rpc_sysfs_xprt_switch, ptr %24, i32 0, i32 1
  store ptr %11, ptr %27, align 4
  %28 = load ptr, ptr @rpc_sunrpc_kset, align 4
  %29 = getelementptr inbounds %struct.kobject, ptr %24, i32 0, i32 3
  store ptr %28, ptr %29, align 8
  %30 = getelementptr inbounds %struct.rpc_xprt_switch, ptr %0, i32 0, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = tail call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef nonnull %24, ptr noundef nonnull @rpc_sysfs_xprt_switch_type, ptr noundef %12, ptr noundef nonnull @.str.6, i32 noundef %31) #13
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %26
  tail call void @kobject_put(ptr noundef nonnull %24) #13
  br label %40

35:                                               ; preds = %26
  %36 = getelementptr inbounds %struct.rpc_xprt_switch, ptr %0, i32 0, i32 10
  store ptr %24, ptr %36, align 4
  %37 = getelementptr inbounds %struct.rpc_sysfs_xprt_switch, ptr %24, i32 0, i32 2
  store ptr %0, ptr %37, align 8
  %38 = getelementptr inbounds %struct.rpc_sysfs_xprt_switch, ptr %24, i32 0, i32 3
  store ptr %1, ptr %38, align 4
  %39 = tail call i32 @kobject_uevent(ptr noundef nonnull %24, i32 noundef 0) #13
  br label %40

40:                                               ; preds = %35, %34, %20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rpc_sysfs_xprt_setup(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.rpc_xprt_switch, ptr %0, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  %6 = or i32 %2, 256
  %7 = and i32 %2, 17
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9, !prof !8

9:                                                ; preds = %3
  %10 = and i32 %2, 1
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %11, i32 1, i32 2
  br label %13

13:                                               ; preds = %9, %3
  %14 = phi i32 [ 0, %3 ], [ %12, %9 ]
  %15 = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %14, i32 6
  %16 = load ptr, ptr %15, align 4
  %17 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef %6, i32 noundef 44) #14
  %18 = icmp eq ptr %17, null
  br i1 %18, label %34, label %19

19:                                               ; preds = %13
  %20 = load ptr, ptr @rpc_sunrpc_kset, align 4
  %21 = getelementptr inbounds %struct.kobject, ptr %17, i32 0, i32 3
  store ptr %20, ptr %21, align 8
  %22 = getelementptr inbounds %struct.rpc_xprt, ptr %1, i32 0, i32 2
  %23 = load i32, ptr %22, align 8
  %24 = getelementptr %struct.rpc_xprt, ptr %1, i32 0, i32 51, i32 2
  %25 = load ptr, ptr %24, align 8
  %26 = tail call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef nonnull %17, ptr noundef nonnull @rpc_sysfs_xprt_type, ptr noundef %5, ptr noundef nonnull @.str.9, i32 noundef %23, ptr noundef %25) #13
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %19
  tail call void @kobject_put(ptr noundef nonnull %17) #13
  br label %34

29:                                               ; preds = %19
  %30 = getelementptr inbounds %struct.rpc_xprt, ptr %1, i32 0, i32 54
  store ptr %17, ptr %30, align 4
  %31 = getelementptr inbounds %struct.rpc_sysfs_xprt, ptr %17, i32 0, i32 1
  store ptr %1, ptr %31, align 4
  %32 = getelementptr inbounds %struct.rpc_sysfs_xprt, ptr %17, i32 0, i32 2
  store ptr %0, ptr %32, align 8
  %33 = tail call i32 @kobject_uevent(ptr noundef nonnull %17, i32 noundef 0) #13
  br label %34

34:                                               ; preds = %29, %28, %13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rpc_sysfs_client_destroy(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = alloca [7 x i8], align 1
  %3 = getelementptr inbounds %struct.rpc_clnt, ptr %0, i32 0, i32 26
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %2) #13
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(7) %2, ptr noundef nonnull align 1 dereferenceable(7) @__const.rpc_sysfs_client_destroy.name, i32 7, i1 false)
  call void @sysfs_remove_link(ptr noundef nonnull %4, ptr noundef nonnull %2) #13
  %7 = call i32 @kobject_uevent(ptr noundef nonnull %4, i32 noundef 1) #13
  call void @kobject_del(ptr noundef nonnull %4) #13
  call void @kobject_put(ptr noundef nonnull %4) #13
  store ptr null, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %2) #13
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_link(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rpc_sysfs_xprt_switch_destroy(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rpc_xprt_switch, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @kobject_uevent(ptr noundef nonnull %3, i32 noundef 1) #13
  tail call void @kobject_del(ptr noundef nonnull %3) #13
  tail call void @kobject_put(ptr noundef nonnull %3) #13
  store ptr null, ptr %2, align 4
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rpc_sysfs_xprt_destroy(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 54
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @kobject_uevent(ptr noundef nonnull %3, i32 noundef 1) #13
  tail call void @kobject_del(ptr noundef nonnull %3) #13
  tail call void @kobject_put(ptr noundef nonnull %3) #13
  store ptr null, ptr %2, align 4
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_init_and_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rpc_sysfs_object_release(ptr noundef %0) #0 {
  tail call void @kfree(ptr noundef %0) #13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal nonnull ptr @rpc_sysfs_object_child_ns_type(ptr nocapture noundef readnone %0) #6 {
  ret ptr @net_ns_type_operations
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rpc_sysfs_client_release(ptr noundef %0) #0 {
  tail call void @kfree(ptr noundef %0) #13
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal ptr @rpc_sysfs_client_namespace(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.rpc_sysfs_client, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rpc_sysfs_xprt_switch_release(ptr noundef %0) #0 {
  tail call void @kfree(ptr noundef %0) #13
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal ptr @rpc_sysfs_xprt_switch_namespace(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.rpc_sysfs_xprt_switch, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rpc_sysfs_xprt_switch_info_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.rpc_sysfs_xprt_switch, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = tail call ptr @xprt_switch_get(ptr noundef %5) #13
  %7 = icmp eq ptr %6, null
  br i1 %7, label %19, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.rpc_xprt_switch, ptr %6, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.rpc_xprt_switch, ptr %6, i32 0, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.rpc_xprt_switch, ptr %6, i32 0, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.rpc_xprt_switch, ptr %6, i32 0, i32 6
  %16 = load volatile i32, ptr %15, align 4
  %17 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.8, i32 noundef %10, i32 noundef %12, i32 noundef %14, i32 noundef %16)
  tail call void @xprt_switch_put(ptr noundef nonnull %6) #13
  %18 = add i32 %17, 1
  br label %19

19:                                               ; preds = %8, %3
  %20 = phi i32 [ %18, %8 ], [ 0, %3 ]
  ret i32 %20
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_switch_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xprt_switch_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rpc_sysfs_xprt_release(ptr noundef %0) #0 {
  tail call void @kfree(ptr noundef %0) #13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal ptr @rpc_sysfs_xprt_namespace(ptr nocapture noundef readonly %0) #9 {
  %2 = getelementptr inbounds %struct.rpc_sysfs_xprt, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.rpc_xprt, ptr %3, i32 0, i32 49
  %5 = load ptr, ptr %4, align 8
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rpc_sysfs_xprt_dstaddr_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.rpc_sysfs_xprt, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call ptr @xprt_get(ptr noundef %5) #13
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.rpc_xprt, ptr %6, i32 0, i32 51
  %10 = load ptr, ptr %9, align 8
  %11 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.11, ptr noundef %10)
  tail call void @xprt_put(ptr noundef nonnull %6) #13
  %12 = add i32 %11, 1
  br label %13

13:                                               ; preds = %8, %3
  %14 = phi i32 [ %12, %8 ], [ 0, %3 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rpc_sysfs_xprt_dstaddr_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.rpc_sysfs_xprt, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = tail call ptr @xprt_get(ptr noundef %6) #13
  %8 = icmp eq ptr %7, null
  br i1 %8, label %62, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.rpc_xprt, ptr %7, i32 0, i32 53
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.xprt_class, ptr %11, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  switch i32 %13, label %60 [
    i32 6, label %14
    i32 256, label %14
  ]

14:                                               ; preds = %9, %9
  %15 = getelementptr inbounds %struct.rpc_xprt, ptr %7, i32 0, i32 18
  %16 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %15) #13
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = tail call i32 @out_of_line_wait_on_bit_lock(ptr noundef %15, i32 noundef 0, ptr noundef nonnull @bit_wait, i32 noundef 258) #13
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %60

21:                                               ; preds = %18, %14
  %22 = getelementptr inbounds %struct.rpc_xprt, ptr %7, i32 0, i32 4
  %23 = load i16, ptr %22, align 2
  switch i16 %23, label %32 [
    i16 2, label %24
    i16 10, label %26
  ]

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.sockaddr_in, ptr %22, i32 0, i32 1
  br label %28

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.sockaddr_in6, ptr %22, i32 0, i32 1
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi ptr [ %27, %26 ], [ %25, %24 ]
  %30 = load i16, ptr %29, align 2
  %31 = tail call i16 @llvm.bswap.i16(i16 %30) #13
  br label %32

32:                                               ; preds = %28, %21
  %33 = phi i16 [ 0, %21 ], [ %31, %28 ]
  %34 = tail call i32 @strcspn(ptr noundef %2, ptr noundef nonnull @.str.12)
  %35 = tail call ptr @kstrndup(ptr noundef %2, i32 noundef %34, i32 noundef 3264) #13
  %36 = icmp eq ptr %35, null
  br i1 %36, label %57, label %37

37:                                               ; preds = %32
  %38 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %39 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %38, i32 noundef 3520, i32 noundef 12) #14
  %40 = icmp eq ptr %39, null
  br i1 %40, label %59, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.rpc_xprt, ptr %7, i32 0, i32 51
  %43 = load volatile ptr, ptr %42, align 8
  store ptr %43, ptr %39, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !9
  store volatile ptr %35, ptr %42, align 8
  %44 = getelementptr inbounds %struct.xprt_addr, ptr %39, i32 0, i32 1
  tail call void @call_rcu(ptr noundef %44, ptr noundef nonnull @free_xprt_addr) #13
  %45 = getelementptr inbounds %struct.rpc_xprt, ptr %7, i32 0, i32 49
  %46 = load ptr, ptr %45, align 8
  %47 = tail call i32 @rpc_pton(ptr noundef %46, ptr noundef %2, i32 noundef %34, ptr noundef %22, i32 noundef 16) #13
  %48 = getelementptr inbounds %struct.rpc_xprt, ptr %7, i32 0, i32 5
  store i32 %47, ptr %48, align 8
  %49 = load i16, ptr %22, align 2
  switch i16 %49, label %56 [
    i16 2, label %50
    i16 10, label %53
  ]

50:                                               ; preds = %41
  %51 = tail call i16 @llvm.bswap.i16(i16 %33) #13
  %52 = getelementptr inbounds %struct.sockaddr_in, ptr %22, i32 0, i32 1
  store i16 %51, ptr %52, align 2
  br label %56

53:                                               ; preds = %41
  %54 = tail call i16 @llvm.bswap.i16(i16 %33) #13
  %55 = getelementptr inbounds %struct.sockaddr_in6, ptr %22, i32 0, i32 1
  store i16 %54, ptr %55, align 2
  br label %56

56:                                               ; preds = %53, %50, %41
  tail call void @xprt_force_disconnect(ptr noundef nonnull %7) #13
  br label %57

57:                                               ; preds = %59, %56, %32
  %58 = phi i32 [ %3, %56 ], [ -12, %32 ], [ -12, %59 ]
  tail call void @xprt_release_write(ptr noundef nonnull %7, ptr noundef null) #13
  br label %60

59:                                               ; preds = %37
  tail call void @kfree(ptr noundef nonnull %35) #13
  br label %57

60:                                               ; preds = %57, %18, %9
  %61 = phi i32 [ -95, %9 ], [ %58, %57 ], [ -4, %18 ]
  tail call void @xprt_put(ptr noundef nonnull %7) #13
  br label %62

62:                                               ; preds = %60, %4
  %63 = phi i32 [ 0, %4 ], [ %61, %60 ]
  ret i32 %63
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xprt_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kstrndup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @free_xprt_addr(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #13
  tail call void @kfree(ptr noundef %2) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpc_pton(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_force_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_release_write(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @out_of_line_wait_on_bit_lock(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bit_wait(ptr noundef, i32 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #11

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rpc_sysfs_xprt_srcaddr_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.__kernel_sockaddr_storage, align 4
  %5 = getelementptr inbounds %struct.rpc_sysfs_xprt, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = tail call ptr @xprt_get(ptr noundef %6) #13
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(128) %4, i8 0, i32 128, i1 false), !annotation !10
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.rpc_xprt, ptr %7, i32 0, i32 18
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %11, 2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9, %3
  tail call void @xprt_put(ptr noundef %7) #13
  br label %28

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.sock_xprt, ptr %7, i32 0, i32 10
  tail call void @mutex_lock(ptr noundef %16) #13
  %17 = getelementptr inbounds %struct.sock_xprt, ptr %7, i32 0, i32 1
  %18 = load ptr, ptr %17, align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %15
  %21 = call i32 @kernel_getsockname(ptr noundef nonnull %18, ptr noundef nonnull %4) #13
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.14, ptr noundef nonnull %4)
  %25 = add i32 %24, 1
  br label %26

26:                                               ; preds = %23, %20, %15
  %27 = phi i32 [ 0, %15 ], [ 0, %20 ], [ %25, %23 ]
  call void @mutex_unlock(ptr noundef %16) #13
  call void @xprt_put(ptr noundef nonnull %7) #13
  br label %28

28:                                               ; preds = %26, %14
  %29 = phi i32 [ %27, %26 ], [ -107, %14 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #13
  ret i32 %29
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_getsockname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rpc_sysfs_xprt_info_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.rpc_sysfs_xprt, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call ptr @xprt_get(ptr noundef %5) #13
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.rpc_xprt, ptr %6, i32 0, i32 18
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %10, 2
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %8, %3
  tail call void @xprt_put(ptr noundef %6) #13
  br label %68

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.rpc_xprt, ptr %6, i32 0, i32 28
  %16 = load i32, ptr %15, align 8
  %17 = getelementptr inbounds %struct.rpc_xprt, ptr %6, i32 0, i32 7
  %18 = load i32, ptr %17, align 8
  %19 = getelementptr inbounds %struct.rpc_xprt, ptr %6, i32 0, i32 8
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.rpc_xprt, ptr %6, i32 0, i32 15
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.rpc_xprt, ptr %6, i32 0, i32 16
  %24 = load i32, ptr %23, align 8
  %25 = getelementptr inbounds %struct.rpc_xprt, ptr %6, i32 0, i32 17
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.rpc_xprt, ptr %6, i32 0, i32 10, i32 5
  %28 = load i16, ptr %27, align 4
  %29 = zext i16 %28 to i32
  %30 = getelementptr inbounds %struct.rpc_xprt, ptr %6, i32 0, i32 11, i32 5
  %31 = load i16, ptr %30, align 4
  %32 = zext i16 %31 to i32
  %33 = getelementptr inbounds %struct.rpc_xprt, ptr %6, i32 0, i32 12, i32 5
  %34 = load i16, ptr %33, align 4
  %35 = zext i16 %34 to i32
  %36 = getelementptr inbounds %struct.rpc_xprt, ptr %6, i32 0, i32 13, i32 5
  %37 = load i16, ptr %36, align 4
  %38 = zext i16 %37 to i32
  %39 = getelementptr inbounds %struct.rpc_xprt, ptr %6, i32 0, i32 55
  %40 = load i8, ptr %39, align 8, !range !11
  %41 = zext i8 %40 to i32
  %42 = getelementptr inbounds %struct.rpc_xprt, ptr %6, i32 0, i32 53
  %43 = load ptr, ptr %42, align 8
  %44 = getelementptr inbounds %struct.xprt_class, ptr %43, i32 0, i32 1
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, 6
  br i1 %46, label %50, label %47

47:                                               ; preds = %14
  %48 = getelementptr inbounds %struct.rpc_xprt, ptr %6, i32 0, i32 32
  %49 = load volatile i32, ptr %48, align 4
  br label %61

50:                                               ; preds = %14
  %51 = tail call zeroext i16 @get_srcport(ptr noundef nonnull %6) #13
  %52 = load ptr, ptr %42, align 8
  %53 = getelementptr inbounds %struct.xprt_class, ptr %52, i32 0, i32 1
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr inbounds %struct.rpc_xprt, ptr %6, i32 0, i32 32
  %56 = load volatile i32, ptr %55, align 4
  %57 = icmp eq i32 %54, 6
  br i1 %57, label %58, label %61

58:                                               ; preds = %50
  %59 = getelementptr %struct.rpc_xprt, ptr %6, i32 0, i32 51, i32 1
  %60 = load ptr, ptr %59, align 4
  br label %61

61:                                               ; preds = %58, %50, %47
  %62 = phi i32 [ %56, %58 ], [ %56, %50 ], [ %49, %47 ]
  %63 = phi i16 [ %51, %58 ], [ %51, %50 ], [ 0, %47 ]
  %64 = phi ptr [ %60, %58 ], [ @.str.17, %50 ], [ @.str.17, %47 ]
  %65 = zext i16 %63 to i32
  %66 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.16, i32 noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef %22, i32 noundef %24, i32 noundef %26, i32 noundef %29, i32 noundef %32, i32 noundef %35, i32 noundef %38, i32 noundef %41, i32 noundef %65, i32 noundef %62, ptr noundef %64)
  tail call void @xprt_put(ptr noundef nonnull %6) #13
  %67 = add i32 %66, 1
  br label %68

68:                                               ; preds = %61, %13
  %69 = phi i32 [ %67, %61 ], [ -107, %13 ]
  ret i32 %69
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @get_srcport(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rpc_sysfs_xprt_state_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.rpc_sysfs_xprt, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call ptr @xprt_get(ptr noundef %5) #13
  %7 = icmp eq ptr %6, null
  br i1 %7, label %66, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.rpc_xprt, ptr %6, i32 0, i32 18
  %10 = load i32, ptr %9, align 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(14) %2, ptr noundef nonnull align 1 dereferenceable(14) @.str.19, i32 14, i1 false)
  br label %64

13:                                               ; preds = %8
  %14 = load volatile i32, ptr %9, align 4
  %15 = and i32 %14, 1
  %16 = load volatile i32, ptr %9, align 4
  %17 = load volatile i32, ptr %9, align 4
  %18 = load volatile i32, ptr %9, align 4
  %19 = load volatile i32, ptr %9, align 4
  %20 = load volatile i32, ptr %9, align 4
  %21 = load volatile i32, ptr %9, align 4
  %22 = load volatile i32, ptr %9, align 4
  %23 = load volatile i32, ptr %9, align 4
  %24 = load volatile i32, ptr %9, align 4
  %25 = load volatile i32, ptr %9, align 4
  %26 = load volatile i32, ptr %9, align 4
  %27 = icmp eq i32 %15, 0
  %28 = select i1 %27, ptr @.str.22, ptr @.str.21
  %29 = and i32 %16, 2
  %30 = icmp eq i32 %29, 0
  %31 = select i1 %30, ptr @.str.22, ptr @.str.23
  %32 = and i32 %17, 4
  %33 = icmp eq i32 %32, 0
  %34 = select i1 %33, ptr @.str.22, ptr @.str.24
  %35 = and i32 %18, 8
  %36 = icmp eq i32 %35, 0
  %37 = select i1 %36, ptr @.str.22, ptr @.str.25
  %38 = and i32 %19, 16
  %39 = icmp eq i32 %38, 0
  %40 = select i1 %39, ptr @.str.22, ptr @.str.26
  %41 = and i32 %20, 32
  %42 = icmp eq i32 %41, 0
  %43 = select i1 %42, ptr @.str.22, ptr @.str.27
  %44 = and i32 %21, 64
  %45 = icmp eq i32 %44, 0
  %46 = select i1 %45, ptr @.str.22, ptr @.str.28
  %47 = and i32 %22, 512
  %48 = icmp eq i32 %47, 0
  %49 = select i1 %48, ptr @.str.22, ptr @.str.29
  %50 = and i32 %23, 1024
  %51 = icmp eq i32 %50, 0
  %52 = select i1 %51, ptr @.str.22, ptr @.str.30
  %53 = and i32 %24, 2048
  %54 = icmp eq i32 %53, 0
  %55 = select i1 %54, ptr @.str.22, ptr @.str.31
  %56 = and i32 %25, 128
  %57 = icmp eq i32 %56, 0
  %58 = select i1 %57, ptr @.str.22, ptr @.str.32
  %59 = and i32 %26, 256
  %60 = icmp eq i32 %59, 0
  %61 = select i1 %60, ptr @.str.22, ptr @.str.33
  %62 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.20, ptr noundef nonnull %28, ptr noundef nonnull %31, ptr noundef nonnull %34, ptr noundef nonnull %37, ptr noundef nonnull %40, ptr noundef nonnull %43, ptr noundef nonnull %46, ptr noundef nonnull %49, ptr noundef nonnull %52, ptr noundef nonnull %55, ptr noundef nonnull %58, ptr noundef nonnull %61)
  %63 = add i32 %62, 1
  br label %64

64:                                               ; preds = %13, %12
  %65 = phi i32 [ %63, %13 ], [ 14, %12 ]
  tail call void @xprt_put(ptr noundef nonnull %6) #13
  br label %66

66:                                               ; preds = %64, %3
  %67 = phi i32 [ %65, %64 ], [ 0, %3 ]
  ret i32 %67
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rpc_sysfs_xprt_state_change(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.rpc_sysfs_xprt, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = tail call ptr @xprt_get(ptr noundef %6) #13
  %8 = getelementptr inbounds %struct.rpc_sysfs_xprt, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = tail call ptr @xprt_switch_get(ptr noundef %9) #13
  %11 = icmp eq ptr %7, null
  br i1 %11, label %87, label %12

12:                                               ; preds = %4
  %13 = tail call i32 @strncmp(ptr noundef %2, ptr noundef nonnull dereferenceable(8) @.str.34, i32 noundef 7)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %12
  %16 = tail call i32 @strncmp(ptr noundef %2, ptr noundef nonnull dereferenceable(7) @.str.35, i32 noundef 6)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = tail call i32 @strncmp(ptr noundef %2, ptr noundef nonnull dereferenceable(7) @.str.36, i32 noundef 6)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %85

21:                                               ; preds = %18, %15, %12
  %22 = phi i1 [ true, %12 ], [ false, %15 ], [ true, %18 ]
  %23 = phi i1 [ true, %12 ], [ true, %15 ], [ false, %18 ]
  %24 = getelementptr inbounds %struct.rpc_xprt, ptr %7, i32 0, i32 18
  %25 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %24) #13
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = tail call i32 @out_of_line_wait_on_bit_lock(ptr noundef %24, i32 noundef 0, ptr noundef nonnull @bit_wait, i32 noundef 258) #13
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %85

30:                                               ; preds = %27, %21
  %31 = getelementptr inbounds %struct.rpc_xprt, ptr %7, i32 0, i32 55
  %32 = load i8, ptr %31, align 8, !range !11
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %83

34:                                               ; preds = %30
  br i1 %14, label %35, label %44

35:                                               ; preds = %34
  %36 = tail call i32 @_test_and_set_bit(i32 noundef 7, ptr noundef %24) #13
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %83

38:                                               ; preds = %35
  tail call void @_raw_spin_lock(ptr noundef %10) #13
  %39 = getelementptr inbounds %struct.rpc_xprt_switch, ptr %10, i32 0, i32 4
  %40 = load i32, ptr %39, align 4
  %41 = add i32 %40, -1
  store i32 %41, ptr %39, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !12
  %42 = load i16, ptr %10, align 4
  %43 = add i16 %42, 1
  store i16 %43, ptr %10, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !15
  br label %83

44:                                               ; preds = %34
  br i1 %22, label %54, label %45

45:                                               ; preds = %44
  %46 = tail call i32 @_test_and_clear_bit(i32 noundef 7, ptr noundef %24) #13
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %83, label %48

48:                                               ; preds = %45
  tail call void @_raw_spin_lock(ptr noundef %10) #13
  %49 = getelementptr inbounds %struct.rpc_xprt_switch, ptr %10, i32 0, i32 4
  %50 = load i32, ptr %49, align 4
  %51 = add i32 %50, 1
  store i32 %51, ptr %49, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !12
  %52 = load i16, ptr %10, align 4
  %53 = add i16 %52, 1
  store i16 %53, ptr %10, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !15
  br label %83

54:                                               ; preds = %44
  br i1 %23, label %83, label %55

55:                                               ; preds = %54
  %56 = load volatile i32, ptr %24, align 4
  %57 = and i32 %56, 128
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %83, label %59

59:                                               ; preds = %55
  %60 = tail call i32 @_test_and_set_bit(i32 noundef 8, ptr noundef %24) #13
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %83

62:                                               ; preds = %59
  tail call void @xprt_force_disconnect(ptr noundef nonnull %7) #13
  %63 = load volatile i32, ptr %24, align 4
  %64 = and i32 %63, 2
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %83, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.rpc_xprt, ptr %7, i32 0, i32 11, i32 5
  %68 = load i16, ptr %67, align 4
  %69 = icmp eq i16 %68, 0
  br i1 %69, label %70, label %83

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.rpc_xprt, ptr %7, i32 0, i32 12, i32 5
  %72 = load i16, ptr %71, align 4
  %73 = icmp eq i16 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.rpc_xprt, ptr %7, i32 0, i32 13, i32 5
  %76 = load i16, ptr %75, align 4
  %77 = icmp eq i16 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.rpc_xprt, ptr %7, i32 0, i32 32
  %80 = load volatile i32, ptr %79, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  tail call void @rpc_xprt_switch_remove_xprt(ptr noundef %10, ptr noundef nonnull %7) #13
  br label %83

83:                                               ; preds = %82, %78, %74, %70, %66, %62, %59, %55, %54, %48, %45, %38, %35, %30
  %84 = phi i32 [ %3, %35 ], [ %3, %38 ], [ %3, %48 ], [ %3, %45 ], [ %3, %59 ], [ %3, %66 ], [ %3, %70 ], [ %3, %74 ], [ %3, %78 ], [ %3, %82 ], [ %3, %62 ], [ %3, %54 ], [ -22, %30 ], [ -22, %55 ]
  tail call void @xprt_release_write(ptr noundef nonnull %7, ptr noundef null) #13
  br label %85

85:                                               ; preds = %83, %27, %18
  %86 = phi i32 [ %84, %83 ], [ -22, %18 ], [ -4, %27 ]
  tail call void @xprt_put(ptr noundef nonnull %7) #13
  tail call void @xprt_switch_put(ptr noundef %10) #13
  br label %87

87:                                               ; preds = %85, %4
  %88 = phi i32 [ %86, %85 ], [ 0, %4 ]
  ret i32 %88
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_xprt_switch_remove_xprt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { argmemonly nofree nounwind willreturn writeonly }
attributes #13 = { nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { cold nounwind }

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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{i64 2155771466}
!10 = !{!"auto-init"}
!11 = !{i8 0, i8 2}
!12 = !{i64 2148915652}
!13 = !{i64 2148911476}
!14 = !{i64 2148911551, i64 2148911578, i64 2148911625, i64 2148911647, i64 2148911675, i64 2148911695}
!15 = !{i64 2148938655}
