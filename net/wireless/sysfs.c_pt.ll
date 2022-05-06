; ModuleID = '/llk/IR/net/wireless/sysfs.c_pt.bc'
source_filename = "../net/wireless/sysfs.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.kobj_ns_type_operations = type { i32, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.60, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.60 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.cpumask = type { [1 x i32] }
%struct.mac_address = type { [6 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.cfg80211_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [10 x i8] c"ieee80211\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@ieee80211_groups = internal global [2 x ptr] [ptr @ieee80211_group, ptr null], align 4
@net_ns_type_operations = external dso_local constant %struct.kobj_ns_type_operations, align 4
@wiphy_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @wiphy_suspend, ptr @wiphy_resume, ptr @wiphy_suspend, ptr @wiphy_resume, ptr @wiphy_suspend, ptr @wiphy_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@ieee80211_class = dso_local global %struct.class { ptr @.str, ptr @__this_module, ptr null, ptr @ieee80211_groups, ptr null, ptr null, ptr null, ptr null, ptr @wiphy_dev_release, ptr null, ptr @net_ns_type_operations, ptr @wiphy_namespace, ptr null, ptr @wiphy_pm_ops, ptr null }, align 4
@wiphy_sysfs_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@ieee80211_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @ieee80211_attrs, ptr null }, align 4
@ieee80211_attrs = internal global [6 x ptr] [ptr @dev_attr_index, ptr @dev_attr_macaddress, ptr @dev_attr_address_mask, ptr @dev_attr_addresses, ptr @dev_attr_name, ptr null], align 4
@dev_attr_index = internal global %struct.device_attribute { %struct.attribute { ptr @.str.1, i16 292 }, ptr @index_show, ptr null }, align 4
@dev_attr_macaddress = internal global %struct.device_attribute { %struct.attribute { ptr @.str.3, i16 292 }, ptr @macaddress_show, ptr null }, align 4
@dev_attr_address_mask = internal global %struct.device_attribute { %struct.attribute { ptr @.str.5, i16 292 }, ptr @address_mask_show, ptr null }, align 4
@dev_attr_addresses = internal global %struct.device_attribute { %struct.attribute { ptr @.str.6, i16 292 }, ptr @addresses_show, ptr null }, align 4
@dev_attr_name = internal global %struct.device_attribute { %struct.attribute { ptr @.str.7, i16 292 }, ptr @name_show, ptr null }, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"macaddress\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%pM\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"address_mask\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"addresses\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@init_net = external dso_local global %struct.net, align 64
@__tracepoint_rdev_suspend = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__tracepoint_rdev_return_int = external dso_local global %struct.tracepoint, align 4
@__tracepoint_rdev_resume = external dso_local global %struct.tracepoint, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @wiphy_dev_release(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -808
  tail call void @cfg80211_dev_free(ptr noundef %2) #7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal nonnull ptr @wiphy_namespace(ptr nocapture noundef readnone %0) #1 {
  ret ptr @init_net
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @wiphy_sysfs_init() local_unnamed_addr #0 {
  %1 = tail call i32 @__class_register(ptr noundef nonnull @ieee80211_class, ptr noundef nonnull @wiphy_sysfs_init.__key) #7
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__class_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @wiphy_sysfs_exit() local_unnamed_addr #0 {
  tail call void @class_unregister(ptr noundef nonnull @ieee80211_class) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @index_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #3 {
  %4 = getelementptr i8, ptr %0, i32 -756
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.2, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @macaddress_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #3 {
  %4 = getelementptr i8, ptr %0, i32 -244
  %5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.4, ptr noundef %4)
  ret i32 %5
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @address_mask_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #3 {
  %4 = getelementptr i8, ptr %0, i32 -238
  %5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.4, ptr noundef %4)
  ret i32 %5
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @addresses_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #3 {
  %4 = getelementptr i8, ptr %0, i32 -232
  %5 = load ptr, ptr %4, align 32
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %0, i32 -214
  %9 = load i16, ptr %8, align 2
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %30, label %11

11:                                               ; preds = %7
  %12 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.4, ptr noundef nonnull %5)
  %13 = getelementptr i8, ptr %2, i32 %12
  %14 = load i16, ptr %8, align 2
  %15 = icmp ugt i16 %14, 1
  br i1 %15, label %19, label %30

16:                                               ; preds = %3
  %17 = getelementptr i8, ptr %0, i32 -244
  %18 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.4, ptr noundef %17)
  br label %35

