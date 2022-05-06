; ModuleID = '/llk/IR/lib/kobject_uevent.c_pt.bc'
source_filename = "../lib/kobject_uevent.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kobject_uevent_env:\09\09\09\09\09"
module asm "\09.asciz \09\22kobject_uevent_env\22\09\09\09\09\09"
module asm "__kstrtabns_kobject_uevent_env:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kobject_uevent:\09\09\09\09\09"
module asm "\09.asciz \09\22kobject_uevent\22\09\09\09\09\09"
module asm "__kstrtabns_kobject_uevent:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_add_uevent_var:\09\09\09\09\09"
module asm "\09.asciz \09\22add_uevent_var\22\09\09\09\09\09"
module asm "__kstrtabns_add_uevent_var:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [14 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.33 }
%union.anon.33 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.35, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.35 = type { %struct.anon.36 }
%struct.anon.36 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ref_tracker_dir = type {}
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
%struct.seqcount = type { i32 }
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
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
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.netlink_kernel_cfg = type { i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.kobj_uevent_env = type { [3 x ptr], [64 x ptr], i32, [2048 x i8], i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, ptr }
%struct.kset_uevent_ops = type { ptr, ptr, ptr }
%struct.__va_list = type { ptr }
%struct.kobj_ns_type_operations = type { i32, ptr, ptr, ptr, ptr, ptr }
%struct.kobj_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.uevent_sock = type { %struct.list_head, ptr }
%struct.sk_buff = type { %union.anon.48, %union.anon.51, %union.anon.52, [48 x i8], %union.anon.53, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.55, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { ptr, ptr, %union.anon.50 }
%union.anon.50 = type { ptr }
%union.anon.51 = type { ptr }
%union.anon.52 = type { i64 }
%union.anon.53 = type { %struct.anon.54 }
%struct.anon.54 = type { i32, ptr }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.57, i32, i32, i32, i16, i16, %union.anon.59, %union.anon.60, %union.anon.61, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.57 = type { i32 }
%union.anon.59 = type { i32 }
%union.anon.60 = type { i32 }
%union.anon.61 = type { i16 }

@.str = private unnamed_addr constant [13 x i8] c"SYNTH_UUID=0\00", align 1
@__const.kobject_synth_uevent.no_uuid_envp = private unnamed_addr constant [2 x ptr] [ptr @.str, ptr null], align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"unknown uevent action string\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"incorrect uevent action arguments\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"\014synth uevent: %s: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"unknown device\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"failed to send uevent\00", align 1
@kobject_actions = internal unnamed_addr constant [8 x ptr] [ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23], align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"ACTION=%s\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"DEVPATH=%s\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"SUBSYSTEM=%s\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@uevent_sock_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @uevent_sock_mutex, i64 12), ptr getelementptr (i8, ptr @uevent_sock_mutex, i64 12) } }, align 4
@.str.10 = private unnamed_addr constant [12 x i8] c"SEQNUM=%llu\00", align 1
@uevent_seqnum = dso_local local_unnamed_addr global i64 0, align 8
@__kstrtab_kobject_uevent_env = external dso_local constant [0 x i8], align 1
@__kstrtabns_kobject_uevent_env = external dso_local constant [0 x i8], align 1
@__ksymtab_kobject_uevent_env = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kobject_uevent_env to i32), ptr @__kstrtab_kobject_uevent_env, ptr @__kstrtabns_kobject_uevent_env }, section "___ksymtab_gpl+kobject_uevent_env", align 4
@__kstrtab_kobject_uevent = external dso_local constant [0 x i8], align 1
@__kstrtabns_kobject_uevent = external dso_local constant [0 x i8], align 1
@__ksymtab_kobject_uevent = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kobject_uevent to i32), ptr @__kstrtab_kobject_uevent, ptr @__kstrtabns_kobject_uevent }, section "___ksymtab_gpl+kobject_uevent", align 4
@.str.11 = private unnamed_addr constant [21 x i8] c"lib/kobject_uevent.c\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"\013add_uevent_var: too many keys\0A\00", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c"\013add_uevent_var: buffer size too small\0A\00", align 1
@__kstrtab_add_uevent_var = external dso_local constant [0 x i8], align 1
@__kstrtabns_add_uevent_var = external dso_local constant [0 x i8], align 1
@__ksymtab_add_uevent_var = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @add_uevent_var to i32), ptr @__kstrtab_add_uevent_var, ptr @__kstrtabns_add_uevent_var }, section "___ksymtab_gpl+add_uevent_var", align 4
@__initcall__kmod_kobject_uevent__418_814_kobject_uevent_init2 = internal global ptr @kobject_uevent_init, section ".initcall2.init", align 4
@.str.14 = private unnamed_addr constant [16 x i8] c"SYNTH_UUID=%.*s\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"SYNTH_ARG_%.*s=%.*s\00", align 1
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"remove\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"change\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"move\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"online\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"offline\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"bind\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"unbind\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@zap_modalias_env.modalias_prefix = internal constant [10 x i8] c"MODALIAS=\00", align 1
@uevent_sock_list = internal global %struct.list_head { ptr @uevent_sock_list, ptr @uevent_sock_list }, align 4
@.str.24 = private unnamed_addr constant [6 x i8] c"%s@%s\00", align 1
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@init_net = external dso_local local_unnamed_addr global %struct.net, align 64
@uevent_net_ops = internal global %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @uevent_net_init, ptr null, ptr @uevent_net_exit, ptr null, ptr null, i32 0 }, align 4
@__const.uevent_net_init.cfg = private unnamed_addr constant %struct.netlink_kernel_cfg { i32 1, i32 1, ptr @uevent_net_rcv, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.25 = private unnamed_addr constant [52 x i8] c"\013kobject_uevent: unable to create netlink socket!\0A\00", align 1
@uevent_net_rcv_skb.__msg = internal constant [33 x i8] c"missing CAP_SYS_ADMIN capability\00", align 1
@uevent_net_broadcast.__msg = internal constant [23 x i8] c"uevent message too big\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__initcall__kmod_kobject_uevent__418_814_kobject_uevent_init2, ptr @__ksymtab_add_uevent_var, ptr @__ksymtab_kobject_uevent, ptr @__ksymtab_kobject_uevent_env], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @kobject_synth_uevent(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [2 x ptr], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  %5 = load i64, ptr @__const.kobject_synth_uevent.no_uuid_envp, align 8
  store i64 %5, ptr %4, align 8
  %6 = icmp eq i32 %2, 0
  br i1 %6, label %177, label %7

7:                                                ; preds = %3
  %8 = add i32 %2, -1
  %9 = getelementptr i8, ptr %1, i32 %8
  %10 = load i8, ptr %9, align 1
  switch i8 %10, label %13 [
    i8 10, label %11
    i8 0, label %11
  ]

11:                                               ; preds = %7, %7
  %12 = icmp eq i32 %8, 0
  br i1 %12, label %177, label %13

13:                                               ; preds = %11, %7
  %14 = phi i32 [ %8, %11 ], [ %2, %7 ]
  %15 = tail call ptr @strnchr(ptr noundef %1, i32 noundef %14, i32 noundef 32) #12
  %16 = icmp eq ptr %15, null
  %17 = ptrtoint ptr %15 to i32
  %18 = ptrtoint ptr %1 to i32
  %19 = sub i32 %17, %18
  %20 = getelementptr i8, ptr %15, i32 1
  %21 = select i1 %16, i32 %14, i32 %19
  %22 = select i1 %16, ptr null, ptr %20
  %23 = tail call i32 @strncmp(ptr noundef nonnull @.str.16, ptr noundef %1, i32 noundef %21) #12
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %13
  %26 = getelementptr i8, ptr @.str.16, i32 %21
  %27 = load i8, ptr %26, align 1
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %78, label %29

29:                                               ; preds = %25, %13
  %30 = tail call i32 @strncmp(ptr noundef nonnull @.str.17, ptr noundef %1, i32 noundef %21) #12
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = getelementptr i8, ptr @.str.17, i32 %21
  %34 = load i8, ptr %33, align 1
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %78, label %36

36:                                               ; preds = %32, %29
  %37 = tail call i32 @strncmp(ptr noundef nonnull @.str.18, ptr noundef %1, i32 noundef %21) #12
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = getelementptr i8, ptr @.str.18, i32 %21
  %41 = load i8, ptr %40, align 1
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %78, label %43

43:                                               ; preds = %39, %36
  %44 = tail call i32 @strncmp(ptr noundef nonnull @.str.19, ptr noundef %1, i32 noundef %21) #12
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = getelementptr i8, ptr @.str.19, i32 %21
  %48 = load i8, ptr %47, align 1
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %78, label %50

50:                                               ; preds = %46, %43
  %51 = tail call i32 @strncmp(ptr noundef nonnull @.str.20, ptr noundef %1, i32 noundef %21) #12
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = getelementptr i8, ptr @.str.20, i32 %21
  %55 = load i8, ptr %54, align 1
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %78, label %57

57:                                               ; preds = %53, %50
  %58 = tail call i32 @strncmp(ptr noundef nonnull @.str.21, ptr noundef %1, i32 noundef %21) #12
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = getelementptr i8, ptr @.str.21, i32 %21
  %62 = load i8, ptr %61, align 1
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %78, label %64

64:                                               ; preds = %60, %57
  %65 = tail call i32 @strncmp(ptr noundef nonnull @.str.22, ptr noundef %1, i32 noundef %21) #12
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %64
  %68 = getelementptr i8, ptr @.str.22, i32 %21
  %69 = load i8, ptr %68, align 1
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %78, label %71

71:                                               ; preds = %67, %64
  %72 = tail call i32 @strncmp(ptr noundef nonnull @.str.23, ptr noundef %1, i32 noundef %21) #12
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %177

74:                                               ; preds = %71
  %75 = getelementptr i8, ptr @.str.23, i32 %21
  %76 = load i8, ptr %75, align 1
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %78, label %177

78:                                               ; preds = %74, %67, %60, %53, %46, %39, %32, %25
  %79 = phi i32 [ 0, %25 ], [ 1, %32 ], [ 2, %39 ], [ 3, %46 ], [ 4, %53 ], [ 5, %60 ], [ 6, %67 ], [ 7, %74 ]
  %80 = icmp eq ptr %22, null
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = call i32 @kobject_uevent_env(ptr noundef %0, i32 noundef %79, ptr noundef nonnull %4)
  br label %174

83:                                               ; preds = %78
  %84 = ptrtoint ptr %22 to i32
  %85 = sub i32 %18, %84
  %86 = add i32 %85, %2
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %177, label %88

88:                                               ; preds = %83
  %89 = add i32 %86, -1
  %90 = getelementptr i8, ptr %22, i32 %89
  %91 = load i8, ptr %90, align 1
  switch i8 %91, label %94 [
    i8 10, label %92
    i8 0, label %92
  ]

92:                                               ; preds = %88, %88
  %93 = icmp eq i32 %89, 0
  br i1 %93, label %177, label %94

94:                                               ; preds = %92, %88
  %95 = phi i32 [ %89, %92 ], [ %86, %88 ]
  %96 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %97 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %96, i32 noundef 3520, i32 noundef 2324) #13
  %98 = icmp eq ptr %97, null
  br i1 %98, label %177, label %99

