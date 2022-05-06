; ModuleID = '/llk/IR/net/sched/sch_mq.c_pt.bc'
source_filename = "../net/sched/sch_mq.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.Qdisc_class_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Qdisc_ops = type { ptr, ptr, [16 x i8], i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.tc_mq_qopt_offload = type { i32, i32, %union.anon.120 }
%union.anon.120 = type { %struct.tc_qopt_offload_stats }
%struct.tc_qopt_offload_stats = type { ptr, ptr }
%struct.Qdisc = type { ptr, ptr, i32, i32, ptr, ptr, %struct.hlist_node, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, %struct.sk_buff_head, %struct.qdisc_skb_head, %struct.gnet_stats_basic_sync, %struct.gnet_stats_queue, i32, i32, ptr, %struct.sk_buff_head, [16 x i8], %struct.spinlock, %struct.spinlock, %struct.callback_head, %struct.netdevice_tracker, [48 x i8], [0 x i32] }
%struct.hlist_node = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.qdisc_skb_head = type { ptr, ptr, i32, %struct.spinlock }
%struct.gnet_stats_basic_sync = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync, [12 x i8] }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.gnet_stats_queue = type { i32, i32, i32, i32, i32 }
%struct.sk_buff_head = type { %union.anon.109, i32, %struct.spinlock }
%union.anon.109 = type { %struct.anon.110 }
%struct.anon.110 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.24 }
%union.anon.24 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.25 }
%union.anon.25 = type { i32 }
%struct.callback_head = type { ptr, ptr }
%struct.netdevice_tracker = type {}
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.111, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.ref_tracker_dir = type {}
%struct.possible_net_t = type {}
%union.anon.111 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdev_queue = type { ptr, %struct.netdevice_tracker, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, [4 x i8], %struct.spinlock, i32, i32, i32, [48 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [52 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [24 x i8] }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tcmsg = type { i8, i8, i16, i32, i32, i32, i32 }
%struct.qdisc_walker = type { i32, i32, i32, ptr }

@mq_class_ops = internal constant %struct.Qdisc_class_ops { i32 0, ptr @mq_select_queue, ptr @mq_graft, ptr @mq_leaf, ptr null, ptr @mq_find, ptr null, ptr null, ptr @mq_walk, ptr null, ptr null, ptr null, ptr @mq_dump_class, ptr @mq_dump_class_stats }, align 4
@mq_qdisc_ops = dso_local local_unnamed_addr global %struct.Qdisc_ops { ptr null, ptr @mq_class_ops, [16 x i8] c"mq\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 0, ptr null, ptr null, ptr null, ptr @mq_init, ptr null, ptr @mq_destroy, ptr null, ptr @mq_attach, ptr null, ptr @mq_change_real_num_tx, ptr @mq_dump, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, section ".data..read_mostly", align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@default_qdisc_ops = external dso_local local_unnamed_addr global ptr, align 4
@pfifo_fast_ops = external dso_local global %struct.Qdisc_ops, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mq_init(ptr nocapture noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = alloca %struct.tc_mq_qopt_offload, align 4
  %5 = getelementptr inbounds %struct.Qdisc, ptr %0, i32 0, i32 9
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %6, align 64
  %8 = getelementptr inbounds %struct.Qdisc, ptr %0, i32 0, i32 29
  %9 = getelementptr inbounds %struct.Qdisc, ptr %0, i32 0, i32 8
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %77

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 88
  %14 = load i32, ptr %13, align 4
  %15 = icmp ugt i32 %14, 1
  br i1 %15, label %16, label %77

16:                                               ; preds = %12
  %17 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %14, i32 4) #9
  %18 = extractvalue { i32, i1 } %17, 1
  br i1 %18, label %19, label %20, !prof !8

19:                                               ; preds = %16
  store ptr null, ptr %8, align 4
  br label %77

20:                                               ; preds = %16
  %21 = extractvalue { i32, i1 } %17, 0
  %22 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %21, i32 noundef 3520) #10
  store ptr %22, ptr %8, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %77, label %24

24:                                               ; preds = %20
  %25 = load i32, ptr %13, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %54, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 87
  %29 = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 89
  %30 = getelementptr inbounds %struct.Qdisc, ptr %0, i32 0, i32 7
  br label %31

31:                                               ; preds = %46, %27
  %32 = phi i32 [ 0, %27 ], [ %41, %46 ]
  %33 = load ptr, ptr %28, align 64
  %34 = getelementptr %struct.netdev_queue, ptr %33, i32 %32
  %35 = load i32, ptr %29, align 8
  %36 = icmp ugt i32 %35, %32
  %37 = load ptr, ptr @default_qdisc_ops, align 4
  %38 = select i1 %36, ptr %37, ptr @pfifo_fast_ops
  %39 = load i32, ptr %30, align 32
  %40 = and i32 %39, -65536
  %41 = add nuw i32 %32, 1
  %42 = and i32 %41, 65535
  %43 = or i32 %40, %42
  %44 = tail call ptr @qdisc_create_dflt(ptr noundef %34, ptr noundef %38, i32 noundef %43, ptr noundef %2) #9
  %45 = icmp eq ptr %44, null
  br i1 %45, label %77, label %46

46:                                               ; preds = %31
  %47 = load ptr, ptr %8, align 4
  %48 = getelementptr ptr, ptr %47, i32 %32
  store ptr %44, ptr %48, align 4
  %49 = getelementptr inbounds %struct.Qdisc, ptr %44, i32 0, i32 2
  %50 = load i32, ptr %49, align 8
  %51 = or i32 %50, 80
  store i32 %51, ptr %49, align 8
  %52 = load i32, ptr %13, align 4
  %53 = icmp ult i32 %41, %52
  br i1 %53, label %31, label %54

54:                                               ; preds = %46, %24
  %55 = getelementptr inbounds %struct.Qdisc, ptr %0, i32 0, i32 2
  %56 = load i32, ptr %55, align 8
  %57 = or i32 %56, 8
  store i32 %57, ptr %55, align 8
  %58 = load ptr, ptr %5, align 8
  %59 = load ptr, ptr %58, align 64
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4
  %60 = getelementptr inbounds %struct.tc_mq_qopt_offload, ptr %4, i32 0, i32 1
  %61 = getelementptr inbounds %struct.Qdisc, ptr %0, i32 0, i32 7
  %62 = load i32, ptr %61, align 32
  store i32 %62, ptr %60, align 4
  %63 = getelementptr inbounds %struct.tc_mq_qopt_offload, ptr %4, i32 0, i32 2
  store i64 0, ptr %63, align 4
  %64 = getelementptr inbounds %struct.net_device, ptr %59, i32 0, i32 23
  %65 = load i64, ptr %64, align 16
  %66 = and i64 %65, 562949953421312
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %76, label %68

68:                                               ; preds = %54
  %69 = getelementptr inbounds %struct.net_device, ptr %59, i32 0, i32 16
  %70 = load ptr, ptr %69, align 8
  %71 = getelementptr inbounds %struct.net_device_ops, ptr %70, i32 0, i32 39
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %76, label %74

74:                                               ; preds = %68
  %75 = call i32 %72(ptr noundef %59, i32 noundef 9, ptr noundef nonnull %4) #9
  br label %76

76:                                               ; preds = %74, %68, %54
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  br label %77

77:                                               ; preds = %76, %31, %20, %19, %12, %3
  %78 = phi i32 [ 0, %76 ], [ -95, %3 ], [ -95, %12 ], [ -12, %20 ], [ -12, %19 ], [ -12, %31 ]
  ret i32 %78
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mq_destroy(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.tc_mq_qopt_offload, align 4
  %3 = getelementptr inbounds %struct.Qdisc, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %4, align 64
  %6 = getelementptr inbounds %struct.Qdisc, ptr %0, i32 0, i32 29
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #9
  store i32 1, ptr %2, align 4
  %7 = getelementptr inbounds %struct.tc_mq_qopt_offload, ptr %2, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Qdisc, ptr %0, i32 0, i32 7
  %9 = load i32, ptr %8, align 32
  store i32 %9, ptr %7, align 4
  %10 = getelementptr inbounds %struct.tc_mq_qopt_offload, ptr %2, i32 0, i32 2
  store i64 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 23
  %12 = load i64, ptr %11, align 16
  %13 = and i64 %12, 562949953421312
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 16
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.net_device_ops, ptr %17, i32 0, i32 39
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %15
  %22 = call i32 %19(ptr noundef %5, i32 noundef 9, ptr noundef nonnull %2) #9
  br label %23

23:                                               ; preds = %21, %15, %1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #9
  %24 = load ptr, ptr %6, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %43, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 88
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %41, label %30

30:                                               ; preds = %36, %26
  %31 = phi ptr [ %40, %36 ], [ %24, %26 ]
  %32 = phi i32 [ %37, %36 ], [ 0, %26 ]
  %33 = getelementptr ptr, ptr %31, i32 %32
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %30
  call void @qdisc_put(ptr noundef nonnull %34) #9
  %37 = add nuw i32 %32, 1
  %38 = load i32, ptr %27, align 4
  %39 = icmp ult i32 %37, %38
  %40 = load ptr, ptr %6, align 4
  br i1 %39, label %30, label %41

41:                                               ; preds = %36, %30, %26
  %42 = phi ptr [ %24, %26 ], [ %40, %36 ], [ %31, %30 ]
  call void @kfree(ptr noundef %42) #9
  br label %43

43:                                               ; preds = %41, %23
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mq_attach(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.Qdisc, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 64
  %5 = getelementptr inbounds %struct.Qdisc, ptr %0, i32 0, i32 29
  %6 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 88
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %23, label %9

9:                                                ; preds = %19, %1
  %10 = phi i32 [ %20, %19 ], [ 0, %1 ]
  %11 = load ptr, ptr %5, align 4
  %12 = getelementptr ptr, ptr %11, i32 %10
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.Qdisc, ptr %13, i32 0, i32 9
  %15 = load ptr, ptr %14, align 8
  %16 = tail call ptr @dev_graft_qdisc(ptr noundef %15, ptr noundef %13) #9
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %9
  tail call void @qdisc_put(ptr noundef nonnull %16) #9
  br label %19

19:                                               ; preds = %18, %9
  %20 = add nuw i32 %10, 1
  %21 = load i32, ptr %6, align 4
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %9, label %23

23:                                               ; preds = %19, %1
  %24 = load ptr, ptr %5, align 4
  tail call void @kfree(ptr noundef %24) #9
  store ptr null, ptr %5, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mq_change_real_num_tx(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mq_dump(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.Qdisc, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %4, align 64
  %6 = getelementptr inbounds %struct.Qdisc, ptr %0, i32 0, i32 16, i32 2
  store i32 0, ptr %6, align 8
  %7 = getelementptr inbounds %struct.Qdisc, ptr %0, i32 0, i32 17
  tail call void @gnet_stats_basic_sync_init(ptr noundef %7) #9
  %8 = getelementptr inbounds %struct.Qdisc, ptr %0, i32 0, i32 18
  tail call void @llvm.memset.p0.i32(ptr noundef align 64 dereferenceable(20) %8, i8 0, i32 20, i1 false)
  %9 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 88
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %33, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 87
  br label %14

14:                                               ; preds = %14, %12
  %15 = phi i32 [ 0, %12 ], [ %30, %14 ]
  %16 = load ptr, ptr %13, align 64
  %17 = getelementptr %struct.netdev_queue, ptr %16, i32 %15, i32 3
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.Qdisc, ptr %18, i32 0, i32 16, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %19) #9
  %20 = getelementptr inbounds %struct.Qdisc, ptr %18, i32 0, i32 11
  %21 = load ptr, ptr %20, align 16
  %22 = getelementptr inbounds %struct.Qdisc, ptr %18, i32 0, i32 17
  tail call void @gnet_stats_add_basic(ptr noundef %7, ptr noundef %21, ptr noundef %22, i1 noundef zeroext false) #9
  %23 = getelementptr inbounds %struct.Qdisc, ptr %18, i32 0, i32 12
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.Qdisc, ptr %18, i32 0, i32 18
  tail call void @gnet_stats_add_queue(ptr noundef %8, ptr noundef %24, ptr noundef %25) #9
  %26 = getelementptr inbounds %struct.Qdisc, ptr %18, i32 0, i32 16, i32 2
  %27 = load i32, ptr %26, align 8
  %28 = load i32, ptr %6, align 8
  %29 = add i32 %28, %27
  store i32 %29, ptr %6, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %19) #9
  %30 = add nuw i32 %15, 1
  %31 = load i32, ptr %9, align 4
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %14, label %33

33:                                               ; preds = %14, %2
  %34 = getelementptr inbounds %struct.Qdisc, ptr %0, i32 0, i32 2
  %35 = load i32, ptr %34, align 8
  %36 = and i32 %35, -513
  store i32 %36, ptr %34, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal ptr @mq_select_queue(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.tcmsg, ptr %1, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 65535
  %6 = getelementptr inbounds %struct.Qdisc, ptr %0, i32 0, i32 9
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %7, align 64
  %9 = add nsw i32 %5, -1
  %10 = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 88
  %11 = load i32, ptr %10, align 4
  %12 = icmp ult i32 %9, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 87
  %15 = load ptr, ptr %14, align 64
  %16 = getelementptr %struct.netdev_queue, ptr %15, i32 %9
  br label %17

17:                                               ; preds = %13, %2
  %18 = phi ptr [ %16, %13 ], [ null, %2 ]
  ret ptr %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mq_graft(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef readnone %4) #0 {
  %6 = getelementptr inbounds %struct.Qdisc, ptr %0, i32 0, i32 9
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %7, align 64
  %9 = add i32 %1, -1
  %10 = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 88
  %11 = load i32, ptr %10, align 4
  %12 = icmp ult i32 %9, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 87
  %15 = load ptr, ptr %14, align 64
  %16 = getelementptr %struct.netdev_queue, ptr %15, i32 %9
  br label %17

17:                                               ; preds = %13, %5
  %18 = phi ptr [ %16, %13 ], [ null, %5 ]
  %19 = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 14
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  tail call void @dev_deactivate(ptr noundef %8) #9
  br label %24

24:                                               ; preds = %23, %17
  %25 = tail call ptr @dev_graft_qdisc(ptr noundef %18, ptr noundef %2) #9
  store ptr %25, ptr %3, align 4
  %26 = icmp eq ptr %2, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.Qdisc, ptr %2, i32 0, i32 2
  %29 = load i32, ptr %28, align 8
  %30 = or i32 %29, 80
  store i32 %30, ptr %28, align 8
  br label %31

31:                                               ; preds = %27, %24
  %32 = load i32, ptr %19, align 8
  %33 = and i32 %32, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  tail call void @dev_activate(ptr noundef %8) #9
  br label %36

36:                                               ; preds = %35, %31
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal ptr @mq_leaf(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.Qdisc, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %4, align 64
  %6 = add i32 %1, -1
  %7 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 88
  %8 = load i32, ptr %7, align 4
  %9 = icmp ult i32 %6, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 87
  %12 = load ptr, ptr %11, align 64
  %13 = getelementptr %struct.netdev_queue, ptr %12, i32 %6
  br label %14

14:                                               ; preds = %10, %2
  %15 = phi ptr [ %13, %10 ], [ null, %2 ]
  %16 = getelementptr inbounds %struct.netdev_queue, ptr %15, i32 0, i32 3
  %17 = load ptr, ptr %16, align 8
  ret ptr %17
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @mq_find(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = and i32 %1, 65535
  %4 = getelementptr inbounds %struct.Qdisc, ptr %0, i32 0, i32 9
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 64
  %7 = add nsw i32 %3, -1
  %8 = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 88
  %9 = load i32, ptr %8, align 4
  %10 = icmp ult i32 %7, %9
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 87
  %13 = load ptr, ptr %12, align 64
  %14 = getelementptr %struct.netdev_queue, ptr %13, i32 %7
  %15 = icmp eq ptr %14, null
  %16 = select i1 %15, i32 0, i32 %3
  br label %17

17:                                               ; preds = %11, %2
  %18 = phi i32 [ %16, %11 ], [ 0, %2 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mq_walk(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load i32, ptr %1, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %29

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.Qdisc, ptr %0, i32 0, i32 9
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %7, align 64
  %9 = getelementptr inbounds %struct.qdisc_walker, ptr %1, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.qdisc_walker, ptr %1, i32 0, i32 2
  %12 = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 88
  store i32 %10, ptr %11, align 4
  %13 = load i32, ptr %12, align 4
  %14 = icmp ult i32 %10, %13
  br i1 %14, label %15, label %29

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.qdisc_walker, ptr %1, i32 0, i32 3
  br label %17

17:                                               ; preds = %24, %15
  %18 = phi i32 [ %10, %15 ], [ %20, %24 ]
  %19 = load ptr, ptr %16, align 4
  %20 = add nuw i32 %18, 1
  %21 = tail call i32 %19(ptr noundef %0, i32 noundef %20, ptr noundef %1) #9
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i32 1, ptr %1, align 4
  br label %29

24:                                               ; preds = %17
  %25 = load i32, ptr %11, align 4
  %26 = add i32 %25, 1
  store i32 %26, ptr %11, align 4
  %27 = load i32, ptr %12, align 4
  %28 = icmp ult i32 %20, %27
  br i1 %28, label %17, label %29

29:                                               ; preds = %24, %23, %5, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @mq_dump_class(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readnone %2, ptr nocapture noundef %3) #3 {
  %5 = getelementptr inbounds %struct.Qdisc, ptr %0, i32 0, i32 9
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %6, align 64
  %8 = add i32 %1, -1
  %9 = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 88
  %10 = load i32, ptr %9, align 4
  %11 = icmp ult i32 %8, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 87
  %14 = load ptr, ptr %13, align 64
  %15 = getelementptr %struct.netdev_queue, ptr %14, i32 %8
  br label %16

16:                                               ; preds = %12, %4
  %17 = phi ptr [ %15, %12 ], [ null, %4 ]
  %18 = getelementptr inbounds %struct.tcmsg, ptr %3, i32 0, i32 5
  store i32 -1, ptr %18, align 4
  %19 = and i32 %1, 65535
  %20 = getelementptr inbounds %struct.tcmsg, ptr %3, i32 0, i32 4
  %21 = load i32, ptr %20, align 4
  %22 = or i32 %21, %19
  store i32 %22, ptr %20, align 4
  %23 = getelementptr inbounds %struct.netdev_queue, ptr %17, i32 0, i32 3
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.Qdisc, ptr %24, i32 0, i32 7
  %26 = load i32, ptr %25, align 32
  %27 = getelementptr inbounds %struct.tcmsg, ptr %3, i32 0, i32 6
  store i32 %26, ptr %27, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mq_dump_class_stats(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.Qdisc, ptr %0, i32 0, i32 9
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 64
  %7 = add i32 %1, -1
  %8 = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 88
  %9 = load i32, ptr %8, align 4
  %10 = icmp ult i32 %7, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 87
  %13 = load ptr, ptr %12, align 64
  %14 = getelementptr %struct.netdev_queue, ptr %13, i32 %7
  br label %15

15:                                               ; preds = %11, %3
  %16 = phi ptr [ %14, %11 ], [ null, %3 ]
  %17 = getelementptr inbounds %struct.netdev_queue, ptr %16, i32 0, i32 3
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.Qdisc, ptr %18, i32 0, i32 11
  %20 = load ptr, ptr %19, align 16
  %21 = getelementptr inbounds %struct.Qdisc, ptr %18, i32 0, i32 17
  %22 = tail call i32 @gnet_stats_copy_basic(ptr noundef %2, ptr noundef %20, ptr noundef %21, i1 noundef zeroext true) #9
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %60, label %24

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.Qdisc, ptr %18, i32 0, i32 18
  %26 = load i32, ptr %25, align 64
  %27 = getelementptr inbounds %struct.Qdisc, ptr %18, i32 0, i32 2
  %28 = load i32, ptr %27, align 8
  %29 = and i32 %28, 32
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %50, label %31

31:                                               ; preds = %24
  %32 = load i32, ptr @nr_cpu_ids, align 4
  %33 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #11
  %34 = icmp ult i32 %33, %32
  br i1 %34, label %35, label %54

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.Qdisc, ptr %18, i32 0, i32 12
  %37 = load ptr, ptr %36, align 4
  %38 = ptrtoint ptr %37 to i32
  br label %39

39:                                               ; preds = %39, %35
  %40 = phi i32 [ %33, %35 ], [ %48, %39 ]
  %41 = phi i32 [ %26, %35 ], [ %47, %39 ]
  %42 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %40
  %43 = load i32, ptr %42, align 4
  %44 = add i32 %43, %38
  %45 = inttoptr i32 %44 to ptr
  %46 = load i32, ptr %45, align 4
  %47 = add i32 %46, %41
  %48 = tail call i32 @cpumask_next(i32 noundef %40, ptr noundef nonnull @__cpu_possible_mask) #11
  %49 = icmp ult i32 %48, %32
  br i1 %49, label %39, label %54

50:                                               ; preds = %24
  %51 = getelementptr inbounds %struct.Qdisc, ptr %18, i32 0, i32 16, i32 2
  %52 = load i32, ptr %51, align 8
  %53 = add i32 %52, %26
  br label %54

54:                                               ; preds = %50, %39, %31
  %55 = phi i32 [ %53, %50 ], [ %26, %31 ], [ %47, %39 ]
  %56 = getelementptr inbounds %struct.Qdisc, ptr %18, i32 0, i32 12
  %57 = load ptr, ptr %56, align 4
  %58 = tail call i32 @gnet_stats_copy_queue(ptr noundef %2, ptr noundef %57, ptr noundef %25, i32 noundef %55) #9
  %59 = ashr i32 %58, 31
  br label %60

60:                                               ; preds = %54, %15
  %61 = phi i32 [ -1, %15 ], [ %59, %54 ]
  ret i32 %61
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_deactivate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_graft_qdisc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_activate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gnet_stats_copy_basic(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gnet_stats_copy_queue(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qdisc_create_dflt(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gnet_stats_basic_sync_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gnet_stats_add_basic(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gnet_stats_add_queue(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { nounwind readonly willreturn }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