19:                                               ; preds = %19, %11
  %20 = phi i32 [ %26, %19 ], [ 1, %11 ]
  %21 = phi ptr [ %25, %19 ], [ %13, %11 ]
  %22 = load ptr, ptr %4, align 32
  %23 = getelementptr %struct.mac_address, ptr %22, i32 %20
  %24 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %21, ptr noundef nonnull @.str.4, ptr noundef %23)
  %25 = getelementptr i8, ptr %21, i32 %24
  %26 = add nuw nsw i32 %20, 1
  %27 = load i16, ptr %8, align 2
  %28 = zext i16 %27 to i32
  %29 = icmp ult i32 %26, %28
  br i1 %29, label %19, label %30

30:                                               ; preds = %19, %11, %7
  %31 = phi ptr [ %2, %7 ], [ %13, %11 ], [ %25, %19 ]
  %32 = ptrtoint ptr %31 to i32
  %33 = ptrtoint ptr %2 to i32
  %34 = sub i32 %32, %33
  br label %35

35:                                               ; preds = %30, %16
  %36 = phi i32 [ %34, %30 ], [ %18, %16 ]
  ret i32 %36
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @name_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #3 {
  %4 = getelementptr i8, ptr %0, i32 44
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 4
  br label %9

9:                                                ; preds = %7, %3
  %10 = phi ptr [ %8, %7 ], [ %5, %3 ]
  %11 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.8, ptr noundef %10)
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_dev_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wiphy_suspend(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -808
  %3 = tail call i64 @ktime_get_coarse_with_offset(i32 noundef 1) #7
  %4 = tail call i64 @llvm.abs.i64(i64 %3, i1 false) #7
  %5 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %4, i32 0) #8, !srcloc !8
  %6 = extractvalue { i64, i32 } %5, 0
  %7 = extractvalue { i64, i32 } %5, 1
  %8 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %4, i64 %6, i32 %7) #8, !srcloc !9
  %9 = extractvalue { i64, i32 } %8, 0
  %10 = icmp slt i64 %3, 0
  %11 = lshr i64 %9, 29
  %12 = sub nsw i64 0, %11
  %13 = select i1 %10, i64 %12, i64 %11
  %14 = getelementptr i8, ptr %0, i32 -648
  store i64 %13, ptr %14, align 32
  tail call void @rtnl_lock() #7
  %15 = getelementptr i8, ptr %0, i32 -264
  tail call void @mutex_lock(ptr noundef %15) #7
  %16 = getelementptr i8, ptr %0, i32 472
  %17 = load i8, ptr %16, align 32, !range !10
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %120, label %19

19:                                               ; preds = %1
  %20 = getelementptr i8, ptr %0, i32 -76
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %33

23:                                               ; preds = %19
  %24 = getelementptr i8, ptr %0, i32 488
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, %24
  br i1 %26, label %32, label %27

27:                                               ; preds = %27, %23
  %28 = phi ptr [ %30, %27 ], [ %25, %23 ]
  %29 = getelementptr i8, ptr %28, i32 -8
  tail call void @cfg80211_leave(ptr noundef %2, ptr noundef %29) #7
  %30 = load ptr, ptr %28, align 4
  %31 = icmp eq ptr %30, %24
  br i1 %31, label %32, label %27

32:                                               ; preds = %27, %23
  tail call void @cfg80211_process_rdev_events(ptr noundef %2) #7
  br label %33

33:                                               ; preds = %32, %19
  %34 = load ptr, ptr %2, align 32
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %120, label %37

37:                                               ; preds = %33
  %38 = load ptr, ptr %20, align 4
  %39 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_suspend, i32 0, i32 1), align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %56

41:                                               ; preds = %37
  %42 = tail call ptr @llvm.thread.pointer() #7
  %43 = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 2
  %44 = load i32, ptr %43, align 8
  %45 = lshr i32 %44, 5
  %46 = getelementptr i32, ptr @__cpu_online_mask, i32 %45
  %47 = load volatile i32, ptr %46, align 4
  %48 = and i32 %44, 31
  %49 = shl nuw i32 1, %48
  %50 = and i32 %49, %47
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %41
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !11
  %53 = tail call i32 @__traceiter_rdev_suspend(ptr noundef null, ptr noundef %15, ptr noundef %38) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  %54 = load ptr, ptr %2, align 32
  %55 = load ptr, ptr %54, align 4
  br label %56