99:                                               ; preds = %94
  %100 = icmp ult i32 %95, 36
  br i1 %100, label %170, label %101

101:                                              ; preds = %99
  %102 = tail call zeroext i1 @uuid_is_valid(ptr noundef nonnull %22) #12
  br i1 %102, label %103, label %170

103:                                              ; preds = %101
  %104 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef nonnull %97, ptr noundef nonnull @.str.14, i32 noundef 36, ptr noundef nonnull %22) #12
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %170

106:                                              ; preds = %103
  %107 = getelementptr i8, ptr %22, i32 36
  %108 = getelementptr i8, ptr %22, i32 %95
  %109 = getelementptr i8, ptr %108, i32 -1
  br label %110

110:                                              ; preds = %164, %106
  %111 = phi ptr [ %107, %106 ], [ %148, %164 ]
  %112 = icmp ugt ptr %111, %109
  br i1 %112, label %171, label %113

113:                                              ; preds = %110
  %114 = load i8, ptr %111, align 1
  %115 = icmp eq i8 %114, 32
  br i1 %115, label %116, label %170

116:                                              ; preds = %113
  %117 = getelementptr i8, ptr %111, i32 1
  %118 = icmp ugt ptr %117, %109
  br i1 %118, label %170, label %119

119:                                              ; preds = %125, %116
  %120 = phi ptr [ %127, %125 ], [ %117, %116 ]
  %121 = icmp ugt ptr %120, %109
  br i1 %121, label %132, label %122

