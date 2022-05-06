; ModuleID = '/llk/IR/drivers/net/ethernet/ti/cpsw_switchdev.c_pt.bc'
source_filename = "../drivers/net/ethernet/ti/cpsw_switchdev.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.notifier_block = type { ptr, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.cpsw_switchdev_event_work = type { %struct.work_struct, %struct.switchdev_notifier_fdb_info, ptr, i32 }
%struct.switchdev_notifier_fdb_info = type { %struct.switchdev_notifier_info, ptr, i16, i8 }
%struct.switchdev_notifier_info = type { ptr, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.116, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.133, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.116 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.ref_tracker_dir = type {}
%struct.possible_net_t = type {}
%union.anon.133 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdevice_tracker = type {}
%struct.switchdev_attr = type { ptr, i32, i32, ptr, ptr, %union.anon.138 }
%union.anon.138 = type { %struct.switchdev_brport_flags }
%struct.switchdev_brport_flags = type { i32, i32 }
%struct.cpsw_common = type { ptr, %struct.cpsw_platform_data, %struct.napi_struct, %struct.napi_struct, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, [8 x %struct.cpsw_vector], [8 x %struct.cpsw_vector], ptr, i8, i8, i8, [2 x i32], i32, ptr, ptr, i32, i32, i32, i32, [8 x ptr], i8, ptr, i8, [6 x i8] }
%struct.cpsw_platform_data = type { ptr, i32, i32, i32, i32, i32, i32, i16, i8 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.cpsw_vector = type { ptr, i32 }
%struct.cpsw_priv = type { ptr, ptr, i32, [6 x i8], i8, i8, i8, [4 x i32], i32, i32, i32, ptr, [8 x i8], [8 x %struct.xdp_rxq_info], %struct.xdp_attachment_info, i32, ptr, i32, i32, [40 x i8] }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [40 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.xdp_attachment_info = type { ptr, i32 }
%struct.switchdev_obj = type { %struct.list_head, ptr, i32, i32, ptr, ptr }
%struct.switchdev_obj_port_vlan = type { %struct.switchdev_obj, i16, i16 }
%struct.cpsw_slave = type { ptr, i32, i32, ptr, ptr, ptr, i32, ptr }
%struct.cpsw_host_regs = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.switchdev_obj_port_mdb = type { %struct.switchdev_obj, [6 x i8], i16 }

@cpsw_switchdev_notifier = internal global %struct.notifier_block { ptr @cpsw_switchdev_event, ptr null, i32 0 }, align 4
@.str = private unnamed_addr constant [41 x i8] c"register switchdev notifier fail ret:%d\0A\00", align 1
@cpsw_switchdev_bl_notifier = internal global %struct.notifier_block { ptr @cpsw_switchdev_blocking_event, ptr null, i32 0 }, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"register switchdev blocking notifier ret:%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"drivers/net/ethernet/ti/cpsw_switchdev.c\00", align 1
@system_long_wq = external dso_local local_unnamed_addr global ptr, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"Unable to add vlan\0A\00", align 1
@switch.table.cpsw_port_attr_set = private unnamed_addr constant [5 x i32] [i32 0, i32 1, i32 2, i32 3, i32 1], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpsw_switchdev_register_notifiers(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call i32 @register_switchdev_notifier(ptr noundef nonnull @cpsw_switchdev_notifier) #9
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str, i32 noundef %2) #10
  br label %12

6:                                                ; preds = %1
  %7 = tail call i32 @register_switchdev_blocking_notifier(ptr noundef nonnull @cpsw_switchdev_bl_notifier) #9
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %6
  %10 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.1, i32 noundef %7) #10
  %11 = tail call i32 @unregister_switchdev_notifier(ptr noundef nonnull @cpsw_switchdev_notifier) #9
  br label %12

12:                                               ; preds = %9, %6, %4
  %13 = phi i32 [ %2, %4 ], [ %7, %9 ], [ 0, %6 ]
  ret i32 %13
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_switchdev_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_switchdev_blocking_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_switchdev_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cpsw_switchdev_unregister_notifiers(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = tail call i32 @unregister_switchdev_blocking_notifier(ptr noundef nonnull @cpsw_switchdev_bl_notifier) #9
  %3 = tail call i32 @unregister_switchdev_notifier(ptr noundef nonnull @cpsw_switchdev_notifier) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_switchdev_blocking_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpsw_switchdev_event(ptr nocapture noundef readnone %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = load ptr, ptr %2, align 4
  %5 = getelementptr i8, ptr %4, i32 1408
  %6 = icmp eq i32 %1, 9
  br i1 %6, label %7, label %13

7:                                                ; preds = %3
  %8 = tail call i32 @switchdev_handle_port_attr_set(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @cpsw_port_dev_check, ptr noundef nonnull @cpsw_port_attr_set) #9
  %9 = icmp eq i32 %8, 0
  %10 = sub i32 1, %8
  %11 = or i32 %10, 32768
  %12 = select i1 %9, i32 1, i32 %11
  br label %59

13:                                               ; preds = %3
  %14 = tail call zeroext i1 @cpsw_port_dev_check(ptr noundef %4) #9
  br i1 %14, label %15, label %59

15:                                               ; preds = %13
  %16 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %17 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 2848, i32 noundef 44) #11
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %20, !prof !9

19:                                               ; preds = %15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 453, i32 noundef 9, ptr noundef null) #9
  br label %59

20:                                               ; preds = %15
  store i32 -32, ptr %17, align 8
  %21 = getelementptr inbounds %struct.work_struct, ptr %17, i32 0, i32 1
  store volatile ptr %21, ptr %21, align 4
  %22 = getelementptr inbounds %struct.work_struct, ptr %17, i32 0, i32 1, i32 1
  store ptr %21, ptr %22, align 8
  %23 = getelementptr inbounds %struct.work_struct, ptr %17, i32 0, i32 2
  store ptr @cpsw_switchdev_event_work, ptr %23, align 4
  %24 = getelementptr inbounds %struct.cpsw_switchdev_event_work, ptr %17, i32 0, i32 2
  store ptr %5, ptr %24, align 4
  %25 = getelementptr inbounds %struct.cpsw_switchdev_event_work, ptr %17, i32 0, i32 3
  store i32 %1, ptr %25, align 8
  %26 = add i32 %1, -3
  %27 = icmp ult i32 %26, 2
  br i1 %27, label %28, label %57

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.cpsw_switchdev_event_work, ptr %17, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(20) %29, ptr noundef align 1 dereferenceable(20) %2, i32 20, i1 false)
  %30 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %31 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %30, i32 noundef 2848, i32 noundef 6) #11
  %32 = getelementptr inbounds %struct.cpsw_switchdev_event_work, ptr %17, i32 0, i32 1, i32 1
  store ptr %31, ptr %32, align 4
  %33 = icmp eq ptr %31, null
  br i1 %33, label %58, label %34

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %2, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = load i32, ptr %36, align 4
  store i32 %37, ptr %31, align 8
  %38 = getelementptr i8, ptr %36, i32 4
  %39 = load i16, ptr %38, align 2
  %40 = getelementptr i8, ptr %31, i32 4
  store i16 %39, ptr %40, align 4
  %41 = icmp eq ptr %4, null
  br i1 %41, label %54, label %42