56:                                               ; preds = %52, %41, %37
  %57 = phi ptr [ %55, %52 ], [ %35, %41 ], [ %35, %37 ]
  %58 = tail call i32 %57(ptr noundef %15, ptr noundef %38) #7
  %59 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_return_int, i32 0, i32 1), align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %74

61:                                               ; preds = %56
  %62 = tail call ptr @llvm.thread.pointer() #7
  %63 = getelementptr inbounds %struct.thread_info, ptr %62, i32 0, i32 2
  %64 = load i32, ptr %63, align 8
  %65 = lshr i32 %64, 5
  %66 = getelementptr i32, ptr @__cpu_online_mask, i32 %65
  %67 = load volatile i32, ptr %66, align 4
  %68 = and i32 %64, 31
  %69 = shl nuw i32 1, %68
  %70 = and i32 %69, %67
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %61
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !13
  %73 = tail call i32 @__traceiter_rdev_return_int(ptr noundef null, ptr noundef %15, i32 noundef %58) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !14
  br label %74

74:                                               ; preds = %72, %61, %56
  %75 = icmp eq i32 %58, 1
  br i1 %75, label %76, label %120

76:                                               ; preds = %74
  %77 = getelementptr i8, ptr %0, i32 488
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, %77
  br i1 %79, label %85, label %80

80:                                               ; preds = %80, %76
  %81 = phi ptr [ %83, %80 ], [ %78, %76 ]
  %82 = getelementptr i8, ptr %81, i32 -8
  tail call void @cfg80211_leave(ptr noundef %2, ptr noundef %82) #7
  %83 = load ptr, ptr %81, align 4
  %84 = icmp eq ptr %83, %77
  br i1 %84, label %85, label %80

85:                                               ; preds = %80, %76
  tail call void @cfg80211_process_rdev_events(ptr noundef %2) #7
  %86 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_suspend, i32 0, i32 1), align 4
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %101

88:                                               ; preds = %85
  %89 = tail call ptr @llvm.thread.pointer() #7
  %90 = getelementptr inbounds %struct.thread_info, ptr %89, i32 0, i32 2
  %91 = load i32, ptr %90, align 8
  %92 = lshr i32 %91, 5
  %93 = getelementptr i32, ptr @__cpu_online_mask, i32 %92
  %94 = load volatile i32, ptr %93, align 4
  %95 = and i32 %91, 31
  %96 = shl nuw i32 1, %95
  %97 = and i32 %96, %94
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %101, label %99

99:                                               ; preds = %88
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !11
  %100 = tail call i32 @__traceiter_rdev_suspend(ptr noundef null, ptr noundef %15, ptr noundef null) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  br label %101

101:                                              ; preds = %99, %88, %85
  %102 = load ptr, ptr %2, align 32
  %103 = load ptr, ptr %102, align 4
  %104 = tail call i32 %103(ptr noundef %15, ptr noundef null) #7
  %105 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_return_int, i32 0, i32 1), align 4
  %106 = icmp sgt i32 %105, 0
  br i1 %106, label %107, label %120

107:                                              ; preds = %101
  %108 = tail call ptr @llvm.thread.pointer() #7
  %109 = getelementptr inbounds %struct.thread_info, ptr %108, i32 0, i32 2
  %110 = load i32, ptr %109, align 8
  %111 = lshr i32 %110, 5
  %112 = getelementptr i32, ptr @__cpu_online_mask, i32 %111
  %113 = load volatile i32, ptr %112, align 4
  %114 = and i32 %110, 31
  %115 = shl nuw i32 1, %114
  %116 = and i32 %115, %113
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %120, label %118

118:                                              ; preds = %107
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !13
  %119 = tail call i32 @__traceiter_rdev_return_int(ptr noundef null, ptr noundef %15, i32 noundef %104) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !14
  br label %120