122:                                              ; preds = %119
  %123 = load i8, ptr %120, align 1
  %124 = icmp eq i8 %123, 61
  br i1 %124, label %132, label %125

125:                                              ; preds = %122
  %126 = zext i8 %123 to i32
  %127 = getelementptr i8, ptr %120, i32 1
  %128 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %126
  %129 = load i8, ptr %128, align 1
  %130 = and i8 %129, 7
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %170, label %119

132:                                              ; preds = %122, %119
  %133 = icmp eq ptr %120, %117
  %134 = select i1 %133, ptr null, ptr %120
  %135 = icmp eq ptr %134, null
  %136 = icmp ugt ptr %134, %109
  %137 = or i1 %135, %136
  br i1 %137, label %170, label %138

138:                                              ; preds = %132
  %139 = load i8, ptr %134, align 1
  %140 = icmp eq i8 %139, 61
  br i1 %140, label %141, label %170

141:                                              ; preds = %138
  %142 = ptrtoint ptr %134 to i32
  %143 = ptrtoint ptr %117 to i32
  %144 = sub i32 %142, %143
  %145 = getelementptr i8, ptr %134, i32 1
  %146 = icmp ugt ptr %145, %109
  br i1 %146, label %170, label %147

147:                                              ; preds = %153, %141
  %148 = phi ptr [ %155, %153 ], [ %145, %141 ]
  %149 = icmp ugt ptr %148, %109
  br i1 %149, label %160, label %150

150:                                              ; preds = %147
  %151 = load i8, ptr %148, align 1
  %152 = icmp eq i8 %151, 32
  br i1 %152, label %160, label %153

153:                                              ; preds = %150
  %154 = zext i8 %151 to i32
  %155 = getelementptr i8, ptr %148, i32 1
  %156 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %154
  %157 = load i8, ptr %156, align 1
  %158 = and i8 %157, 7
  %159 = icmp eq i8 %158, 0
  br i1 %159, label %170, label %147

160:                                              ; preds = %150, %147
  %161 = icmp eq ptr %148, %145
  %162 = icmp eq ptr %148, null
  %163 = or i1 %161, %162
  br i1 %163, label %170, label %164

164:                                              ; preds = %160
  %165 = ptrtoint ptr %148 to i32
  %166 = ptrtoint ptr %145 to i32
  %167 = sub i32 %165, %166
  %168 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef nonnull %97, ptr noundef nonnull @.str.15, i32 noundef %144, ptr noundef %117, i32 noundef %167, ptr noundef %145) #12
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %110, label %170

170:                                              ; preds = %164, %160, %153, %141, %138, %132, %125, %116, %113, %103, %101, %99
  tail call void @kfree(ptr noundef nonnull %97) #12
  br label %177

171:                                              ; preds = %110
  %172 = getelementptr inbounds %struct.kobj_uevent_env, ptr %97, i32 0, i32 1
  %173 = tail call i32 @kobject_uevent_env(ptr noundef %0, i32 noundef %79, ptr noundef %172)
  tail call void @kfree(ptr noundef nonnull %97) #12
  br label %174