42:                                               ; preds = %34
  %43 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !10
  %44 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 99
  %45 = load ptr, ptr %44, align 8
  %46 = ptrtoint ptr %45 to i32
  %47 = tail call i32 @llvm.read_register.i32(metadata !0) #9
  %48 = inttoptr i32 %47 to ptr
  %49 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %48) #7, !srcloc !11
  %50 = add i32 %49, %46
  %51 = inttoptr i32 %50 to ptr
  %52 = load i32, ptr %51, align 4
  %53 = add i32 %52, 1
  store i32 %53, ptr %51, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %43) #9, !srcloc !12
  br label %54

54:                                               ; preds = %42, %34
  %55 = load ptr, ptr @system_long_wq, align 4
  %56 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %55, ptr noundef nonnull %17) #9
  br label %59

57:                                               ; preds = %20
  tail call void @kfree(ptr noundef nonnull %17) #9
  br label %59

58:                                               ; preds = %28
  tail call void @kfree(ptr noundef nonnull %17) #9
  br label %59

59:                                               ; preds = %58, %57, %54, %19, %13, %7
  %60 = phi i32 [ %12, %7 ], [ 32770, %19 ], [ 0, %57 ], [ 0, %54 ], [ 32770, %58 ], [ 0, %13 ]
  ret i32 %60
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @switchdev_handle_port_attr_set(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cpsw_port_dev_check(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpsw_port_attr_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readnone %3) #0 {
  %5 = getelementptr inbounds %struct.switchdev_attr, ptr %2, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  switch i32 %6, label %45 [
    i32 3, label %7
    i32 1, label %13
    i32 2, label %28
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.switchdev_attr, ptr %2, i32 0, i32 5, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, -2081
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %11, i32 0, i32 -22
  br label %45

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.switchdev_attr, ptr %2, i32 0, i32 5
  %15 = load i8, ptr %14, align 4
  %16 = icmp ult i8 %15, 5
  br i1 %16, label %17, label %45

17:                                               ; preds = %13
  %18 = getelementptr i8, ptr %0, i32 1996
  %19 = load ptr, ptr %18, align 4
  %20 = sext i8 %15 to i32
  %21 = getelementptr inbounds [5 x i32], ptr @switch.table.cpsw_port_attr_set, i32 0, i32 %20
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.cpsw_common, ptr %19, i32 0, i32 17
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr i8, ptr %0, i32 1992
  %26 = load i32, ptr %25, align 8
  %27 = tail call i32 @cpsw_ale_control_set(ptr noundef %24, i32 noundef %26, i32 noundef 12, i32 noundef %22) #9
  br label %45

28:                                               ; preds = %4
  %29 = getelementptr inbounds %struct.switchdev_attr, ptr %2, i32 0, i32 5, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, 2048
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %45, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.switchdev_attr, ptr %2, i32 0, i32 5
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr i8, ptr %0, i32 1996
  %37 = load ptr, ptr %36, align 4
  %38 = and i32 %35, 2048
  %39 = icmp ne i32 %38, 0
  %40 = getelementptr inbounds %struct.cpsw_common, ptr %37, i32 0, i32 17
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr i8, ptr %0, i32 1992
  %43 = load i32, ptr %42, align 8
  %44 = shl nuw i32 1, %43
  tail call void @cpsw_ale_set_unreg_mcast(ptr noundef %41, i32 noundef %44, i1 noundef zeroext %39) #9
  br label %45

45:                                               ; preds = %33, %28, %17, %13, %7, %4
  %46 = phi i32 [ %12, %7 ], [ -95, %4 ], [ %27, %17 ], [ -95, %13 ], [ 0, %28 ], [ 0, %33 ]
  ret i32 %46
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cpsw_switchdev_event_work(ptr noundef %0) #0 {
  %2 = alloca %struct.switchdev_notifier_fdb_info, align 4
  %3 = getelementptr inbounds %struct.cpsw_switchdev_event_work, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.cpsw_priv, ptr %4, i32 0, i32 16
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.cpsw_priv, ptr %4, i32 0, i32 15
  %8 = load i32, ptr %7, align 8
  tail call void @rtnl_lock() #9
  %9 = getelementptr inbounds %struct.cpsw_switchdev_event_work, ptr %0, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  switch i32 %10, label %56 [
    i32 3, label %11
    i32 4, label %37
  ]

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.cpsw_switchdev_event_work, ptr %0, i32 0, i32 1, i32 3
  %13 = load i8, ptr %12, align 2
  %14 = and i8 %13, 3
  %15 = icmp eq i8 %14, 1
  br i1 %15, label %16, label %56

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.cpsw_priv, ptr %4, i32 0, i32 3
  %18 = getelementptr inbounds %struct.cpsw_switchdev_event_work, ptr %0, i32 0, i32 1, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %17, ptr noundef dereferenceable(6) %19, i32 6)
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %21, i32 0, i32 %8
  %23 = getelementptr inbounds %struct.cpsw_common, ptr %6, i32 0, i32 17
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.cpsw_switchdev_event_work, ptr %0, i32 0, i32 1, i32 2
  %26 = load i16, ptr %25, align 4
  %27 = icmp eq i16 %26, 0
  %28 = select i1 %27, i32 0, i32 8
  %29 = tail call i32 @cpsw_ale_add_ucast(ptr noundef %24, ptr noundef %19, i32 noundef %22, i32 noundef %28, i16 noundef zeroext %26) #9
  %30 = load ptr, ptr %4, align 64
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false) #9
  %31 = load ptr, ptr %18, align 4
  %32 = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %2, i32 0, i32 1
  store ptr %31, ptr %32, align 4
  %33 = load i16, ptr %25, align 4
  %34 = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %2, i32 0, i32 2
  store i16 %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %2, i32 0, i32 3
  store i8 4, ptr %35, align 2
  %36 = call i32 @call_switchdev_notifiers(i32 noundef 5, ptr noundef %30, ptr noundef nonnull %2, ptr noundef null) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #9
  br label %56