120:                                              ; preds = %118, %107, %101, %74, %33, %1
  %121 = phi i32 [ %58, %74 ], [ 0, %1 ], [ %104, %101 ], [ %104, %107 ], [ %104, %118 ], [ 0, %33 ]
  tail call void @mutex_unlock(ptr noundef %15) #7
  tail call void @rtnl_unlock() #7
  ret i32 %121
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wiphy_resume(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -808
  %3 = tail call i64 @ktime_get_coarse_with_offset(i32 noundef 1) #7
  %4 = tail call i64 @llvm.abs.i64(i64 %3, i1 false) #7
  %5 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %4, i32 0) #8, !srcloc !8
  %6 = extractvalue { i64, i32 } %5, 0
  %7 = extractvalue { i64, i32 } %5, 1
  %8 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %4, i64 %6, i32 %7) #8, !srcloc !9
  %9 = extractvalue { i64, i32 } %8, 0
  %10 = icmp slt i64 %3, 0
  %11 = lshr i64 %9, 29
  %12 = sub nsw i64 0, %11
  %13 = select i1 %10, i64 %12, i64 %11
  %14 = getelementptr i8, ptr %0, i32 -648
  %15 = load i64, ptr %14, align 32
  %16 = sub i64 %13, %15
  %17 = trunc i64 %16 to i32
  tail call void @cfg80211_bss_age(ptr noundef %2, i32 noundef %17) #7
  tail call void @rtnl_lock() #7
  %18 = getelementptr i8, ptr %0, i32 -264
  tail call void @mutex_lock(ptr noundef %18) #7
  %19 = getelementptr i8, ptr %0, i32 472
  %20 = load i8, ptr %19, align 32, !range !10
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %64, label %22

22:                                               ; preds = %1
  %23 = load ptr, ptr %2, align 32
  %24 = getelementptr inbounds %struct.cfg80211_ops, ptr %23, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %64, label %27

27:                                               ; preds = %22
  %28 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_resume, i32 0, i32 1), align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %46

30:                                               ; preds = %27
  %31 = tail call ptr @llvm.thread.pointer() #7
  %32 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 2
  %33 = load i32, ptr %32, align 8
  %34 = lshr i32 %33, 5
  %35 = getelementptr i32, ptr @__cpu_online_mask, i32 %34
  %36 = load volatile i32, ptr %35, align 4
  %37 = and i32 %33, 31
  %38 = shl nuw i32 1, %37
  %39 = and i32 %38, %36
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %30
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !15
  %42 = tail call i32 @__traceiter_rdev_resume(ptr noundef null, ptr noundef %18) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !16
  %43 = load ptr, ptr %2, align 32
  %44 = getelementptr inbounds %struct.cfg80211_ops, ptr %43, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  br label %46

46:                                               ; preds = %41, %30, %27
  %47 = phi ptr [ %45, %41 ], [ %25, %30 ], [ %25, %27 ]
  %48 = tail call i32 %47(ptr noundef %18) #7
  %49 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rdev_return_int, i32 0, i32 1), align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %65

51:                                               ; preds = %46
  %52 = tail call ptr @llvm.thread.pointer() #7
  %53 = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 2
  %54 = load i32, ptr %53, align 8
  %55 = lshr i32 %54, 5
  %56 = getelementptr i32, ptr @__cpu_online_mask, i32 %55
  %57 = load volatile i32, ptr %56, align 4
  %58 = and i32 %54, 31
  %59 = shl nuw i32 1, %58
  %60 = and i32 %59, %57
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %51
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !13
  %63 = tail call i32 @__traceiter_rdev_return_int(ptr noundef null, ptr noundef %18, i32 noundef %48) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !14
  br label %65

64:                                               ; preds = %22, %1
  tail call void @mutex_unlock(ptr noundef %18) #7
  br label %68

65:                                               ; preds = %62, %51, %46
  tail call void @mutex_unlock(ptr noundef %18) #7
  %66 = icmp eq i32 %48, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %65
  tail call void @cfg80211_shutdown_all_interfaces(ptr noundef %18) #7
  br label %68

68:                                               ; preds = %67, %65, %64
  %69 = phi i32 [ 0, %64 ], [ %48, %67 ], [ 0, %65 ]
  tail call void @rtnl_unlock() #7
  ret i32 %69
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_process_rdev_events(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_coarse_with_offset(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_leave(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rdev_suspend(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rdev_return_int(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_bss_age(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_shutdown_all_interfaces(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rdev_resume(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind readnone }

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
!8 = !{i64 1134087, i64 1134114, i64 1134136, i64 1134164}
!9 = !{i64 1134495, i64 1134522, i64 1134555, i64 1134576, i64 1134603, i64 1134629}
!10 = !{i8 0, i8 2}
!11 = !{i64 2156039646}
!12 = !{i64 2156039802}
!13 = !{i64 2156052286}
!14 = !{i64 2156052448}
!15 = !{i64 2156081540}
!16 = !{i64 2156081684}