174:                                              ; preds = %171, %81
  %175 = phi i32 [ %173, %171 ], [ %82, %81 ]
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %184, label %177

177:                                              ; preds = %174, %170, %94, %92, %83, %74, %71, %11, %3
  %178 = phi ptr [ @.str.5, %174 ], [ @.str.5, %94 ], [ @.str.1, %11 ], [ @.str.1, %3 ], [ @.str.1, %74 ], [ @.str.1, %71 ], [ @.str.2, %92 ], [ @.str.2, %170 ], [ @.str.2, %83 ]
  %179 = phi i32 [ %175, %174 ], [ -12, %94 ], [ -22, %11 ], [ -22, %3 ], [ -22, %74 ], [ -22, %71 ], [ -22, %92 ], [ -22, %170 ], [ -22, %83 ]
  %180 = call ptr @kobject_get_path(ptr noundef %0, i32 noundef 3264) #12
  %181 = icmp eq ptr %180, null
  %182 = select i1 %181, ptr @.str.4, ptr %180
  %183 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %182, ptr noundef nonnull %178) #14
  call void @kfree(ptr noundef %180) #12
  br label %184

184:                                              ; preds = %177, %174
  %185 = phi i32 [ %179, %177 ], [ 0, %174 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  ret i32 %185
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @kobject_uevent_env(ptr noundef %0, i32 noundef %1, ptr noundef readonly %2) #0 {
  %4 = getelementptr [8 x ptr], ptr @kobject_actions, i32 0, i32 %1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq i32 %1, 1
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 7
  %9 = load i8, ptr %8, align 4
  %10 = or i8 %9, 8
  store i8 %10, ptr %8, align 4
  br label %11

11:                                               ; preds = %7, %3
  br label %12

12:                                               ; preds = %17, %11
  %13 = phi ptr [ %19, %17 ], [ %0, %11 ]
  %14 = getelementptr inbounds %struct.kobject, ptr %13, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.kobject, ptr %13, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %103, label %12

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.kset, ptr %15, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 7
  %25 = load i8, ptr %24, align 4
  %26 = and i8 %25, 16
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %103

28:                                               ; preds = %21
  %29 = icmp eq ptr %23, null
  br i1 %29, label %42, label %30

30:                                               ; preds = %28
  %31 = load ptr, ptr %23, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = tail call i32 %31(ptr noundef %0) #12
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %103, label %36

36:                                               ; preds = %33, %30
  %37 = getelementptr inbounds %struct.kset_uevent_ops, ptr %23, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  %41 = tail call ptr %38(ptr noundef %0) #12
  br label %45

42:                                               ; preds = %36, %28
  %43 = getelementptr inbounds %struct.kset, ptr %15, i32 0, i32 2
  %44 = load ptr, ptr %43, align 4
  br label %45

45:                                               ; preds = %42, %40
  %46 = phi ptr [ %41, %40 ], [ %44, %42 ]
  %47 = icmp eq ptr %46, null
  br i1 %47, label %103, label %48

48:                                               ; preds = %45
  %49 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %50 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %49, i32 noundef 3520, i32 noundef 2324) #13
  %51 = icmp eq ptr %50, null
  br i1 %51, label %103, label %52

52:                                               ; preds = %48
  %53 = tail call ptr @kobject_get_path(ptr noundef %0, i32 noundef 3264) #12
  %54 = icmp eq ptr %53, null
  br i1 %54, label %101, label %55

55:                                               ; preds = %52
  %56 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef nonnull %50, ptr noundef nonnull @.str.6, ptr noundef %5)
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %101

58:                                               ; preds = %55
  %59 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef nonnull %50, ptr noundef nonnull @.str.7, ptr noundef nonnull %53)
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %101

61:                                               ; preds = %58
  %62 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef nonnull %50, ptr noundef nonnull @.str.8, ptr noundef nonnull %46)
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %101

64:                                               ; preds = %61
  %65 = icmp eq ptr %2, null
  br i1 %65, label %79, label %66

66:                                               ; preds = %64
  %67 = load ptr, ptr %2, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %79, label %74

69:                                               ; preds = %74
  %70 = add i32 %76, 1
  %71 = getelementptr ptr, ptr %2, i32 %70
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %79, label %74

74:                                               ; preds = %69, %66
  %75 = phi ptr [ %72, %69 ], [ %67, %66 ]
  %76 = phi i32 [ %70, %69 ], [ 0, %66 ]
  %77 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef nonnull %50, ptr noundef nonnull @.str.9, ptr noundef nonnull %75)
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %69, label %101

79:                                               ; preds = %69, %66, %64
  br i1 %29, label %87, label %80

80:                                               ; preds = %79
  %81 = getelementptr inbounds %struct.kset_uevent_ops, ptr %23, i32 0, i32 2
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %87, label %84

84:                                               ; preds = %80
  %85 = tail call i32 %82(ptr noundef %0, ptr noundef nonnull %50) #12
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %101

87:                                               ; preds = %84, %80, %79
  switch i32 %1, label %92 [
    i32 0, label %88
    i32 7, label %91
  ]

88:                                               ; preds = %87
  %89 = load i8, ptr %24, align 4
  %90 = or i8 %89, 4
  store i8 %90, ptr %24, align 4
  br label %92

91:                                               ; preds = %87
  tail call fastcc void @zap_modalias_env(ptr noundef nonnull %50)
  br label %92

