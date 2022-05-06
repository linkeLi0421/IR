; ModuleID = '/llk/IR/net/dsa/tag_brcm.c_pt.bc'
source_filename = "../net/dsa/tag_brcm.c"
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
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
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
%struct.dsa_tag_driver = type { ptr, %struct.list_head, ptr }
%struct.dsa_device_ops = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8 }
%struct.sk_buff = type { %union.anon, %union.anon.134, %union.anon.135, [48 x i8], %union.anon.136, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.138, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.134 = type { ptr }
%union.anon.135 = type { i64 }
%union.anon.136 = type { %struct.anon.137 }
%struct.anon.137 = type { i32, ptr }
%union.anon.138 = type { %struct.anon.139 }
%struct.anon.139 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.140, i32, i32, i32, i16, i16, %union.anon.142, %union.anon.143, %union.anon.144, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.140 = type { i32 }
%union.anon.142 = type { i32 }
%union.anon.143 = type { i32 }
%union.anon.144 = type { i16 }
%struct.dsa_port = type { %union.anon.119, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, [6 x i8], i8, i8, ptr, i32, ptr, %struct.devlink_port, ptr, %struct.phylink_config, ptr, ptr, %struct.list_head, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.119 = type { ptr }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.108 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.108 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.phylink_config = type { ptr, i32, i8, i8, i8, i8, ptr, [1 x i32], i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.133, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type {}
%struct.possible_net_t = type {}
%union.anon.133 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdevice_tracker = type {}
%struct.dsa_switch_tree = type { %struct.list_head, %struct.list_head, %struct.raw_notifier_head, i32, %struct.kref, ptr, ptr, i32, i8, ptr, %struct.list_head, i32, i32 }
%struct.raw_notifier_head = type { ptr }
%struct.dsa_switch = type { ptr, ptr, i32, i16, %struct.notifier_block, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, ptr, i32, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }

@__UNIQUE_ID_alias453 = internal constant [16 x i8] c"alias=dsa_tag-1\00", section ".modinfo", align 1
@__UNIQUE_ID_alias454 = internal constant [17 x i8] c"alias=dsa_tag-22\00", section ".modinfo", align 1
@__UNIQUE_ID_alias455 = internal constant [16 x i8] c"alias=dsa_tag-2\00", section ".modinfo", align 1
@__UNIQUE_ID_license456 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@dsa_tag_driver_array = internal global [3 x ptr] [ptr @dsa_tag_driver_brcm_netdev_ops, ptr @dsa_tag_driver_brcm_legacy_netdev_ops, ptr @dsa_tag_driver_brcm_prepend_netdev_ops], align 4
@__this_module = external dso_local global %struct.module, align 64
@dsa_tag_driver_brcm_netdev_ops = internal global %struct.dsa_tag_driver { ptr @brcm_netdev_ops, %struct.list_head zeroinitializer, ptr null }, align 4
@dsa_tag_driver_brcm_legacy_netdev_ops = internal global %struct.dsa_tag_driver { ptr @brcm_legacy_netdev_ops, %struct.list_head zeroinitializer, ptr null }, align 4
@dsa_tag_driver_brcm_prepend_netdev_ops = internal global %struct.dsa_tag_driver { ptr @brcm_prepend_netdev_ops, %struct.list_head zeroinitializer, ptr null }, align 4
@brcm_netdev_ops = internal constant %struct.dsa_device_ops { ptr @brcm_tag_xmit, ptr @brcm_tag_rcv, ptr null, ptr null, ptr null, i32 4, i32 0, ptr @.str, i32 1, i8 0 }, align 4
@.str = private unnamed_addr constant [5 x i8] c"brcm\00", align 1
@brcm_legacy_netdev_ops = internal constant %struct.dsa_device_ops { ptr @brcm_leg_tag_xmit, ptr @brcm_leg_tag_rcv, ptr null, ptr null, ptr null, i32 6, i32 0, ptr @.str.1, i32 22, i8 0 }, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"brcm-legacy\00", align 1
@brcm_prepend_netdev_ops = internal constant %struct.dsa_device_ops { ptr @brcm_tag_xmit_prepend, ptr @brcm_tag_rcv_prepend, ptr null, ptr null, ptr null, i32 4, i32 0, ptr @.str.2, i32 2, i8 0 }, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"brcm-prepend\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_alias453, ptr @__UNIQUE_ID_alias454, ptr @__UNIQUE_ID_alias455, ptr @__UNIQUE_ID_license456], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  tail call void @dsa_tag_drivers_register(ptr noundef nonnull @dsa_tag_driver_array, i32 noundef 3, ptr noundef nonnull @__this_module) #4
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @dsa_tag_drivers_unregister(ptr noundef nonnull @dsa_tag_driver_array, i32 noundef 3) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_tag_drivers_register(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @brcm_tag_xmit(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr i8, ptr %1, i32 1416
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 9
  %6 = load i16, ptr %5, align 4
  %7 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %8 = load i32, ptr %7, align 8
  %9 = icmp ult i32 %8, 64
  br i1 %9, label %10, label %25, !prof !8

10:                                               ; preds = %2
  %11 = sub nuw nsw i32 64, %8
  %12 = tail call i32 @__skb_pad(ptr noundef %0, i32 noundef %11, i1 noundef zeroext false) #4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %50

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18, !prof !9

18:                                               ; preds = %14
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #4, !srcloc !10
  unreachable

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr i8, ptr %21, i32 %11
  store ptr %22, ptr %20, align 8
  %23 = load i32, ptr %7, align 8
  %24 = add i32 %23, %11
  store i32 %24, ptr %7, align 8
  br label %25

25:                                               ; preds = %19, %2
  %26 = tail call ptr @skb_push(ptr noundef %0, i32 noundef 4) #4
  %27 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr i8, ptr %28, i32 4
  tail call void @llvm.memmove.p0.p0.i32(ptr noundef align 1 dereferenceable(12) %28, ptr noundef align 1 dereferenceable(12) %29, i32 12, i1 false) #4
  %30 = load ptr, ptr %27, align 4
  %31 = getelementptr i8, ptr %30, i32 12
  %32 = trunc i16 %6 to i8
  %33 = shl i8 %32, 2
  %34 = and i8 %33, 28
  %35 = or i8 %34, 32
  store i8 %35, ptr %31, align 1
  %36 = getelementptr i8, ptr %30, i32 13
  store i8 0, ptr %36, align 1
  %37 = getelementptr i8, ptr %30, i32 14
  store i8 0, ptr %37, align 1
  %38 = getelementptr inbounds %struct.dsa_port, ptr %4, i32 0, i32 5
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 8
  %41 = zext i1 %40 to i8
  store i8 %41, ptr %37, align 1
  %42 = load i32, ptr %38, align 4
  %43 = shl nuw i32 1, %42
  %44 = trunc i32 %43 to i8
  %45 = getelementptr i8, ptr %30, i32 15
  store i8 %44, ptr %45, align 1
  %46 = load i32, ptr %38, align 4
  %47 = trunc i32 %46 to i16
  %48 = shl i16 %47, 8
  %49 = or i16 %48, %6
  store i16 %49, ptr %5, align 4
  br label %50

50:                                               ; preds = %25, %10
  %51 = phi ptr [ %0, %25 ], [ null, %10 ]
  ret ptr %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @brcm_tag_rcv(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = tail call fastcc ptr @brcm_tag_rcv_ll(ptr noundef %0, ptr noundef %1, i32 noundef 2)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 -14
  %9 = getelementptr i8, ptr %7, i32 -18
  tail call void @llvm.memmove.p0.p0.i32(ptr noundef align 1 dereferenceable(12) %8, ptr noundef align 1 dereferenceable(12) %9, i32 12, i1 false) #4
  br label %10

10:                                               ; preds = %5, %2
  ret ptr %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__skb_pad(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i32(ptr nocapture writeonly, ptr nocapture readonly, i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @brcm_tag_rcv_ll(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %5 = load i32, ptr %4, align 8
  %6 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = sub i32 %5, %7
  %9 = icmp ult i32 %8, 4
  br i1 %9, label %10, label %16, !prof !8

10:                                               ; preds = %3
  %11 = icmp ult i32 %5, 4
  br i1 %11, label %77, label %12, !prof !8

12:                                               ; preds = %10
  %13 = sub nuw nsw i32 4, %8
  %14 = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %13) #4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %77, label %16, !prof !8

16:                                               ; preds = %12, %3
  %17 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %18 = load ptr, ptr %17, align 4
  %19 = sub i32 0, %2
  %20 = getelementptr i8, ptr %18, i32 %19
  %21 = load i8, ptr %20, align 1
  %22 = icmp ult i8 %21, 32
  br i1 %22, label %23, label %77, !prof !9

23:                                               ; preds = %16
  %24 = getelementptr i8, ptr %20, i32 2
  %25 = load i8, ptr %24, align 1
  %26 = icmp ult i8 %25, 64
  br i1 %26, label %27, label %77, !prof !9

27:                                               ; preds = %23
  %28 = getelementptr i8, ptr %20, i32 3
  %29 = load i8, ptr %28, align 1
  %30 = and i8 %29, 31
  %31 = zext i8 %30 to i32
  %32 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 67
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.dsa_port, ptr %33, i32 0, i32 2
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.dsa_switch_tree, ptr %35, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, %36
  br i1 %38, label %57, label %39

39:                                               ; preds = %54, %27
  %40 = phi ptr [ %55, %54 ], [ %37, %27 ]
  %41 = getelementptr i8, ptr %40, i32 -264
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.dsa_switch, ptr %42, i32 0, i32 2
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %39
  %47 = getelementptr i8, ptr %40, i32 -260
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %48, %31
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = getelementptr i8, ptr %40, i32 -256
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %52, 3
  br i1 %53, label %59, label %54

54:                                               ; preds = %50, %46, %39
  %55 = load ptr, ptr %40, align 4
  %56 = icmp eq ptr %55, %36
  br i1 %56, label %57, label %39

57:                                               ; preds = %54, %27
  %58 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 2
  store ptr null, ptr %58, align 8
  br label %77

59:                                               ; preds = %50
  %60 = getelementptr i8, ptr %40, i32 -280
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 2
  store ptr %61, ptr %62, align 8
  %63 = icmp eq ptr %61, null
  br i1 %63, label %77, label %64

64:                                               ; preds = %59
  %65 = tail call ptr @skb_pull_rcsum(ptr noundef %0, i32 noundef 4) #4
  %66 = load ptr, ptr %62, align 8
  %67 = getelementptr i8, ptr %66, i32 1416
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.dsa_port, ptr %68, i32 0, i32 14
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  %72 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 3
  %73 = load i16, ptr %72, align 2
  %74 = select i1 %71, i16 0, i16 2048
  %75 = and i16 %73, -2049
  %76 = or i16 %75, %74
  store i16 %76, ptr %72, align 2
  br label %77

77:                                               ; preds = %64, %59, %57, %23, %16, %12, %10
  %78 = phi ptr [ %0, %64 ], [ null, %12 ], [ null, %16 ], [ null, %23 ], [ null, %59 ], [ null, %57 ], [ null, %10 ]
  ret ptr %78
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull_rcsum(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @brcm_leg_tag_xmit(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr i8, ptr %1, i32 1416
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %6 = load i32, ptr %5, align 8
  %7 = icmp ult i32 %6, 66
  br i1 %7, label %8, label %23, !prof !8

8:                                                ; preds = %2
  %9 = sub nuw nsw i32 66, %6
  %10 = tail call i32 @__skb_pad(ptr noundef %0, i32 noundef %9, i1 noundef zeroext false) #4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %39

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16, !prof !9

16:                                               ; preds = %12
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #4, !srcloc !10
  unreachable

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr i8, ptr %19, i32 %9
  store ptr %20, ptr %18, align 8
  %21 = load i32, ptr %5, align 8
  %22 = add i32 %21, %9
  store i32 %22, ptr %5, align 8
  br label %23

23:                                               ; preds = %17, %2
  %24 = tail call ptr @skb_push(ptr noundef %0, i32 noundef 6) #4
  %25 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr i8, ptr %26, i32 6
  tail call void @llvm.memmove.p0.p0.i32(ptr noundef align 1 dereferenceable(12) %26, ptr noundef align 1 dereferenceable(12) %27, i32 12, i1 false) #4
  %28 = load ptr, ptr %25, align 4
  %29 = getelementptr i8, ptr %28, i32 12
  store i8 -120, ptr %29, align 1
  %30 = getelementptr i8, ptr %28, i32 13
  store i8 116, ptr %30, align 1
  %31 = getelementptr i8, ptr %28, i32 14
  store i8 64, ptr %31, align 1
  %32 = getelementptr i8, ptr %28, i32 15
  store i8 0, ptr %32, align 1
  %33 = getelementptr i8, ptr %28, i32 16
  store i8 0, ptr %33, align 1
  %34 = getelementptr inbounds %struct.dsa_port, ptr %4, i32 0, i32 5
  %35 = load i32, ptr %34, align 4
  %36 = trunc i32 %35 to i8
  %37 = and i8 %36, 15
  %38 = getelementptr i8, ptr %28, i32 17
  store i8 %37, ptr %38, align 1
  br label %39

39:                                               ; preds = %23, %8
  %40 = phi ptr [ %0, %23 ], [ null, %8 ]
  ret ptr %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @brcm_leg_tag_rcv(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %6 = load i32, ptr %5, align 4
  %7 = sub i32 %4, %6
  %8 = icmp ult i32 %7, 15
  br i1 %8, label %9, label %15, !prof !8

9:                                                ; preds = %2
  %10 = icmp ult i32 %4, 15
  br i1 %10, label %70, label %11, !prof !8

11:                                               ; preds = %9
  %12 = sub nuw nsw i32 15, %7
  %13 = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %12) #4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %70, label %15, !prof !8

15:                                               ; preds = %11, %2
  %16 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i8, ptr %17, i32 3
  %19 = load i8, ptr %18, align 1
  %20 = and i8 %19, 15
  %21 = zext i8 %20 to i32
  %22 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 67
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.dsa_port, ptr %23, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.dsa_switch_tree, ptr %25, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, %26
  br i1 %28, label %47, label %29

29:                                               ; preds = %44, %15
  %30 = phi ptr [ %45, %44 ], [ %27, %15 ]
  %31 = getelementptr i8, ptr %30, i32 -264
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.dsa_switch, ptr %32, i32 0, i32 2
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %29
  %37 = getelementptr i8, ptr %30, i32 -260
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, %21
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = getelementptr i8, ptr %30, i32 -256
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, 3
  br i1 %43, label %49, label %44

44:                                               ; preds = %40, %36, %29
  %45 = load ptr, ptr %30, align 4
  %46 = icmp eq ptr %45, %26
  br i1 %46, label %47, label %29

47:                                               ; preds = %44, %15
  %48 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 2
  store ptr null, ptr %48, align 8
  br label %70

49:                                               ; preds = %40
  %50 = getelementptr i8, ptr %30, i32 -280
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 2
  store ptr %51, ptr %52, align 8
  %53 = icmp eq ptr %51, null
  br i1 %53, label %70, label %54

54:                                               ; preds = %49
  %55 = tail call ptr @skb_pull_rcsum(ptr noundef %0, i32 noundef 6) #4
  %56 = load ptr, ptr %52, align 8
  %57 = getelementptr i8, ptr %56, i32 1416
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.dsa_port, ptr %58, i32 0, i32 14
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  %62 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 3
  %63 = load i16, ptr %62, align 2
  %64 = select i1 %61, i16 0, i16 2048
  %65 = and i16 %63, -2049
  %66 = or i16 %65, %64
  store i16 %66, ptr %62, align 2
  %67 = load ptr, ptr %16, align 4
  %68 = getelementptr i8, ptr %67, i32 -14
  %69 = getelementptr i8, ptr %67, i32 -20
  tail call void @llvm.memmove.p0.p0.i32(ptr noundef align 1 dereferenceable(12) %68, ptr noundef align 1 dereferenceable(12) %69, i32 12, i1 false) #4
  br label %70

70:                                               ; preds = %54, %49, %47, %11, %9
  %71 = phi ptr [ %0, %54 ], [ null, %11 ], [ null, %49 ], [ null, %47 ], [ null, %9 ]
  ret ptr %71
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @brcm_tag_xmit_prepend(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr i8, ptr %1, i32 1416
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 9
  %6 = load i16, ptr %5, align 4
  %7 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %8 = load i32, ptr %7, align 8
  %9 = icmp ult i32 %8, 64
  br i1 %9, label %10, label %25, !prof !8

10:                                               ; preds = %2
  %11 = sub nuw nsw i32 64, %8
  %12 = tail call i32 @__skb_pad(ptr noundef %0, i32 noundef %11, i1 noundef zeroext false) #4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %47

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18, !prof !9

18:                                               ; preds = %14
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #4, !srcloc !10
  unreachable

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr i8, ptr %21, i32 %11
  store ptr %22, ptr %20, align 8
  %23 = load i32, ptr %7, align 8
  %24 = add i32 %23, %11
  store i32 %24, ptr %7, align 8
  br label %25

25:                                               ; preds = %19, %2
  %26 = tail call ptr @skb_push(ptr noundef %0, i32 noundef 4) #4
  %27 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %28 = load ptr, ptr %27, align 4
  %29 = trunc i16 %6 to i8
  %30 = shl i8 %29, 2
  %31 = and i8 %30, 28
  %32 = or i8 %31, 32
  store i8 %32, ptr %28, align 1
  %33 = getelementptr i8, ptr %28, i32 1
  store i8 0, ptr %33, align 1
  %34 = getelementptr i8, ptr %28, i32 2
  store i8 0, ptr %34, align 1
  %35 = getelementptr inbounds %struct.dsa_port, ptr %4, i32 0, i32 5
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 8
  %38 = zext i1 %37 to i8
  store i8 %38, ptr %34, align 1
  %39 = load i32, ptr %35, align 4
  %40 = shl nuw i32 1, %39
  %41 = trunc i32 %40 to i8
  %42 = getelementptr i8, ptr %28, i32 3
  store i8 %41, ptr %42, align 1
  %43 = load i32, ptr %35, align 4
  %44 = trunc i32 %43 to i16
  %45 = shl i16 %44, 8
  %46 = or i16 %45, %6
  store i16 %46, ptr %5, align 4
  br label %47

47:                                               ; preds = %25, %10
  %48 = phi ptr [ %0, %25 ], [ null, %10 ]
  ret ptr %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @brcm_tag_rcv_prepend(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = tail call fastcc ptr @brcm_tag_rcv_ll(ptr noundef %0, ptr noundef %1, i32 noundef 14)
  ret ptr %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_tag_drivers_unregister(ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { nounwind }

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
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 2153293884, i64 2153294372, i64 2153293921, i64 2153293977, i64 2153294011, i64 2153294035, i64 2153294076, i64 2153294097, i64 2153294125, i64 2153294159}