37:                                               ; preds = %1
  %38 = getelementptr inbounds %struct.cpsw_switchdev_event_work, ptr %0, i32 0, i32 1, i32 3
  %39 = load i8, ptr %38, align 2
  %40 = and i8 %39, 3
  %41 = icmp eq i8 %40, 1
  br i1 %41, label %42, label %56

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.cpsw_priv, ptr %4, i32 0, i32 3
  %44 = getelementptr inbounds %struct.cpsw_switchdev_event_work, ptr %0, i32 0, i32 1, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %43, ptr noundef dereferenceable(6) %45, i32 6)
  %47 = icmp eq i32 %46, 0
  %48 = select i1 %47, i32 0, i32 %8
  %49 = getelementptr inbounds %struct.cpsw_common, ptr %6, i32 0, i32 17
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.cpsw_switchdev_event_work, ptr %0, i32 0, i32 1, i32 2
  %52 = load i16, ptr %51, align 4
  %53 = icmp eq i16 %52, 0
  %54 = select i1 %53, i32 0, i32 8
  %55 = tail call i32 @cpsw_ale_del_ucast(ptr noundef %50, ptr noundef %45, i32 noundef %48, i32 noundef %54, i16 noundef zeroext %52) #9
  br label %56

56:                                               ; preds = %42, %37, %16, %11, %1
  call void @rtnl_unlock() #9
  %57 = getelementptr inbounds %struct.cpsw_switchdev_event_work, ptr %0, i32 0, i32 1, i32 1
  %58 = load ptr, ptr %57, align 4
  call void @kfree(ptr noundef %58) #9
  call void @kfree(ptr noundef %0) #9
  %59 = load ptr, ptr %4, align 64
  %60 = icmp eq ptr %59, null
  br i1 %60, label %73, label %61