92:                                               ; preds = %91, %88, %87
  tail call void @mutex_lock(ptr noundef nonnull @uevent_sock_mutex) #12
  %93 = load i64, ptr @uevent_seqnum, align 8
  %94 = add i64 %93, 1
  store i64 %94, ptr @uevent_seqnum, align 8
  %95 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef nonnull %50, ptr noundef nonnull @.str.10, i64 noundef %94)
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %92
  %98 = tail call fastcc i32 @kobject_uevent_net_broadcast(ptr noundef %0, ptr noundef nonnull %50, ptr noundef %5, ptr noundef nonnull %53)
  br label %99

99:                                               ; preds = %97, %92
  %100 = phi i32 [ %98, %97 ], [ %95, %92 ]
  tail call void @mutex_unlock(ptr noundef nonnull @uevent_sock_mutex) #12
  br label %101

101:                                              ; preds = %99, %84, %74, %61, %58, %55, %52
  %102 = phi i32 [ %56, %55 ], [ %59, %58 ], [ %62, %61 ], [ -2, %52 ], [ %85, %84 ], [ %100, %99 ], [ %77, %74 ]
  tail call void @kfree(ptr noundef %53) #12
  tail call void @kfree(ptr noundef nonnull %50) #12
  br label %103

103:                                              ; preds = %101, %48, %45, %33, %21, %17
  %104 = phi i32 [ %102, %101 ], [ 0, %21 ], [ 0, %33 ], [ 0, %45 ], [ -12, %48 ], [ -22, %17 ]
  ret i32 %104
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kobject_get_path(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @add_uevent_var(ptr noundef %0, ptr nocapture noundef readonly %1, ...) #0 {
  %3 = alloca %struct.__va_list, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = getelementptr inbounds %struct.kobj_uevent_env, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = icmp ugt i32 %5, 63
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 660, i32 noundef 9, ptr noundef nonnull @.str.12) #12
  br label %28

8:                                                ; preds = %2
  call void @llvm.va_start(ptr nonnull %3)
  %9 = getelementptr inbounds %struct.kobj_uevent_env, ptr %0, i32 0, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr %struct.kobj_uevent_env, ptr %0, i32 0, i32 3, i32 %10
  %12 = sub i32 2048, %10
  %13 = load i32, ptr %3, align 4
  %14 = insertvalue [1 x i32] poison, i32 %13, 0
  %15 = call i32 @vsnprintf(ptr noundef %11, i32 noundef %12, ptr noundef %1, [1 x i32] %14)
  call void @llvm.va_end(ptr nonnull %3)
  %16 = load i32, ptr %9, align 4
  %17 = sub i32 2048, %16
  %18 = icmp ult i32 %15, %17
  br i1 %18, label %20, label %19

19:                                               ; preds = %8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 671, i32 noundef 9, ptr noundef nonnull @.str.13) #12
  br label %28

20:                                               ; preds = %8
  %21 = getelementptr %struct.kobj_uevent_env, ptr %0, i32 0, i32 3, i32 %16
  %22 = load i32, ptr %4, align 4
  %23 = add i32 %22, 1
  store i32 %23, ptr %4, align 4
  %24 = getelementptr %struct.kobj_uevent_env, ptr %0, i32 0, i32 1, i32 %22
  store ptr %21, ptr %24, align 4
  %25 = add nuw i32 %15, 1
  %26 = load i32, ptr %9, align 4
  %27 = add i32 %25, %26
  store i32 %27, ptr %9, align 4
  br label %28

28:                                               ; preds = %20, %19, %7
  %29 = phi i32 [ -12, %7 ], [ -12, %19 ], [ 0, %20 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  ret i32 %29
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @zap_modalias_env(ptr nocapture noundef %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.kobj_uevent_env, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %49

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.kobj_uevent_env, ptr %0, i32 0, i32 4
  br label %7

7:                                                ; preds = %18, %5
  %8 = phi i32 [ %3, %5 ], [ %14, %18 ]
  %9 = phi i32 [ 0, %5 ], [ %11, %18 ]
  %10 = getelementptr %struct.kobj_uevent_env, ptr %0, i32 0, i32 1, i32 %9
  %11 = add nuw nsw i32 %9, 1
  %12 = getelementptr %struct.kobj_uevent_env, ptr %0, i32 0, i32 1, i32 %11
  br label %13

13:                                               ; preds = %44, %7
  %14 = phi i32 [ %8, %7 ], [ %45, %44 ]
  %15 = load ptr, ptr %10, align 4
  %16 = tail call i32 @strncmp(ptr noundef %15, ptr noundef nonnull dereferenceable(10) @zap_modalias_env.modalias_prefix, i32 noundef 9)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %13
  %19 = icmp slt i32 %11, %14
  br i1 %19, label %7, label %49

20:                                               ; preds = %13
  %21 = tail call i32 @strlen(ptr noundef %15)
  %22 = add i32 %21, 1
  %23 = add nsw i32 %14, -1
  %24 = icmp eq i32 %9, %23
  br i1 %24, label %44, label %25

25:                                               ; preds = %20
  %26 = load ptr, ptr %12, align 4
  %27 = load i32, ptr %6, align 4
  %28 = sub i32 %27, %22
  tail call void @llvm.memmove.p0.p0.i32(ptr align 1 %15, ptr align 1 %26, i32 %28, i1 false)
  %29 = load i32, ptr %2, align 4
  %30 = add i32 %29, -1
  %31 = icmp slt i32 %9, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %25
  %33 = xor i32 %21, -1
  br label %34

34:                                               ; preds = %34, %32
  %35 = phi i32 [ %9, %32 ], [ %36, %34 ]
  %36 = add nuw nsw i32 %35, 1
  %37 = getelementptr %struct.kobj_uevent_env, ptr %0, i32 0, i32 1, i32 %36
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr i8, ptr %38, i32 %33
  %40 = getelementptr %struct.kobj_uevent_env, ptr %0, i32 0, i32 1, i32 %35
  store ptr %39, ptr %40, align 4
  %41 = load i32, ptr %2, align 4
  %42 = add i32 %41, -1
  %43 = icmp slt i32 %36, %42
  br i1 %43, label %34, label %44

44:                                               ; preds = %34, %25, %20
  %45 = phi i32 [ %30, %25 ], [ %23, %20 ], [ %42, %34 ]
  store i32 %45, ptr %2, align 4
  %46 = load i32, ptr %6, align 4
  %47 = sub i32 %46, %22
  store i32 %47, ptr %6, align 4
  %48 = icmp slt i32 %9, %45
  br i1 %48, label %13, label %49

49:                                               ; preds = %44, %18, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @kobject_uevent_net_broadcast(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = tail call ptr @kobj_ns_ops(ptr noundef %0) #12
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %18

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %35, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.kset, ptr %9, i32 0, i32 2, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %35, label %15

15:                                               ; preds = %11
  %16 = tail call ptr @kobj_ns_ops(ptr noundef nonnull %13) #12
  %17 = icmp eq ptr %16, null
  br i1 %17, label %35, label %18

18:                                               ; preds = %15, %4
  %19 = phi ptr [ %16, %15 ], [ %5, %4 ]
  %20 = getelementptr inbounds %struct.kobj_ns_type_operations, ptr %19, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %35, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 4
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.kobj_type, ptr %25, i32 0, i32 5
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %35, label %29

29:                                               ; preds = %23
  %30 = load i32, ptr %19, align 4
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = tail call ptr %27(ptr noundef %0) #12
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %77

35:                                               ; preds = %32, %29, %23, %18, %15, %11, %7
  %36 = load ptr, ptr @uevent_sock_list, align 4
  %37 = icmp eq ptr %36, @uevent_sock_list
  br i1 %37, label %74, label %38

38:                                               ; preds = %69, %35
  %39 = phi ptr [ %72, %69 ], [ %36, %35 ]
  %40 = phi ptr [ %71, %69 ], [ null, %35 ]
  %41 = phi i32 [ %70, %69 ], [ 0, %35 ]
  %42 = getelementptr inbounds %struct.uevent_sock, ptr %39, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = tail call i32 @netlink_has_listeners(ptr noundef %43, i32 noundef 1) #12
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %69, label %46

46:                                               ; preds = %38
  %47 = icmp eq ptr %40, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %46
  %49 = tail call fastcc ptr @alloc_uevent_skb(ptr noundef %1, ptr noundef %2, ptr noundef %3) #12
  %50 = icmp eq ptr %49, null
  br i1 %50, label %69, label %51

51:                                               ; preds = %48, %46
  %52 = phi ptr [ %40, %46 ], [ %49, %48 ]
  %53 = getelementptr inbounds %struct.sk_buff, ptr %52, i32 0, i32 19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %53) #12, !srcloc !9
  %54 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %53, ptr %53, i32 1, ptr elementtype(i32) %53) #12, !srcloc !10
  %55 = extractvalue { i32, i32, i32 } %54, 0
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %61, label %57, !prof !11

57:                                               ; preds = %51
  %58 = add i32 %55, 1
  %59 = or i32 %58, %55
  %60 = icmp sgt i32 %59, -1
  br i1 %60, label %63, label %61, !prof !12

61:                                               ; preds = %57, %51
  %62 = phi i32 [ 2, %51 ], [ 1, %57 ]
  tail call void @refcount_warn_saturate(ptr noundef %53, i32 noundef %62) #12
  br label %63

63:                                               ; preds = %61, %57
  %64 = tail call i32 @netlink_broadcast(ptr noundef %43, ptr noundef nonnull %52, i32 noundef 0, i32 noundef 1, i32 noundef 3264) #12
  %65 = icmp eq i32 %64, -105
  %66 = icmp eq i32 %64, -3
  %67 = or i1 %65, %66
  %68 = select i1 %67, i32 0, i32 %64
  br label %69

69:                                               ; preds = %63, %48, %38
  %70 = phi i32 [ %68, %63 ], [ %41, %38 ], [ -12, %48 ]
  %71 = phi ptr [ %52, %63 ], [ %40, %38 ], [ null, %48 ]
  %72 = load ptr, ptr %39, align 4
  %73 = icmp eq ptr %72, @uevent_sock_list
  br i1 %73, label %74, label %38

74:                                               ; preds = %69, %35
  %75 = phi i32 [ 0, %35 ], [ %70, %69 ]
  %76 = phi ptr [ null, %35 ], [ %71, %69 ]
  tail call void @consume_skb(ptr noundef %76) #12
  br label %96

77:                                               ; preds = %32
  %78 = getelementptr inbounds %struct.net, ptr %33, i32 0, i32 22
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr inbounds %struct.uevent_sock, ptr %79, i32 0, i32 1
  %81 = load ptr, ptr %80, align 4
  %82 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 11), align 4
  %83 = tail call fastcc ptr @alloc_uevent_skb(ptr noundef %1, ptr noundef %2, ptr noundef %3) #12
  %84 = icmp eq ptr %83, null
  br i1 %84, label %96, label %85