61:                                               ; preds = %56
  %62 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !10
  %63 = getelementptr inbounds %struct.net_device, ptr %59, i32 0, i32 99
  %64 = load ptr, ptr %63, align 8
  %65 = ptrtoint ptr %64 to i32
  %66 = call i32 @llvm.read_register.i32(metadata !0) #9
  %67 = inttoptr i32 %66 to ptr
  %68 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %67) #7, !srcloc !11
  %69 = add i32 %68, %65
  %70 = inttoptr i32 %69 to ptr
  %71 = load i32, ptr %70, align 4
  %72 = add i32 %71, -1
  store i32 %72, ptr %70, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %62) #9, !srcloc !12
  br label %73

73:                                               ; preds = %61, %56
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_ale_control_set(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_ale_set_unreg_mcast(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_ale_add_ucast(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_ale_del_ucast(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @call_switchdev_notifiers(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpsw_switchdev_blocking_event(ptr nocapture noundef readnone %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = load ptr, ptr %2, align 4
  switch i32 %1, label %23 [
    i32 7, label %5
    i32 8, label %11
    i32 9, label %17
  ]

5:                                                ; preds = %3
  %6 = tail call i32 @switchdev_handle_port_obj_add(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @cpsw_port_dev_check, ptr noundef nonnull @cpsw_port_obj_add) #9
  %7 = icmp eq i32 %6, 0
  %8 = sub i32 1, %6
  %9 = or i32 %8, 32768
  %10 = select i1 %7, i32 1, i32 %9
  br label %23

11:                                               ; preds = %3
  %12 = tail call i32 @switchdev_handle_port_obj_del(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @cpsw_port_dev_check, ptr noundef nonnull @cpsw_port_obj_del) #9
  %13 = icmp eq i32 %12, 0
  %14 = sub i32 1, %12
  %15 = or i32 %14, 32768
  %16 = select i1 %13, i32 1, i32 %15
  br label %23

17:                                               ; preds = %3
  %18 = tail call i32 @switchdev_handle_port_attr_set(ptr noundef %4, ptr noundef %2, ptr noundef nonnull @cpsw_port_dev_check, ptr noundef nonnull @cpsw_port_attr_set) #9
  %19 = icmp eq i32 %18, 0
  %20 = sub i32 1, %18
  %21 = or i32 %20, 32768
  %22 = select i1 %19, i32 1, i32 %21
  br label %23

23:                                               ; preds = %17, %11, %5, %3
  %24 = phi i32 [ %22, %17 ], [ %16, %11 ], [ %10, %5 ], [ 0, %3 ]
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @switchdev_handle_port_obj_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpsw_port_obj_add(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = getelementptr i8, ptr %0, i32 1408
  %6 = getelementptr inbounds %struct.switchdev_obj, ptr %2, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  switch i32 %7, label %101 [
    i32 1, label %8
    i32 2, label %80
    i32 3, label %80
  ]

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.switchdev_obj_port_vlan, ptr %2, i32 0, i32 1
  %10 = load i16, ptr %9, align 4
  %11 = and i16 %10, 4
  %12 = icmp eq i16 %11, 0
  %13 = getelementptr inbounds %struct.switchdev_obj, ptr %2, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 15
  %16 = load i64, ptr %15, align 16
  %17 = and i64 %16, 2
  %18 = icmp ne i64 %17, 0
  %19 = zext i16 %10 to i32
  %20 = and i32 %19, 2
  %21 = icmp eq i32 %20, 0
  %22 = and i32 %19, 32
  %23 = icmp eq i32 %22, 0
  %24 = select i1 %18, i1 %23, i1 false
  br i1 %24, label %101, label %25

25:                                               ; preds = %8
  %26 = getelementptr inbounds %struct.switchdev_obj_port_vlan, ptr %2, i32 0, i32 2
  %27 = load i16, ptr %26, align 2
  %28 = icmp eq i64 %17, 0
  %29 = getelementptr i8, ptr %0, i32 1996
  %30 = load ptr, ptr %29, align 4
  br i1 %28, label %31, label %36

31:                                               ; preds = %25
  %32 = getelementptr i8, ptr %0, i32 1992
  %33 = load i32, ptr %32, align 8
  %34 = shl nuw i32 1, %33
  %35 = load ptr, ptr %5, align 64
  br label %36

36:                                               ; preds = %31, %25
  %37 = phi i32 [ 0, %31 ], [ 1, %25 ]
  %38 = phi i32 [ %34, %31 ], [ 1, %25 ]
  %39 = phi ptr [ %35, %31 ], [ %14, %25 ]
  %40 = getelementptr inbounds %struct.net_device, ptr %39, i32 0, i32 14
  %41 = load i32, ptr %40, align 8
  %42 = and i32 %41, 4096
  %43 = icmp eq i32 %42, 0
  %44 = select i1 %43, i32 0, i32 %38
  %45 = select i1 %12, i32 0, i32 %38
  %46 = getelementptr inbounds %struct.cpsw_common, ptr %30, i32 0, i32 17
  %47 = load ptr, ptr %46, align 4
  %48 = tail call i32 @cpsw_ale_vlan_add_modify(ptr noundef %47, i16 noundef zeroext %27, i32 noundef %38, i32 noundef %45, i32 noundef %44, i32 noundef %37) #9
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %36
  %51 = getelementptr i8, ptr %0, i32 1412
  %52 = load ptr, ptr %51, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.3) #10
  br label %101

53:                                               ; preds = %36
  br i1 %28, label %58, label %54

54:                                               ; preds = %53
  %55 = load ptr, ptr %46, align 4
  %56 = getelementptr i8, ptr %0, i32 1420
  %57 = tail call i32 @cpsw_ale_add_ucast(ptr noundef %55, ptr noundef %56, i32 noundef 0, i32 noundef 8, i16 noundef zeroext %27) #9
  br label %58

58:                                               ; preds = %54, %53
  br i1 %21, label %101, label %59

59:                                               ; preds = %58
  %60 = load ptr, ptr %29, align 4
  %61 = zext i16 %27 to i32
  %62 = getelementptr i8, ptr %0, i32 1992
  %63 = load i32, ptr %62, align 8
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %76, label %65

65:                                               ; preds = %59
  %66 = getelementptr inbounds %struct.cpsw_common, ptr %60, i32 0, i32 8
  %67 = load i32, ptr %66, align 8
  %68 = icmp eq i32 %67, 1638666
  %69 = select i1 %68, i32 12, i32 20
  %70 = getelementptr inbounds %struct.cpsw_common, ptr %60, i32 0, i32 13
  %71 = load ptr, ptr %70, align 4
  %72 = add i32 %63, -1
  %73 = getelementptr %struct.cpsw_slave, ptr %71, i32 %72
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr i8, ptr %74, i32 %69
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %75, i32 %61) #9, !srcloc !13
  br label %101

76:                                               ; preds = %59
  %77 = getelementptr inbounds %struct.cpsw_common, ptr %60, i32 0, i32 7
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr inbounds %struct.cpsw_host_regs, ptr %78, i32 0, i32 3
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !14
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %79, i32 %61) #9, !srcloc !13
  br label %101

80:                                               ; preds = %4, %4
  %81 = getelementptr inbounds %struct.switchdev_obj, ptr %2, i32 0, i32 1
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr inbounds %struct.net_device, ptr %82, i32 0, i32 15
  %84 = load i64, ptr %83, align 16
  %85 = and i64 %84, 2
  %86 = icmp eq i64 %85, 0
  %87 = getelementptr i8, ptr %0, i32 1996
  %88 = load ptr, ptr %87, align 4
  br i1 %86, label %89, label %93

89:                                               ; preds = %80
  %90 = getelementptr i8, ptr %0, i32 1992
  %91 = load i32, ptr %90, align 8
  %92 = shl nuw i32 1, %91
  br label %93

93:                                               ; preds = %89, %80
  %94 = phi i32 [ %92, %89 ], [ 1, %80 ]
  %95 = getelementptr inbounds %struct.cpsw_common, ptr %88, i32 0, i32 17
  %96 = load ptr, ptr %95, align 4
  %97 = getelementptr inbounds %struct.switchdev_obj_port_mdb, ptr %2, i32 0, i32 1
  %98 = getelementptr inbounds %struct.switchdev_obj_port_mdb, ptr %2, i32 0, i32 2
  %99 = load i16, ptr %98, align 2
  %100 = tail call i32 @cpsw_ale_add_mcast(ptr noundef %96, ptr noundef %97, i32 noundef %94, i32 noundef 8, i16 noundef zeroext %99, i32 noundef 0) #9
  br label %101

101:                                              ; preds = %93, %76, %65, %58, %50, %8, %4
  %102 = phi i32 [ %100, %93 ], [ -95, %4 ], [ 0, %8 ], [ %48, %50 ], [ 0, %58 ], [ 0, %65 ], [ 0, %76 ]
  ret i32 %102
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @switchdev_handle_port_obj_del(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpsw_port_obj_del(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 1408
  %5 = getelementptr inbounds %struct.switchdev_obj, ptr %2, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  switch i32 %6, label %109 [
    i32 1, label %7
    i32 2, label %88
    i32 3, label %88
  ]

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.switchdev_obj_port_vlan, ptr %2, i32 0, i32 2
  %9 = load i16, ptr %8, align 2
  %10 = getelementptr inbounds %struct.switchdev_obj, ptr %2, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 15
  %13 = load i64, ptr %12, align 16
  %14 = and i64 %13, 2
  %15 = icmp eq i64 %14, 0
  %16 = getelementptr i8, ptr %0, i32 1996
  %17 = load ptr, ptr %16, align 4
  br i1 %15, label %23, label %18

18:                                               ; preds = %7
  %19 = getelementptr inbounds %struct.cpsw_common, ptr %17, i32 0, i32 17
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 @cpsw_ale_vlan_del_modify(ptr noundef %20, i16 noundef zeroext %9, i32 noundef 1) #9
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %31, label %109

23:                                               ; preds = %7
  %24 = getelementptr i8, ptr %0, i32 1992
  %25 = load i32, ptr %24, align 8
  %26 = shl nuw i32 1, %25
  %27 = getelementptr inbounds %struct.cpsw_common, ptr %17, i32 0, i32 17
  %28 = load ptr, ptr %27, align 4
  %29 = tail call i32 @cpsw_ale_vlan_del_modify(ptr noundef %28, i16 noundef zeroext %9, i32 noundef %26) #9
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %35, label %109

31:                                               ; preds = %18
  %32 = load ptr, ptr %19, align 4
  %33 = getelementptr i8, ptr %0, i32 1420
  %34 = tail call i32 @cpsw_ale_del_ucast(ptr noundef %32, ptr noundef %33, i32 noundef 0, i32 noundef 8, i16 noundef zeroext %9) #9
  br label %35

35:                                               ; preds = %31, %23
  %36 = phi i32 [ 1, %31 ], [ %26, %23 ]
  %37 = phi ptr [ %19, %31 ], [ %27, %23 ]
  %38 = load ptr, ptr %16, align 4
  %39 = getelementptr i8, ptr %0, i32 1992
  %40 = load i32, ptr %39, align 8
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %54, label %42

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.cpsw_common, ptr %38, i32 0, i32 8
  %44 = load i32, ptr %43, align 8
  %45 = icmp eq i32 %44, 1638666
  %46 = select i1 %45, i32 12, i32 20
  %47 = getelementptr inbounds %struct.cpsw_common, ptr %38, i32 0, i32 13
  %48 = load ptr, ptr %47, align 4
  %49 = add i32 %40, -1
  %50 = getelementptr %struct.cpsw_slave, ptr %48, i32 %49
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr i8, ptr %51, i32 %46
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #9, !srcloc !15
  br label %59

54:                                               ; preds = %35
  %55 = getelementptr inbounds %struct.cpsw_common, ptr %38, i32 0, i32 7
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.cpsw_host_regs, ptr %56, i32 0, i32 3
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #9, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !16
  br label %59

59:                                               ; preds = %54, %42
  %60 = phi i32 [ %53, %42 ], [ %58, %54 ]
  %61 = trunc i32 %60 to i16
  %62 = and i16 %61, 4095
  %63 = icmp eq i16 %62, %9
  br i1 %63, label %64, label %83

64:                                               ; preds = %59
  %65 = load ptr, ptr %16, align 4
  %66 = load i32, ptr %39, align 8
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %79, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.cpsw_common, ptr %65, i32 0, i32 8
  %70 = load i32, ptr %69, align 8
  %71 = icmp eq i32 %70, 1638666
  %72 = select i1 %71, i32 12, i32 20
  %73 = getelementptr inbounds %struct.cpsw_common, ptr %65, i32 0, i32 13
  %74 = load ptr, ptr %73, align 4
  %75 = add i32 %66, -1
  %76 = getelementptr %struct.cpsw_slave, ptr %74, i32 %75
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr i8, ptr %77, i32 %72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %78, i32 0) #9, !srcloc !13
  br label %83

79:                                               ; preds = %64
  %80 = getelementptr inbounds %struct.cpsw_common, ptr %65, i32 0, i32 7
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr inbounds %struct.cpsw_host_regs, ptr %81, i32 0, i32 3
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !14
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %82, i32 0) #9, !srcloc !13
  br label %83

83:                                               ; preds = %79, %68, %59
  %84 = load ptr, ptr %37, align 4
  %85 = load ptr, ptr %4, align 64
  %86 = getelementptr inbounds %struct.net_device, ptr %85, i32 0, i32 83
  %87 = tail call i32 @cpsw_ale_del_mcast(ptr noundef %84, ptr noundef %86, i32 noundef %36, i32 noundef 8, i16 noundef zeroext %9) #9
  br label %109

88:                                               ; preds = %3, %3
  %89 = getelementptr inbounds %struct.switchdev_obj, ptr %2, i32 0, i32 1
  %90 = load ptr, ptr %89, align 4
  %91 = getelementptr inbounds %struct.net_device, ptr %90, i32 0, i32 15
  %92 = load i64, ptr %91, align 16
  %93 = and i64 %92, 2
  %94 = icmp eq i64 %93, 0
  %95 = getelementptr i8, ptr %0, i32 1996
  %96 = load ptr, ptr %95, align 4
  br i1 %94, label %97, label %101

97:                                               ; preds = %88
  %98 = getelementptr i8, ptr %0, i32 1992
  %99 = load i32, ptr %98, align 8
  %100 = shl nuw i32 1, %99
  br label %101

101:                                              ; preds = %97, %88
  %102 = phi i32 [ %100, %97 ], [ 1, %88 ]
  %103 = getelementptr inbounds %struct.cpsw_common, ptr %96, i32 0, i32 17
  %104 = load ptr, ptr %103, align 4
  %105 = getelementptr inbounds %struct.switchdev_obj_port_mdb, ptr %2, i32 0, i32 1
  %106 = getelementptr inbounds %struct.switchdev_obj_port_mdb, ptr %2, i32 0, i32 2
  %107 = load i16, ptr %106, align 2
  %108 = tail call i32 @cpsw_ale_del_mcast(ptr noundef %104, ptr noundef %105, i32 noundef %102, i32 noundef 8, i16 noundef zeroext %107) #9
  br label %109

109:                                              ; preds = %101, %83, %23, %18, %3
  %110 = phi i32 [ %108, %101 ], [ -95, %3 ], [ %29, %23 ], [ %21, %18 ], [ 0, %83 ]
  ret i32 %110
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_ale_vlan_add_modify(ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_ale_add_mcast(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_ale_vlan_del_modify(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_ale_del_mcast(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nounwind readonly }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 475573, i64 475634}
!11 = !{i64 494273}
!12 = !{i64 478590}
!13 = !{i64 4797190}
!14 = !{i64 2156534525}
!15 = !{i64 4797608}
!16 = !{i64 2156534248}