85:                                               ; preds = %77
  %86 = icmp eq ptr %82, @init_user_ns
  br i1 %86, label %90, label %87

87:                                               ; preds = %85
  %88 = getelementptr inbounds %struct.sk_buff, ptr %83, i32 0, i32 3, i32 4
  store i32 0, ptr %88, align 4
  %89 = getelementptr inbounds %struct.sk_buff, ptr %83, i32 0, i32 3, i32 8
  store i32 0, ptr %89, align 4
  br label %90

90:                                               ; preds = %87, %85
  %91 = tail call i32 @netlink_broadcast(ptr noundef %81, ptr noundef nonnull %83, i32 noundef 0, i32 noundef 1, i32 noundef 3264) #12
  %92 = icmp eq i32 %91, -105
  %93 = icmp eq i32 %91, -3
  %94 = or i1 %92, %93
  %95 = select i1 %94, i32 0, i32 %91
  br label %96

96:                                               ; preds = %90, %77, %74
  %97 = phi i32 [ %75, %74 ], [ %95, %90 ], [ -12, %77 ]
  ret i32 %97
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @kobject_uevent(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call i32 @kobject_uevent_env(ptr noundef %0, i32 noundef %1, ptr noundef null)
  ret i32 %3
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #7

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @vsnprintf(ptr nocapture noundef, i32 noundef, ptr nocapture noundef readonly, [1 x i32] noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #7

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @kobject_uevent_init() #9 section ".init.text" {
  %1 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @uevent_net_ops) #12
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strnchr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @uuid_is_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i32(ptr nocapture writeonly, ptr nocapture readonly, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kobj_ns_ops(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_has_listeners(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @alloc_uevent_skb(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = tail call i32 @strlen(ptr noundef %1)
  %5 = tail call i32 @strlen(ptr noundef %2)
  %6 = add i32 %4, 2
  %7 = add i32 %6, %5
  %8 = getelementptr inbounds %struct.kobj_uevent_env, ptr %0, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %7, %9
  %11 = tail call ptr @__alloc_skb(i32 noundef %10, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #12
  %12 = icmp eq ptr %11, null
  br i1 %12, label %23, label %13

13:                                               ; preds = %3
  %14 = tail call ptr @skb_put(ptr noundef nonnull %11, i32 noundef %7) #12
  %15 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %14, ptr noundef nonnull @.str.24, ptr noundef %1, ptr noundef %2)
  %16 = getelementptr inbounds %struct.kobj_uevent_env, ptr %0, i32 0, i32 3
  %17 = load i32, ptr %8, align 4
  %18 = tail call ptr @skb_put(ptr noundef nonnull %11, i32 noundef %17) #12
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %18, ptr align 1 %16, i32 %17, i1 false) #12
  %19 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 3, i32 4
  store i32 0, ptr %19, align 4
  %20 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 3, i32 8
  store i32 0, ptr %20, align 4
  %21 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 3, i32 16
  store i32 1, ptr %21, align 4
  %22 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 3, i32 12
  store i32 0, ptr %22, align 4
  br label %23

23:                                               ; preds = %13, %3
  ret ptr %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_broadcast(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uevent_net_init(ptr noundef %0) #0 {
  %2 = alloca %struct.netlink_kernel_cfg, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %2) #12
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %2, ptr noundef nonnull align 4 dereferenceable(28) @__const.uevent_net_init.cfg, i32 28, i1 false)
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 12) #13
  %5 = icmp eq ptr %4, null
  br i1 %5, label %19, label %6

6:                                                ; preds = %1
  %7 = call ptr @__netlink_kernel_create(ptr noundef %0, i32 noundef 15, ptr noundef null, ptr noundef nonnull %2) #12
  %8 = getelementptr inbounds %struct.uevent_sock, ptr %4, i32 0, i32 1
  store ptr %7, ptr %8, align 8
  %9 = icmp eq ptr %7, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #14
  call void @kfree(ptr noundef nonnull %4) #12
  br label %19

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 22
  store ptr %4, ptr %13, align 4
  %14 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 11), align 4
  %15 = icmp eq ptr %14, @init_user_ns
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  call void @mutex_lock(ptr noundef nonnull @uevent_sock_mutex) #12
  %17 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @uevent_sock_list, i32 0, i32 1), align 4
  store ptr %4, ptr getelementptr inbounds (%struct.list_head, ptr @uevent_sock_list, i32 0, i32 1), align 4
  store ptr @uevent_sock_list, ptr %4, align 8
  %18 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  store ptr %17, ptr %18, align 4
  store volatile ptr %4, ptr %17, align 4
  call void @mutex_unlock(ptr noundef nonnull @uevent_sock_mutex) #12
  br label %19

19:                                               ; preds = %16, %12, %10, %1
  %20 = phi i32 [ -19, %10 ], [ -12, %1 ], [ 0, %16 ], [ 0, %12 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #12
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @uevent_net_exit(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 22
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 11), align 4
  %5 = icmp eq ptr %4, @init_user_ns
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  tail call void @mutex_lock(ptr noundef nonnull @uevent_sock_mutex) #12
  %7 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %3, align 4
  %10 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  store ptr %8, ptr %10, align 4
  store volatile ptr %9, ptr %8, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %3, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %7, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @uevent_sock_mutex) #12
  br label %11

11:                                               ; preds = %6, %1
  %12 = getelementptr inbounds %struct.uevent_sock, ptr %3, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  tail call void @netlink_kernel_release(ptr noundef %13) #12
  tail call void @kfree(ptr noundef %3) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @uevent_net_rcv(ptr noundef %0) #0 {
  %2 = tail call i32 @netlink_rcv_skb(ptr noundef %0, ptr noundef nonnull @uevent_net_rcv_skb) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_rcv_skb(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uevent_net_rcv_skb(ptr noundef %0, ptr noundef readnone %1, ptr noundef writeonly %2) #0 {
  %4 = alloca [29 x i8], align 1
  %5 = getelementptr i8, ptr %1, i32 16
  %6 = icmp eq ptr %5, null
  br i1 %6, label %45, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 11), align 4
  %9 = tail call zeroext i1 @netlink_ns_capable(ptr noundef %0, ptr noundef %8, i32 noundef 21) #12
  br i1 %9, label %13, label %10

10:                                               ; preds = %7
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @uevent_net_rcv_skb.__msg) #12
  %11 = icmp eq ptr %2, null
  br i1 %11, label %45, label %12

12:                                               ; preds = %10
  store ptr @uevent_net_rcv_skb.__msg, ptr %2, align 4
  br label %45

13:                                               ; preds = %7
  tail call void @mutex_lock(ptr noundef nonnull @uevent_sock_mutex) #12
  %14 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 22), align 4
  %15 = getelementptr inbounds %struct.uevent_sock, ptr %14, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  call void @llvm.lifetime.start.p0(i64 29, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(29) %4, i8 0, i32 29, i1 false) #12, !annotation !8
  %17 = load i64, ptr @uevent_seqnum, align 8
  %18 = add i64 %17, 1
  store i64 %18, ptr @uevent_seqnum, align 8
  %19 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 29, ptr noundef nonnull @.str.10, i64 noundef %18) #12
  %20 = icmp ugt i32 %19, 28
  br i1 %20, label %43, label %21

21:                                               ; preds = %13
  %22 = add nuw nsw i32 %19, 1
  %23 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %24 = load i32, ptr %23, align 8
  %25 = add i32 %24, %22
  %26 = icmp ugt i32 %25, 2048
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @uevent_net_broadcast.__msg) #12
  %28 = icmp eq ptr %2, null
  br i1 %28, label %43, label %29

29:                                               ; preds = %27
  store ptr @uevent_net_broadcast.__msg, ptr %2, align 4
  br label %43

30:                                               ; preds = %21
  %31 = tail call ptr @skb_copy_expand(ptr noundef %0, i32 noundef 0, i32 noundef %22, i32 noundef 3264) #12
  %32 = icmp eq ptr %31, null
  br i1 %32, label %43, label %33

33:                                               ; preds = %30
  %34 = tail call ptr @skb_put(ptr noundef nonnull %31, i32 noundef %22) #12
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %34, ptr nonnull align 1 %4, i32 %22, i1 false) #12
  %35 = tail call ptr @skb_pull(ptr noundef nonnull %31, i32 noundef 16) #12
  %36 = getelementptr inbounds %struct.sk_buff, ptr %31, i32 0, i32 3, i32 12
  store i32 0, ptr %36, align 4
  %37 = getelementptr inbounds %struct.sk_buff, ptr %31, i32 0, i32 3, i32 16
  store i32 1, ptr %37, align 8
  %38 = tail call i32 @netlink_broadcast(ptr noundef %16, ptr noundef nonnull %31, i32 noundef 0, i32 noundef 1, i32 noundef 3264) #12
  %39 = icmp eq i32 %38, -105
  %40 = icmp eq i32 %38, -3
  %41 = or i1 %39, %40
  %42 = select i1 %41, i32 0, i32 %38
  br label %43

43:                                               ; preds = %33, %30, %29, %27, %13
  %44 = phi i32 [ %42, %33 ], [ -12, %13 ], [ -22, %29 ], [ -22, %27 ], [ -12, %30 ]
  call void @llvm.lifetime.end.p0(i64 29, ptr nonnull %4) #12
  tail call void @mutex_unlock(ptr noundef nonnull @uevent_sock_mutex) #12
  br label %45

45:                                               ; preds = %43, %12, %10, %3
  %46 = phi i32 [ %44, %43 ], [ -22, %3 ], [ -1, %12 ], [ -1, %10 ]
  ret i32 %46
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @netlink_ns_capable(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_copy_expand(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netlink_kernel_create(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netlink_kernel_release(ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nocallback nofree nosync nounwind willreturn }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }

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
!9 = !{i64 669901, i64 2148159872, i64 2148159898, i64 2148159945, i64 2148159967, i64 2148159995, i64 2148160015}
!10 = !{i64 2148172745, i64 2148172777, i64 2148172806, i64 2148172840, i64 2148172871, i64 2148172894}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{!"branch_weights", i32 2000, i32 1}
